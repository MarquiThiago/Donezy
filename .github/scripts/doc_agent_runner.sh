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
    git commit -m "$COMMIT_MSG" || true
    git push origin HEAD || true
    echo "Committed and pushed updates for module $module"
  else
    echo "No README changes for $module after generator run"
  fi

done

echo "Runner finished"
