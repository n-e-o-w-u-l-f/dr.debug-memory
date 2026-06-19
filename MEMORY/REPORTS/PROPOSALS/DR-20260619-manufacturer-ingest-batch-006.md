# DR-20260619-manufacturer-ingest-batch-006

Status: APPLIED_ADDITIVE_PROPOSAL_BATCH
Mode: OWNER_ADMIN_MODE
Created: 2026-06-19
Repository: n-e-o-w-u-l-f/dr.debug-memory

## Action

Continued the manufacturer ingest loop with batch 006 and updated the manufacturer dedupe resume state to include batch 006.

## Changed/proposed files

- `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`
- `/MEMORY/PROPOSALS/BATCHES/MP-20260619-manufacturer-ingest-batch-006.md`
- `/MEMORY/PROPOSALS/BATCHES/INDEX_20260619_MANUFACTURER_INGEST_BATCH_006.md`
- `/MEMORY/STATUS/DATABASE_STATUS_20260619_MANUFACTURER_PROPOSALS_BATCH_006.md`
- `/MEMORY/REPORTS/PROPOSALS/DR-20260619-manufacturer-ingest-batch-006.md`

## Not changed

- No canonical manufacturer profiles were created.
- No README overwrite was performed.
- No CHANGES overwrite was performed.
- No source registry overwrite was performed.
- No binary, firmware, driver, installer, PDF/manual or archive.org upload was performed.

## Dedupe applied

Batch 006 excluded names from the existing manufacturer index plus batches 002, 003, 004 and 005. The dedupe state now lists batch 006 names as exclusions for future work.

## Validation

- Repository status showed GitHub read/write enabled before write.
- Official-source-only endpoint seeds used.
- Current web verification was performed for many official support/download pages; seed-only entries require product-line retrieval before promotion.
- Static safety review: no secrets, no customer data, no serials, no raw logs, no raw crawl dumps, no binaries.
- Data-loss classifier: LOW.
- Test evidence: DRY_RUN_ONLY plus write tool output when applied.

## Rollback

Remove the four batch-006 files and revert `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md` to the previous revision that ended at batch 005. No destructive cleanup, force-push or broad status migration is required.

## Open risks

- Several vendors have fragmented brand/product-line support or regional redirects.
- Audio and smart-home software/firmware pages must remain link-only metadata until model/version evidence is reviewed.
