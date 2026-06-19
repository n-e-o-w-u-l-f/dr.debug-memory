# MEMORY/RUNS/INDEX.md

Status: ACTIVE_NAVIGATION_INDEX
Updated: 2026-06-19
Scope: Run logs, bounded batch records and auditable task execution summaries.
Artifact class: AUDIT_NAVIGATION

## Read-before-work rule

Before resuming a loop or batch task, read `/AGENTS.md`, `/MEMORY/INDEX.md`, this file, `/MEMORY/PROPOSALS/INDEX.md`, `/MEMORY/STATUS/` reports if present and task-specific batch indexes.

## Current state

- Canonical records should not live here.
- Run summaries should point to changed/proposed files and validation results.

## Dedupe guard

A run must record resume pointers and exclusions so the next agent does not repeat the same manufacturer, device, source or fix batch.
