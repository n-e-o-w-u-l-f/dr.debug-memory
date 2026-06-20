# MEMORY cursor: security_advisories

Status: ACTIVE
Updated: 2026-06-20
Current batch id: DR-20260620-security-advisories-loop-001
Current branch: main
Resume from: source_seed_completed
Last completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-source-seed-001.md
Next recommended action: advisory_level_ingest
Batch size requested: 100
Batch size completed: 13 source-record candidates

## Cursor state

The first security-advisories loop applied a proposal-first source seed, not canonical advisory records.

## Next batch constraints

- Ingest individual advisories only from official/vendor/advisory sources where possible.
- Capture: advisory_id, cve_ids, publisher, affected_product_scope, affected_versions, fixed_versions, official_url, source_class, retrieved_at, claim_supported, limitations.
- Dedupe by advisory-id, CVE, product, version-range, publisher, source-url and canonical-id.
- If affected/fixed version scope is missing, store the limitation and keep the entry proposal-only.
- Do not create exploit instructions, proof-of-concept reproduction steps, raw crawl dumps, binaries, firmware, drivers, installers or rehosting artifacts.
- Prefer one publisher per batch for easier rollback and review.

## Rollback

Revert batch id DR-20260620-security-advisories-loop-001 and restore the previous cursor state where no security_advisories cursor existed.
