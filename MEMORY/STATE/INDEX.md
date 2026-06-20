# MEMORY/STATE/INDEX.md

Status: ACTIVE_NAVIGATION_INDEX
Updated: 2026-06-20
Scope: Repository state, status snapshots, lifecycle checkpoints and resume notes.
Artifact class: STATE_AND_STATUS

## Read-before-work rule

Before resuming work, read `/AGENTS.md`, `/MEMORY/INDEX.md`, this file, `/MEMORY/PROPOSALS/INDEX.md`, `/MEMORY/PROPOSALS/BATCHES/INDEX_20260619_MANUFACTURER_INGEST.md` if present, and task-specific status reports.

## Current state

- Security advisories loop has cursor `/MEMORY/STATE/CURSORS/security_advisories.md` at `source_seed_completed` after proposal-only source-seed batch 001.
- Manufacturer ingest loop has proposal-only batches 002 and 003 pending review.
- Canonical counts must not be inferred from proposal counts.
- Existing manufacturer canonical/index content must be checked before adding new manufacturers.

## Dedupe guard

For manufacturer work, search existing manufacturer index/content and proposal batches before adding names or aliases.
For security-advisory work, dedupe by advisory-id, CVE, product, version-range, publisher, source-url and canonical-id before adding any record.
