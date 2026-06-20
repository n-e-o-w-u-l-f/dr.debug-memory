# MEMORY cursor: security_advisories

Status: ACTIVE
Updated: 2026-06-20
Current batch id: DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61
Current branch: main
Resume from: mozilla_mfsa_2026_57_61_product_scope_proposal_ready
Last completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-003.md
Previous completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-002.md
Previous seed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-source-seed-001.md
Next recommended action: next_publisher_or_mozilla_canonical_review
Batch size requested: 5
Batch size completed: 5 product-scoped advisory-level proposal records

## Cursor state

Security-advisories loop has completed the initial proposal-first source seed, Mozilla MFSA batch 002 for MFSA 2026-52 through MFSA 2026-56, and Mozilla MFSA batch 003 for MFSA 2026-57 through MFSA 2026-61.

## Last batch records

- `MFSA-2026-57` — Firefox 152 — product-scoped proposal record.
- `MFSA-2026-58` — Firefox ESR 140.12 — product-scoped proposal record.
- `MFSA-2026-59` — Firefox ESR 115.37 — product-scoped proposal record.
- `MFSA-2026-60` — Thunderbird 152 — product-scoped proposal record.
- `MFSA-2026-61` — Thunderbird 140.12 — product-scoped proposal record.

## Next batch constraints

- Dedupe by advisory-id, CVE, product, fixed version, publisher, source URL and canonical ID.
- Do not dedupe by CVE alone because the same CVE can carry different Mozilla product/fixed-version scopes.
- Larger cross-product CVEs must preserve product-specific fixed versions and must not merge overlapping CVEs silently.
- If affected/fixed version scope is missing or ambiguous, store the limitation and keep the entry proposal-only.
- Do not create exploit instructions, proof-of-concept reproduction steps, raw Bugzilla contents, raw crawl dumps, binaries, firmware, drivers, installers or rehosting artifacts.

## Rollback

Rollback batch id DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61 by removing `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-003.md`, removing `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61.md`, and restoring the previous cursor state at `mozilla_mfsa_2026_52_56_proposal_ready` with last completed artifact `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-002.md`.
