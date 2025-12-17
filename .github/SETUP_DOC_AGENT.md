# Setup Guide — MCP Documentation Agent

This document explains how to configure repository access and secrets so the automated documentation pipeline can create Draft PRs and authenticate with GitHub.

## Recommended setup options

1) Use a Personal Access Token (PAT) for a bot account (recommended for full control)

- Create a GitHub user for the doc agent (e.g., `mcp-docs-bot`) or use your automation account.
- Generate a Personal Access Token (Settings → Developer settings → Personal access tokens) with the following scopes:
  - repo (full control of private repositories) OR `repo:status`, `repo_deployment`, `public_repo`, `repo:invite` depending on needs
  - workflow (needed if you plan to trigger workflows or manage workflow runs)
  - admin:repo_hook (only if managing webhooks)
- Add the token to your repository or organization secrets as `GH_TOKEN` (or share with GitHub Apps as needed).

2) Use GitHub App (enterprise-grade, recommended for orgs)

- Create a GitHub App and install it in the target repo or org.
- Configure required permissions (pull requests, contents, workflows if needed).
- Use the App's generated installation token in your workflow (requires additional setup to exchange JWT for installation token).

## How the workflow uses `GH_TOKEN`
- If `GH_TOKEN` is present in repository secrets, the workflow will authenticate the `gh` CLI using it and create Draft PRs labeled `auto-docs` on branches pushed by the runner.
- If `GH_TOKEN` is not present, `GITHUB_TOKEN` (automatically provided by GitHub Actions) will be used for push; the workflow will still push the branch but PR creation may fail if `gh` isn't authenticated.

## Add the secret
1. Go to the repository → Settings → Secrets & variables → Actions → New repository secret.
2. Name: `GH_TOKEN`
3. Value: the PAT value from the bot account or the GitHub App installation token.
4. Save.

## Labels and repo housekeeping
- Create a label named `auto-docs` in the repository so the runner can add it to Draft PRs.
- Optionally configure an auto-merge rule for PRs labeled `auto-docs` after a trust period.

## Security notes
- Use a dedicated bot account or GitHub App with minimal necessary permissions.
- Rotate PATs regularly and audit bot actions.

## Testing
- After adding `GH_TOKEN`, push a small change to any branch and verify the workflow runs and creates a Draft PR labeled `auto-docs`.

If you'd like, I can add a helper step in the workflow to verify the `GH_TOKEN` is valid before performing actions (e.g., `gh auth status`).