# README Matrix Patch: Linux / Manpages Review Batch

Status: PATCH_ARTIFACT_READY
Created: 2026-06-24
Scope: Targeted README knowledge matrix rows for Linux manpages review batch.

## Reason

The repository update process requires README knowledge matrix handling for MEMORY changes. The available write endpoint writes full file content, not a line-level patch. To avoid destructive or formatting-risk replacement of README.md, this patch artifact records the exact rows to add in the existing `Wissenstand` table.

## Rows to add

| Area | Status | Count / Result | Last checked | Notes |
|---|---|---:|---|---|
| Linux manpages review batch | PROPOSAL_READY_FOR_REVIEW | 2 source records | 2026-06-24 | `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`, `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`; canonical promotion blocked until local grep/CI duplicate scan. |
| Linux manpages canonical promotions | BLOCKED | 0 | 2026-06-24 | Source-confirmed records only; no CANONICAL promotion without local duplicate scan and index/reference update. |

## Matrix counters

- searched_total: 2 source candidates
- present_total: 0 exact specific records found in MEMORY/INDEX.md before this batch
- missing_total: 2 exact source records before this batch
- orphan_total: 0 known after report linkage; direct index navigation still pending
- proposal_only_total: 0 for the two promoted records
- proposal_ready_for_review_total: 2
- canonical_total: 0
- source_confirmed_total: 2
- last_checked: 2026-06-24

## Safe application instruction

Use a line-level patch tool or manual edit that preserves all README content outside the existing `Wissenstand` table. Do not overwrite README.md wholesale unless exact current full-file content has been fetched and verified.

## Rollback

Remove the two rows above from README.md if the Linux manpages source records are reverted.
