# DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61

Version: 0.1.0
Status: APPLIED_PROPOSAL_BATCH
Date: 2026-06-20
Mode: OWNER_ADMIN_MODE
Branch: main
Batch requested: 5
Batch completed: 5 Mozilla MFSA product-scoped proposal records
Previous cursor: mozilla_mfsa_2026_52_56_proposal_ready
New cursor: mozilla_mfsa_2026_57_61_product_scope_proposal_ready
Rollback id: DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61

## Command summary

Requested loop:

`memory loop security-advisories --publisher Mozilla --advisory-range MFSA-2026-57..MFSA-2026-61`

Scope included security advisories, CVEs and vulnerability notices. The applied batch is deliberately proposal-only because canonical CVE/security entries require later review, dedupe and promotion. No exploit reproduction steps, raw Bugzilla contents, raw crawl dumps, binaries, downloads or rehosting artifacts were added.

## Source verification

Official Mozilla advisory pages were checked for MFSA 2026-57 through MFSA 2026-61. Product and fixed-version scope are limited to Mozilla advisory fields:

- `MFSA-2026-57` — Firefox — fixed in Firefox 152.
- `MFSA-2026-58` — Firefox ESR — fixed in Firefox ESR 140.12.
- `MFSA-2026-59` — Firefox ESR — fixed in Firefox ESR 115.37.
- `MFSA-2026-60` — Thunderbird — fixed in Thunderbird 152.
- `MFSA-2026-61` — Thunderbird — fixed in Thunderbird 140.12.

## Applied files

- `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-003.md`
- `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-003-mozilla-mfsa-57-61.md`
- `/MEMORY/STATE/CURSORS/security_advisories.md`

## Dedupe result

No CVE-only dedupe was performed. Repeated CVEs remain product/fixed-version scoped because Mozilla advisories use overlapping CVEs across Firefox, Firefox ESR and Thunderbird releases. Minimum dedupe key for later canonical review is:

`advisory-id`, `cve`, `product`, `fixed-version`, `publisher`, `source-url`, `canonical-id`.

## Validation

- markdown-links: static review only; no repository-relative broken links introduced in proposal/report.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each proposal record.
- affected-version-scope: limited to official Mozilla advisory product/fixed-version fields.
- no-second-truth: proposal-only, no canonical SECURITY entry and no SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, proof-of-concept steps, raw Bugzilla contents, raw crawl dumps or binaries.
- rollback-ready: remove batch/report and restore previous `/MEMORY/STATE/CURSORS/security_advisories.md` cursor.

## Limitations

- This batch does not claim canonical CVE records were created.
- It does not generalize affected versions beyond Mozilla advisory scope.
- It does not parse Bugzilla details beyond advisory-level CVE/reference existence.
- Thunderbird email-context limitation is stored as a limitation and not generalized to browser contexts.
- `CHANGES.md` and navigation indexes were not updated because the requested write scope was limited to proposals, reports and cursors.

## Next cursor action

Continue with another publisher or a Mozilla canonical-review pass only after duplicate checks against all Mozilla MFSA proposal batches.
