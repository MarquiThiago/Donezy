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

# Conditional import: requests only needed for remote LLM calls
try:
    import requests
except ImportError:
    requests = None


def build_prompt(module: str, files: list[str], diff: str, prompt_template: str) -> str:
    """Build comprehensive prompt for LLM"""
    header = f"""Generate comprehensive technical documentation for the '{module}' module in a Dart/Flutter application.

**Module Location:** `lib/src/modules/{module}/`

**Your Task:**
Create clear documentation that explains:
1. Module purpose and main functionality
2. Architecture and component organization  
3. Key classes and their responsibilities
4. Data flow and state management
5. How to use this module

**Important:**
- Write in Markdown format
- Be technical but clear
- Make it useful for developers

---

"""
    
    files_section = "### Files in this module:\n" + "\n".join([f"- `{f}`" for f in files[:50]])
    diff_section = ""
    if diff and len(diff) > 50:
        diff_section = f"\n\n### Recent changes:\n```diff\n{diff[:2000]}\n```\n"
    
    footer = """---

Return ONLY the markdown documentation that will replace the auto-generated block.
Start with a heading like `# {module} Module`."""
    
    return header + files_section + diff_section + footer


def call_ollama_local(prompt: str, model: str = "mistral") -> dict:
    """Call local Ollama instance running on localhost:11434"""
    if not requests:
        raise ImportError("requests module is required for Ollama API calls")
    
    url = "http://localhost:11434/api/generate"
    payload = {
        "model": model,
        "prompt": prompt,
        "stream": False
    }
    
    print(f"Calling local Ollama ({model})...", file=sys.stderr)
    resp = requests.post(url, json=payload, timeout=300)  # 5 min timeout
    resp.raise_for_status()
    data = resp.json()
    
    markdown = data.get("response", "")
    
    # Ensure markers are present
    if "<!-- AUTO-GENERATED DOC START -->" not in markdown:
        markdown = "<!-- AUTO-GENERATED DOC START -->\n" + markdown
    if "<!-- AUTO-GENERATED DOC END -->" not in markdown:
        markdown = markdown + "\n<!-- AUTO-GENERATED DOC END -->"
    
    return {
        "markdown": markdown,
        "confidence": 0.75,
        "provider": "ollama-local"
    }


def call_remote_llm(api_url: str, api_key: str, prompt: str) -> dict:
    """Call generic remote LLM API"""
    if not requests:
        raise ImportError("requests module is required for remote LLM calls")
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

    # Try Ollama local first (priority)
    try:
        result = call_ollama_local(prompt)
        print(json.dumps({"module": module, **result}))
        return
    except Exception as e:
        print(f"Ollama not available: {e}", file=sys.stderr)

    # Try remote API if configured
    api_url = os.environ.get("LLM_API_URL")
    api_key = os.environ.get("LLM_API_KEY")
    if api_url and api_key:
        try:
            resp = call_remote_llm(api_url, api_key, prompt)
            markdown = resp.get("markdown") or resp.get("text") or json.dumps(resp)
            confidence = float(resp.get("confidence", 0.8))
            print(json.dumps({"module": module, "markdown": markdown, "confidence": confidence, "provider": "remote-api"}))
            return
        except Exception as e:
            print(f"Remote LLM call failed: {e}", file=sys.stderr)

    # Fallback to template
    print(f"⚠️  Using fallback mode for module '{module}' - no LLM available", file=sys.stderr)
    out = local_fallback(module, files, diff)
    print(json.dumps(out))


if __name__ == "__main__":
    main()
