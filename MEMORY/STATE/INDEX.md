# MEMORY/STATE/INDEX.md

Status: ACTIVE_NAVIGATION_INDEX
Updated: 2026-06-19
Scope: Repository state, status snapshots, lifecycle checkpoints and resume notes.
Artifact class: STATE_AND_STATUS

## Read-before-work rule

Before resuming work, read `/AGENTS.md`, `/MEMORY/INDEX.md`, this file, `/MEMORY/PROPOSALS/INDEX.md`, `/MEMORY/PROPOSALS/BATCHES/INDEX_20260619_MANUFACTURER_INGEST.md` if present, and task-specific status reports.

## Current state

- Manufacturer ingest loop has proposal-only batches 002 and 003 pending review.
- Canonical counts must not be inferred from proposal counts.
- Existing manufacturer canonical/index content must be checked before adding new manufacturers.

## Dedupe guard

For manufacturer work, search existing manufacturer index/content and proposal batches before adding names or aliases.
