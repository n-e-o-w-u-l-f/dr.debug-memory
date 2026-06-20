# support_articles cursor

Status: ACTIVE_CURSOR
Updated: 2026-06-21
Cursor key: `MEMORY cursor: support_articles`
Last applied batch: `DR-20260621-support-articles-loop-002`
Last applied count: 15
Total applied count: 26
Requested batch size: 100
Next offset: 26
Canonical promotion allowed: NO
Default policy: proposal-first; support claim limited to documented product/version/scope

## Resume plan

1. Read `/AGENTS.md`, `/UPDATE_PROCESS.md`, `/MEMORY/INDEX.md`, `/MEMORY/SCHEMA.md`, `/MEMORY/QUALITY_RULES.md`, `/MEMORY/SOURCE_REGISTRY.md`, `/MEMORY/PROPOSALS/INDEX.md`, `/MEMORY/REPORTS/INDEX.md` and this cursor.
2. Search by publisher, article ID, title, product/device scope, error signature, official URL and canonical ID.
3. Add only official or official-project support/help-center/troubleshooting articles unless marked discovery-only.
4. Store source-record candidates first.
5. Do not promote to canonical fixes without exact scope, validation and review.
6. Update this cursor after each applied batch.

## Rollback

For `DR-20260621-support-articles-loop-002`, remove the batch/report/source-record files and restore proposal/report index entries, changelog state and this cursor to the previous batch 001 state: last applied batch `DR-20260620-support-articles-loop-001`, total applied count 11, next offset 11.
