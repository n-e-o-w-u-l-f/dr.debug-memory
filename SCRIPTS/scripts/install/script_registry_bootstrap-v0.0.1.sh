#!/usr/bin/env bash
# Dr. Debug Script: script_registry_bootstrap
# Version: v0.0.1
# Category: install
# Component: dr.debug-memory
# Task: create script registry directories and indexes
# Safety: guarded-change
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== Dr. Debug script registry bootstrap =="

repo="${1:-$(pwd)}"
printf 'Repository path: %s
' "$repo"

if [ ! -d "$repo" ]; then
  printf '%s
' "WARN: target directory does not exist"
else
  for d in scripts/debug scripts/install scripts/fix MEMORY/SCRIPTS; do
    mkdir -p "$repo/$d"
    printf 'OK directory: %s
' "$d"
  done

  if [ ! -f "$repo/scripts/INDEX.md" ]; then
    cat > "$repo/scripts/INDEX.md" <<'MD'
# # # # # # # # #
# Script Index #
# # # # # # # # #

This index tracks Dr. Debug shell scripts.

Required paths:

- `/scripts/debug/*-vX.Y.Z.sh`
- `/scripts/install/*-vX.Y.Z.sh`
- `/scripts/fix/*-vX.Y.Z.sh`
MD
    printf '%s
' "OK created scripts/INDEX.md"
  else
    printf '%s
' "SKIP scripts/INDEX.md already exists"
  fi

  if [ ! -f "$repo/MEMORY/SCRIPTS/INDEX.md" ]; then
    cat > "$repo/MEMORY/SCRIPTS/INDEX.md" <<'MD'
# # # # # # # # # # # #
# Memory Script Index #
# # # # # # # # # # # #

This memory index links scripts to knowledge entries.
MD
    printf '%s
' "OK created MEMORY/SCRIPTS/INDEX.md"
  else
    printf '%s
' "SKIP MEMORY/SCRIPTS/INDEX.md already exists"
  fi
fi

printf '%s
' "== Done. Existing files were not overwritten. =="
