#!/usr/bin/env bash
# Dr. Debug Script: github_memory_local_audit
# Version: v0.0.1
# Category: debug
# Component: dr.debug-memory
# Task: audit local mirrored memory repository
# Safety: diagnostic-only
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== Dr. Debug local memory audit =="
repo="${1:-$(pwd)}"
printf 'Repository path: %s
' "$repo"

if [ ! -d "$repo/.git" ]; then
  printf '%s
' "WARN: This does not look like a Git repository: $repo"
fi

printf '%s
' "== Git status =="
git -C "$repo" status --short 2>/dev/null || printf '%s
' "WARN: git status failed"

printf '%s
' "== Expected memory files =="
for p in \
  AGENTS.md \
  MEMORY/AGENTS/GLOBAL_DIRECTIVE.md \
  MEMORY/AGENTS/README.md \
  MEMORY/SCHEMA.md \
  MEMORY/QUALITY_RULES.md \
  MEMORY/SOURCE_REGISTRY.md \
  MEMORY/INDEX.md \
  CHANGES.md \
  UPDATE_PROCESS.md
do
  if [ -e "$repo/$p" ]; then
    printf 'OK   %s
' "$p"
  else
    printf 'MISS %s
' "$p"
  fi
done

printf '%s
' "== Known script directories =="
for d in scripts scripts/debug scripts/install scripts/fix MEMORY/SCRIPTS; do
  if [ -d "$repo/$d" ]; then
    printf 'OK   %s
' "$d"
  else
    printf 'MISS %s
' "$d"
  fi
done

printf '%s
' "== Existing shell scripts =="
find "$repo" -type f -name '*.sh' -print 2>/dev/null | sort || printf '%s
' "WARN: find failed"

printf '%s
' "== Done. No files were changed. =="
