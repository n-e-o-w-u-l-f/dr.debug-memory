# README Matrix Patch: Linux / Manpages Review Batch

Status: PATCH_READY_LOCAL_SCAN_PASSED
Created: 2026-06-24
Updated: 2026-06-24
Scope: Targeted README knowledge matrix rows for Linux manpages review batch.

## Reason

The repository update process requires README knowledge matrix handling for MEMORY changes. The available write endpoint writes full file content, not a line-level patch. To avoid destructive or formatting-risk replacement of README.md, this patch artifact records the exact rows to add in the existing `Wissenstand` table.

## Local scan update

User-provided local grep/CI-style scan passed with non-competing references documented. The extra `man7` hits are scoped source references, not duplicate source-registry records.

## Rows to add

| Area | Status | Count / Result | Last checked | Notes |
|---|---|---:|---|---|
| Linux manpages review batch | PROPOSAL_READY_FOR_REVIEW | 2 source records | 2026-06-24 | `MEMORY/SOURCES/LINUX_MAN_PAGES_PROJECT.md`, `MEMORY/SOURCES/MAN7_LINUX_MANPAGES_ONLINE.md`; local grep passed with non-competing references documented. |
| Linux manpages canonical readiness | READY_FOR_PROMOTION_REVIEW | 0 canonical promotions | 2026-06-24 | Dedupe passed for source-record uniqueness; canonical promotion deferred to dedicated batch. |

## Matrix counters

- searched_total: 2 source candidates
- present_total: 2 exact source records after review batch
- missing_total: 0 exact source records after review batch
- orphan_total: 0 after INDEX navigation patch
- proposal_only_total: 0 for the two promoted records
- proposal_ready_for_review_total: 2
- canonical_total: 0
- source_confirmed_total: 2
- local_grep_status: PASS_WITH_NON_COMPETING_REFERENCES
- last_checked: 2026-06-24

## Safe application instruction

Use a line-level patch tool or manual edit that preserves all README content outside the existing `Wissenstand` table. Do not overwrite README.md wholesale unless exact current full-file content has been fetched and verified.

## Rollback

Remove the two rows above from README.md if the Linux manpages source records or INDEX navigation are reverted.
