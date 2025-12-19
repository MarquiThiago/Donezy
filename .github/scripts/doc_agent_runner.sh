#!/usr/bin/env bash
set -euo pipefail

echo "[mcp-doc-agent] Starting runner"

# Fetch master reference (if exists)
git fetch origin master:origin/master || true

# Compute changed files against master
CHANGED_FILES=$(git diff --name-only origin/master...HEAD || true)

if [ -z "$CHANGED_FILES" ]; then
  echo "No changed files detected vs origin/master. Exiting.";
  exit 0
fi

echo "Changed files:\n$CHANGED_FILES"

# Map changed files to modules under lib/src/modules/
MODULES=()
while read -r f; do
  if [[ $f =~ ^lib/src/modules/([^/]+)/ ]]; then
    m=${BASH_REMATCH[1]}
    MODULES+=("$m")
  fi
done <<< "$CHANGED_FILES"

if [ ${#MODULES[@]} -eq 0 ]; then
  echo "No modules changed (no files under lib/src/modules/). Nothing to document.";
  exit 0
fi

# Unique modules
TMP_FILE=$(mktemp)
for m in "${MODULES[@]}"; do
  echo "$m" >> "$TMP_FILE"
done
sort -u "$TMP_FILE" -o /tmp/mcp_modules.txt
mapfile -t UNIQUE_MODULES < /tmp/mcp_modules.txt
echo "Modules affected: ${UNIQUE_MODULES[*]}"

CHANGED_ANY=0

# guard to avoid reacting to our own automated commits
LAST_AUTHOR=$(git log -1 --pretty=format:'%an' || true)
LAST_MSG=$(git log -1 --pretty=format:'%s' || true)
if [ "$LAST_AUTHOR" = "MCP Documentation Agent" ] && [[ "$LAST_MSG" == docs\(agent\):* ]]; then
  echo "Last commit was an automated docs update; exiting to avoid loops."
  exit 0
fi

REPO_ROOT=$(pwd)

# Ensure commits have a consistent identity
git config user.name "MCP Documentation Agent"
git config user.email "mcp-docs-bot@users.noreply.github.com"

# Resolve current branch name robustly (supports workflow_dispatch, push, PR)
BRANCH_NAME="$(git rev-parse --abbrev-ref HEAD || true)"
if [ -z "$BRANCH_NAME" ] || [ "$BRANCH_NAME" = "HEAD" ]; then
  if [ -n "${GITHUB_HEAD_REF:-}" ]; then
    BRANCH_NAME="${GITHUB_HEAD_REF}"
  elif [ -n "${GITHUB_REF:-}" ]; then
    # Use the last path segment for refs/heads/<branch> or handle refs/pull/<id>/merge
    case "${GITHUB_REF}" in
      refs/heads/*)
        BRANCH_NAME="${GITHUB_REF##*/}"
        ;;
      refs/pull/*)
        # For pull_request events GITHUB_HEAD_REF is normally available; fallback to 'merge' handling later
        BRANCH_NAME="${GITHUB_REF##*/}"
        ;;
      *)
        BRANCH_NAME="${GITHUB_REF##*/}"
        ;;
    esac
  else
    BRANCH_NAME="unknown-branch"
  fi
fi

