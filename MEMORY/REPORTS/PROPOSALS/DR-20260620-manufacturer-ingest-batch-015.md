# DR-20260620-manufacturer-ingest-batch-015

Status: APPLIED_ADDITIVE_PROPOSAL_BATCH
Mode: OWNER_ADMIN_MODE
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory

## Action

Continued the manufacturer ingest loop with batch 015 and updated the manufacturer dedupe resume state to include batch 015.

## Changed/proposed files

- `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`
- `/MEMORY/PROPOSALS/BATCHES/MP-20260620-manufacturer-ingest-batch-015.md`
- `/MEMORY/PROPOSALS/BATCHES/INDEX_20260620_MANUFACTURER_INGEST_BATCH_015.md`
- `/MEMORY/STATUS/DATABASE_STATUS_20260620_MANUFACTURER_PROPOSALS_BATCH_015.md`
- `/MEMORY/REPORTS/PROPOSALS/DR-20260620-manufacturer-ingest-batch-015.md`

## Not changed

- No canonical manufacturer profiles were created.
- No README overwrite was performed.
- No CHANGES overwrite was performed.
- No source registry overwrite was performed.
- No binary, firmware, driver, installer, OS image, PDF/manual or archive.org upload was performed.

## Dedupe applied

Batch 015 excluded names from the existing manufacturer index plus batches 002 through 014. The dedupe state now lists batch 015 names as exclusions for future work.

## Validation

- Repository status showed GitHub read/write enabled before write.
- Official-source-only endpoint seeds used.
- Current web verification was performed for selected official support/download pages; seed-only entries require product-line retrieval before promotion.
- Static safety review: no secrets, no customer data, no serials, no raw logs, no raw crawl dumps, no binaries.
- Data-loss classifier: LOW.
- Test evidence: DRY_RUN_ONLY plus write tool output when applied.

## Rollback

Remove the four batch-015 files and revert `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md` to the previous revision that ended at batch 014. No destructive cleanup, force-push or broad status migration is required.

## Open risks

- Professional AV, streaming, conferencing, room-control and display vendors often publish firmware, drivers, SDKs, software installers and cloud/remote-management tools. Those pages must remain link-only metadata until exact model/version evidence is reviewed.
- Room-control and AV-over-IP devices may be production-critical and credential-sensitive; do not store secrets or procedural update instructions without platform gate and rollback.
