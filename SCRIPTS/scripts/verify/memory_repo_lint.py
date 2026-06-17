#!/usr/bin/env python3
"""Dr.Debug Memory Repository Lint (read-only).

Purpose:
  Scan a dr.debug-memory working tree for common review risks:
  - likely secrets in text files
  - Markdown/YAML files with status but no source hint
  - DRAFT/REVIEW_REQUIRED markers
  - TODO/FIXME/NEEDS_MORE_DATA markers

Usage:
  python3 memory_repo_lint.py [path] [--json]

Safety:
  Read-only. Does not modify files. Standard library only.
"""
from __future__ import annotations

import argparse
import json
import os
import re
from pathlib import Path
from typing import Iterable

TEXT_SUFFIXES = {
    ".md", ".txt", ".yaml", ".yml", ".json", ".jsonl", ".sh", ".ps1", ".py"
}
SKIP_DIRS = {
    ".git", ".hg", ".svn", "__pycache__", ".mypy_cache", ".pytest_cache",
    "node_modules", ".venv", "venv", "dist", "build"
}
SECRET_PATTERNS = [
    ("possible_private_key", re.compile(r"-----BEGIN (?:RSA |DSA |EC |OPENSSH |PGP )?PRIVATE KEY-----")),
    ("possible_github_token", re.compile(r"\bgh[pousr]_[A-Za-z0-9_]{20,}\b")),
    ("possible_generic_api_key", re.compile(r"(?i)\b(api[_-]?key|token|secret|password)\b\s*[:=]\s*['\"]?[^'\"\s]{12,}")),
    ("possible_aws_access_key", re.compile(r"\bAKIA[0-9A-Z]{16}\b")),
]
SOURCE_HINT = re.compile(r"(?im)^\s*(sources?|source_id|url|quelle|quellen)\s*[:#-]")
STATUS_HINT = re.compile(r"(?im)^\s*status\s*:")
TODO_HINT = re.compile(r"(?i)\b(TODO|FIXME|NEEDS_MORE_DATA|REVIEW_REQUIRED|DRAFT)\b")

def iter_files(root: Path) -> Iterable[Path]:
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS]
        for name in filenames:
            path = Path(dirpath) / name
            if path.suffix.lower() in TEXT_SUFFIXES:
                yield path

def read_text(path: Path) -> str | None:
    try:
        data = path.read_text(encoding="utf-8")
        if "\x00" in data:
            return None
        return data
    except UnicodeDecodeError:
        try:
            return path.read_text(encoding="utf-8", errors="replace")
        except OSError:
            return None
    except OSError:
        return None

def line_for_offset(text: str, offset: int) -> int:
    return text.count("\n", 0, offset) + 1

def scan(root: Path) -> dict:
    findings: list[dict] = []
    stats = {"files_scanned": 0}

    for path in iter_files(root):
        rel = path.relative_to(root).as_posix()
        text = read_text(path)
        if text is None:
            continue

        stats["files_scanned"] += 1

        for name, pattern in SECRET_PATTERNS:
            for match in pattern.finditer(text):
                findings.append({
                    "severity": "high",
                    "type": name,
                    "path": rel,
                    "line": line_for_offset(text, match.start()),
                    "message": "Potential secret-like value; review and redact before commit.",
                })

        if path.suffix.lower() in {".md", ".yaml", ".yml"}:
            if STATUS_HINT.search(text) and not SOURCE_HINT.search(text):
                findings.append({
                    "severity": "medium",
                    "type": "status_without_source_hint",
                    "path": rel,
                    "line": 1,
                    "message": "File has a status field but no obvious source/source_id/url hint.",
                })

        for match in TODO_HINT.finditer(text):
            findings.append({
                "severity": "info",
                "type": "review_marker",
                "path": rel,
                "line": line_for_offset(text, match.start()),
                "message": f"Review marker found: {match.group(1)}",
            })

    return {"root": str(root), "stats": stats, "findings": findings}

def main() -> int:
    parser = argparse.ArgumentParser(description="Read-only lint for dr.debug-memory style repositories.")
    parser.add_argument("path", nargs="?", default=".", help="Repository path to scan")
    parser.add_argument("--json", action="store_true", help="Emit JSON instead of text")
    args = parser.parse_args()

    root = Path(args.path).resolve()
    if not root.exists():
        print(f"ERROR: path does not exist: {root}")
        return 2

    result = scan(root)

    if args.json:
        print(json.dumps(result, indent=2, sort_keys=True))
    else:
        print(f"Dr.Debug memory_repo_lint: {result['stats']['files_scanned']} files scanned")
        for item in result["findings"]:
            print(
                f"{item['severity'].upper()} {item['type']} "
                f"{item['path']}:{item['line']} - {item['message']}"
            )

    return 1 if any(f["severity"] == "high" for f in result["findings"]) else 0

if __name__ == "__main__":
    raise SystemExit(main())
