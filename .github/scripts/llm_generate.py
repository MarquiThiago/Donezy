#!/usr/bin/env python3
"""Call the configured LLM (placeholder) to generate documentation updates.

This script is intentionally provider-agnostic. If environment variables
`LLM_API_URL` and `LLM_API_KEY` are configured it will POST the prompt to that URL.
Otherwise it will produce a conservative, templated suggestion for the README.

Outputs JSON with fields: module, markdown, confidence (0.0-1.0)
"""
import argparse
import json
import os
import sys
from pathlib import Path

import requests


def build_prompt(module: str, files: list[str], diff: str, prompt_template:str) -> str:
    header = f"Generate a documentation update for feature module '{module}'.\n" \
             "Use the following context (FILES, DIFF) and produce a Markdown snippet suitable to replace the auto-generated block.\n\n"
    files_list = "\n".join([f"- {f}" for f in files[:50]])
    prompt = header + "FILES:\n" + files_list + "\n\nDIFF:\n" + diff + "\n\nTEMPLATE:\n" + prompt_template
    return prompt


def call_remote_llm(api_url: str, api_key: str, prompt: str) -> dict:
    headers = {"Authorization": f"Bearer {api_key}", "Content-Type": "application/json"}
    payload = {"prompt": prompt, "max_tokens": 1024}
    resp = requests.post(api_url, headers=headers, json=payload, timeout=60)
    resp.raise_for_status()
    return resp.json()


def local_fallback(module: str, files: list[str], diff: str) -> dict:
    # Conservative generated markdown
    md = []
    md.append("<!-- AUTO-GENERATED DOC START -->")
    md.append(f"\n# {module} — Suggested documentation (automated)\n")
    md.append("## Summary of changes")
    md.append("The following files were changed in this module:")
    for f in files[:30]:
        md.append(f"- `{f}`")
    md.append("\n## Suggested updates")
    md.append("- Update the 'Implementation notes' and 'Main functionalities' sections if behavior changed.")
    md.append("- Verify API and data-flow sections reflect field additions or removals.")
    md.append("\n<!-- AUTO-GENERATED DOC END -->")
    return {"module": module, "markdown": "\n".join(md), "confidence": 0.6}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--module", required=True)
    parser.add_argument("--repo_root", required=True)
    parser.add_argument("--prompt_file", required=True)
    args = parser.parse_args()

    module = args.module
    repo_root = Path(args.repo_root)
    module_path = repo_root / "lib" / "src" / "modules" / module
    files = [str(p.relative_to(module_path)) for p in module_path.rglob("*.dart")] if module_path.exists() else []

    # compute git diff for the module vs origin/master if available
    diff = ""
    try:
        import subprocess
        diff = subprocess.check_output(["git", "diff", "origin/master...HEAD", "--", str(module_path)], cwd=str(repo_root), stderr=subprocess.DEVNULL, text=True)
    except Exception:
        diff = ""

    prompt_template = ""
    try:
        prompt_template = open(args.prompt_file, "r", encoding="utf-8").read()
    except Exception:
        prompt_template = ""

    prompt = build_prompt(module, files, diff, prompt_template)

    api_url = os.environ.get("LLM_API_URL")
    api_key = os.environ.get("LLM_API_KEY")
    if api_url and api_key:
        try:
            resp = call_remote_llm(api_url, api_key, prompt)
            # Expecting remote to return a structure with 'markdown' and optionally 'confidence'
            markdown = resp.get("markdown") or resp.get("text") or json.dumps(resp)
            confidence = float(resp.get("confidence", 0.8))
            print(json.dumps({"module": module, "markdown": markdown, "confidence": confidence}))
            return
        except Exception as e:
            print(f"LLM call failed: {e}", file=sys.stderr)

    # Fallback (use computed diff variable)
    out = local_fallback(module, files, diff)
    print(json.dumps(out))


if __name__ == "__main__":
    main()
