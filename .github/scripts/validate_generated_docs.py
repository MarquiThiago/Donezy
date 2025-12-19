#!/usr/bin/env python3
"""Validate generated Markdown: non-empty, no obvious secrets, and mermaid blocks sanity checks."""
import argparse
import json
import re
import sys


SECRET_PATTERNS = [r"AIza[0-9A-Za-z-_]{35}", r"-----BEGIN PRIVATE KEY-----", r"SECRET", r"api_key" ]


def has_secrets(text: str) -> bool:
    for pat in SECRET_PATTERNS:
        if re.search(pat, text, re.IGNORECASE):
            return True
    return False


def mermaid_blocks_ok(text: str) -> bool:
    # Very basic: ensure any mermaid code block has a start and end
    blocks = re.findall(r"```mermaid([\s\S]*?)```", text)
    for b in blocks:
        if len(b.strip()) == 0:
            return False
    return True


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True, help="file path or '-' for stdin")
    args = parser.parse_args()

    if args.input == "-":
        text = sys.stdin.read()
    else:
        text = open(args.input, "r", encoding="utf-8").read()

    issues = []
    if not text.strip():
        issues.append("Empty document")
    if has_secrets(text):
        issues.append("Suspected secret detected")
    if not mermaid_blocks_ok(text):
        issues.append("Mermaid block issue: found empty mermaid block")

    if issues:
        print(json.dumps({"valid": False, "issues": issues}))
        sys.exit(2)
    else:
        print(json.dumps({"valid": True, "issues": []}))
        sys.exit(0)


if __name__ == "__main__":
    main()
