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
    COMMIT_MSG="docs(agent): automated update for module: $module"
    git add "$README_PATH"
    # commit (if there are staged changes) and push explicitly to the branch
    if git diff --staged --quiet; then
      echo "No staged changes to commit for $module"
    else
      git commit -m "$COMMIT_MSG" || true
      # Push explicitly to the current branch to avoid ambiguous ref errors
      git push origin HEAD:refs/heads/$BRANCH_NAME || {
        echo "Push failed for module $module"; git --no-pager log -1 --pretty=fuller || true
      }
      echo "Committed and pushed updates for module $module"
      CHANGED_ANY=1
    fi
  else
    echo "No README changes for $module after generator run"
  fi

done

echo "Runner finished"
