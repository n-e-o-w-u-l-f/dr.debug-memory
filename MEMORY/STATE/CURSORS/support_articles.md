# support_articles cursor

Status: ACTIVE_CURSOR
Updated: 2026-06-20
Cursor key: `MEMORY cursor: support_articles`
Last applied batch: `DR-20260620-support-articles-loop-001`
Last applied count: 11
Requested batch size: 100
Next offset: 11
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

For `DR-20260620-support-articles-loop-001`, remove the batch/report/source-record files and restore proposal/report index entries and changelog state from the previous commit.