# If we ended up with 'merge' or 'unknown-branch' (detached HEAD), try to infer the branch from remote refs
if [ "$BRANCH_NAME" = "merge" ] || [ "$BRANCH_NAME" = "unknown-branch" ]; then
  REMOTE_BRANCH=$(git branch -r --contains HEAD | grep -v "origin/HEAD" | head -n1 | sed 's#origin/##' | sed 's#\s##g' || true)
  if [ -n "$REMOTE_BRANCH" ]; then
    BRANCH_NAME="$REMOTE_BRANCH"
  else
    # try name-rev as a last resort
    NR=$(git name-rev --name-only HEAD 2>/dev/null || true)
    if [ -n "$NR" ]; then
      # strip possible 'origin/' prefix
      NR=${NR#origin/}
      BRANCH_NAME="$NR"
    fi
  fi
fi

echo "Operating on branch: $BRANCH_NAME"

for module in "${UNIQUE_MODULES[@]}"; do
  echo "Processing module: $module"

  echo "Calling LLM to generate content for module $module"
  LLM_OUT=$(python3 .github/scripts/llm_generate.py --module "$module" --repo_root "$REPO_ROOT" --prompt_file ".github/prompts/documentation_agent.prompt.md") || true
  if [ -z "$LLM_OUT" ]; then
    echo "LLM generation returned empty for module $module; skipping"
    continue
  fi

  # parse JSON output
  MODULE_MD=$(echo "$LLM_OUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('markdown',''))")
  CONFIDENCE=$(echo "$LLM_OUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('confidence',0))")

  # write temp file and validate
  TMPFILE=$(mktemp)
  echo "$MODULE_MD" > "$TMPFILE"
  python3 .github/scripts/validate_generated_docs.py --input "$TMPFILE"
  if [ $? -ne 0 ]; then
    echo "Validation failed for module $module; skipping commit"
    rm "$TMPFILE"
    continue
  fi

  # pass to generator which will insert auto_content into README
  python3 .github/scripts/generate_module_readme.py --module "$module" --repo_root "$REPO_ROOT" --auto_content_file "$TMPFILE"
  rm "$TMPFILE"

  README_PATH="lib/src/modules/$module/README.md"
  if git status --porcelain | grep -q "$README_PATH"; then
    # Check whether changes are significant (ignore only Updated timestamp or AUTO-GENERATED markers)
    DIFF_FULL=$(git diff --no-color -U0 "$README_PATH" || true)
    ADDED_LINES=$(printf "%s" "$DIFF_FULL" | grep '^+' | sed 's/^+//')
    REMOVED_LINES=$(printf "%s" "$DIFF_FULL" | grep '^-' | sed 's/^-//')

    # Filter out common non-significant lines: Updated timestamp, auto markers, blank lines
    SIG_ADDED=$(printf "%s" "$ADDED_LINES" | grep -v -E '^[[:space:]]*\*\*Updated:.*|^[[:space:]]*<!-- AUTO-GENERATED|^[[:space:]]*$' || true)
    SIG_REMOVED=$(printf "%s" "$REMOVED_LINES" | grep -v -E '^[[:space:]]*\*\*Updated:.*|^[[:space:]]*<!-- AUTO-GENERATED|^[[:space:]]*$' || true)

    if [ -z "$(echo "$SIG_ADDED" | tr -d '\n')" ] && [ -z "$(echo "$SIG_REMOVED" | tr -d '\n')" ]; then
      echo "Only insignificant changes detected for $README_PATH; reverting file"
      git checkout -- "$README_PATH"
    else
      echo "Significant changes detected for $README_PATH; staging for batch commit"
      CHANGED_READMES+=("$README_PATH")
    fi
  else
    echo "No README changes for $module after generator run"
  fi

done

# If there are any staged README changes collected, commit them in a single commit and push once
if [ ${#CHANGED_READMES[@]} -ne 0 ]; then
  echo "Preparing to commit README changes for modules: ${CHANGED_READMES[*]}"

  # If we're on a detached HEAD (common for pull_request merge refs) or GITHUB_REF points to a PR merge,
  # avoid committing on the merge commit which creates merge pollution. Instead, base the work on the
  # source branch (origin/$BRANCH_NAME), applying our generated changes onto that branch.
  CURRENT_REF="$(git rev-parse --abbrev-ref HEAD || true)"
  if [ "$CURRENT_REF" = "HEAD" ] || [[ "${GITHUB_REF:-}" == refs/pull/*/merge ]]; then
    echo "Detected detached HEAD or PR merge ref; will base changes onto origin/$BRANCH_NAME to avoid merge commits"

    # Stash any generated changes (including untracked files) so we can switch safely
    git stash push -u -m "mcp-doc-agent-stash" || true

    # Ensure we have the latest remote branch reference
    git fetch origin "$BRANCH_NAME" || git fetch origin || true

    # If origin/<branch> exists, create/reset the local branch to that tip; otherwise create new branch locally
    if git show-ref --verify --quiet "refs/remotes/origin/$BRANCH_NAME"; then
      git checkout -B "$BRANCH_NAME" "origin/$BRANCH_NAME"
    else
      echo "origin/$BRANCH_NAME not found; creating local branch '$BRANCH_NAME' from current HEAD"
      git checkout -B "$BRANCH_NAME"
    fi

    # Re-apply generated changes from stash
    if git stash list | grep -q "mcp-doc-agent-stash"; then
      # pop the most-recent matching stash entry
      STASH_REF=$(git stash list | grep "mcp-doc-agent-stash" | head -n1 | cut -d: -f1)
      git stash pop "$STASH_REF" || {
        echo "stash pop failed; attempting to apply instead"
        git stash apply "$STASH_REF" || true
      }

      # If conflicts exist after applying the stash, abort to avoid committing partial or conflicted changes
      if git ls-files -u | grep -q .; then
        echo "Conflicts detected when applying generated changes; aborting to avoid bad commit. Please resolve manually."
        # leave the stash in place for manual recovery and exit with non-zero status
        exit 1
      fi
    else
      echo "No stash entry found; proceeding with current working tree"
    fi
  fi

  # Stage the README changes and commit on the branch we've just checked out (or the branch we were already on)
  git add "${CHANGED_READMES[@]}"
  COMMIT_MSG="docs(agent): automated update for modules: $(printf "%s, " "${CHANGED_READMES[@]}" | sed 's/, $//')"

  # Inspect the staged diff for significance: ignore blank lines, AUTO-GENERATED markers and Updated timestamps
  STAGED_DIFF=$(git diff --staged -U0 -- "${CHANGED_READMES[@]}" || true)
  ADDED_LINES=$(printf "%s" "$STAGED_DIFF" | grep '^+' | sed 's/^+//')
  REMOVED_LINES=$(printf "%s" "$STAGED_DIFF" | grep '^-' | sed 's/^-//')

  # Normalize by trimming whitespace (including some Unicode spaces) and filter out insignificant patterns
  SIG_ADDED=$(printf "%s" "$ADDED_LINES" | perl -CS -ne 's/\x{00A0}//g; s/^\s+//; s/\s+$//; print "$_\n" if /\S/ && !/^\*\*Updated:/ && !/^<!-- AUTO-GENERATED/ && !/^<!--/;' || true)
  SIG_REMOVED=$(printf "%s" "$REMOVED_LINES" | perl -CS -ne 's/\x{00A0}//g; s/^\s+//; s/\s+$//; print "$_\n" if /\S/ && !/^\*\*Updated:/ && !/^<!-- AUTO-GENERATED/ && !/^<!--/;' || true)

  # If there are any significant lines left after normalization, show a compact debug view (helps catch invisible chars)
  if [ -n "$(echo "$SIG_ADDED" | tr -d '\n')" ] || [ -n "$(echo "$SIG_REMOVED" | tr -d '\n')" ]; then
    echo "Significant changes detected (debug):"
    if [ -n "$(echo "$SIG_ADDED" | tr -d '\n')" ]; then
      echo "=== SIG_ADDED (first 10 lines) ==="
      printf "%s\n" "$SIG_ADDED" | sed -n '1,10p' || true
      printf "%s\n" "$SIG_ADDED" | head -n 10 | od -An -t x1 | sed 's/^/ADDED_HEX: /' || true
    fi
    if [ -n "$(echo "$SIG_REMOVED" | tr -d '\n')" ]; then
      echo "=== SIG_REMOVED (first 10 lines) ==="
      printf "%s\n" "$SIG_REMOVED" | sed -n '1,10p' || true
      printf "%s\n" "$SIG_REMOVED" | head -n 10 | od -An -t x1 | sed 's/^/REMOVED_HEX: /' || true
    fi
  fi

  if [ -z "$(echo "$SIG_ADDED" | tr -d '\n')" ] && [ -z "$(echo "$SIG_REMOVED" | tr -d '\n')" ]; then
    echo "Only insignificant whitespace/marker changes detected in staged diffs; reverting changes and skipping commit/push"
    # Unstage and revert working-tree changes for these READMEs
    git restore --staged "${CHANGED_READMES[@]}" || git reset HEAD -- "${CHANGED_READMES[@]}" || true
    git checkout -- "${CHANGED_READMES[@]}" || true
  else
    git commit -m "$COMMIT_MSG" || true

    # Push and if push rejects due to upstream changes, try a rebase then push (no force)
    if ! git push origin HEAD:refs/heads/$BRANCH_NAME; then
      echo "Push rejected, attempting to rebase against origin/$BRANCH_NAME and push again"
      git fetch origin "$BRANCH_NAME" || true
      git pull --rebase origin "$BRANCH_NAME" || true
      git push origin HEAD:refs/heads/$BRANCH_NAME || { echo "Batch push failed after rebase"; git --no-pager log -1 --pretty=fuller || true; }
    fi

    echo "Committed and pushed batch updates for modules: ${CHANGED_READMES[*]}"
  fi
else
  echo "No README changes to batch commit"
fi

echo "Runner finished"
