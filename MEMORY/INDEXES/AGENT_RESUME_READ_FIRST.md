# AGENT_RESUME_READ_FIRST

Status: ACTIVE_AGENT_RESUME_GUIDE
Updated: 2026-06-19
Scope: Required reading order for agents before resuming repository work.
Artifact class: NAVIGATION_ONLY

## Mandatory resume order

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/REPORTS/INDEX.md`
6. `/MEMORY/STATUS/INDEX.md`
7. Relevant family `INDEX.md` files under `/MEMORY/*/INDEX.md`
8. Task-specific batch indexes, for example `/MEMORY/PROPOSALS/BATCHES/INDEX_20260619_MANUFACTURER_INGEST.md`
9. Dedupe/resume state files, for example `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Rule

Do not continue an ingest loop until the existing canonical index and proposal batches for that family have been checked.

## Manufacturer-specific guard

Before adding a manufacturer proposal, search:

- `/MEMORY/MANUFACTURERS/INDEX.md`
- `/MEMORY/PROPOSALS/INDEX.md`
- `/MEMORY/PROPOSALS/BATCHES/INDEX_20260619_MANUFACTURER_INGEST.md`
- `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`
