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

for module in "${UNIQUE_MODULES[@]}"; do
  echo "Processing module: $module"
  python3 .github/scripts/generate_module_readme.py --module "$module"
  # Check git status for module README changes
  if git status --porcelain | grep -q "lib/src/modules/$module/README.md"; then
    CHANGED_ANY=1
  fi
done

if [ $CHANGED_ANY -eq 0 ]; then
  echo "No README changes generated.";
  exit 0
fi

# Configure git and commit changes
git config user.name "MCP Documentation Agent"
git config user.email "mcp-docs-bot@users.noreply.github.com"

BRANCH_NAME="docs/agent-update/$(date +%s)"
git checkout -b "$BRANCH_NAME"
git add lib/src/modules/*/README.md docs/features/INDEX.md || true
COMMIT_MSG="docs(agent): automated update for modules: ${UNIQUE_MODULES[*]}"
git commit -m "$COMMIT_MSG" || true

echo "Pushing branch $BRANCH_NAME"
git push origin "$BRANCH_NAME"

echo "Opening a Pull Request via gh CLI (if available)"
if command -v gh >/dev/null 2>&1; then
  gh pr create --title "$COMMIT_MSG" --body "Automated documentation updates for: ${UNIQUE_MODULES[*]}" --base "${GITHUB_REF##*/}" || true
else
  echo "gh CLI not found; skipping PR creation. Branch pushed: $BRANCH_NAME"
fi

echo "Runner finished"
