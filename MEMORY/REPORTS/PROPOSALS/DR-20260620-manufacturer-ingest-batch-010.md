# DR-20260620-manufacturer-ingest-batch-010

Status: APPLIED_ADDITIVE_PROPOSAL_BATCH
Mode: OWNER_ADMIN_MODE
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory

## Action

Continued the manufacturer ingest loop with batch 010 and updated the manufacturer dedupe resume state to include batch 010.

## Changed/proposed files

- `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`
- `/MEMORY/PROPOSALS/BATCHES/MP-20260620-manufacturer-ingest-batch-010.md`
- `/MEMORY/PROPOSALS/BATCHES/INDEX_20260620_MANUFACTURER_INGEST_BATCH_010.md`
- `/MEMORY/STATUS/DATABASE_STATUS_20260620_MANUFACTURER_PROPOSALS_BATCH_010.md`
- `/MEMORY/REPORTS/PROPOSALS/DR-20260620-manufacturer-ingest-batch-010.md`

## Not changed

- No canonical manufacturer profiles were created.
- No README overwrite was performed.
- No CHANGES overwrite was performed.
- No source registry overwrite was performed.
- No binary, firmware, driver, installer, PDF/manual or archive.org upload was performed.

## Dedupe applied

Batch 010 excluded names from the existing manufacturer index plus batches 002 through 009. The dedupe state now lists batch 010 names as exclusions for future work.

## Validation

- Repository status showed GitHub read/write enabled before write.
- Official-source-only endpoint seeds used.
- Current web verification was performed for selected official support/download pages; seed-only entries require product-line retrieval before promotion.
- Static safety review: no secrets, no customer data, no serials, no raw logs, no raw crawl dumps, no binaries.
- Data-loss classifier: LOW.
- Test evidence: DRY_RUN_ONLY plus write tool output when applied.

## Rollback

Remove the four batch-010 files and revert `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md` to the previous revision that ended at batch 009. No destructive cleanup, force-push or broad status migration is required.

## Open risks

- Industrial embedded vendors often publish BIOS, BSP, firmware, drivers and SDKs. Keep link-only metadata until product/model/version review.
- Maker-board wikis can mix official and community content; promotion requires official, scoped evidence.
