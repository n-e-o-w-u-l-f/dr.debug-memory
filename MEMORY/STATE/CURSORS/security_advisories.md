# MEMORY cursor: security_advisories

Status: ACTIVE
Updated: 2026-06-20
Current batch id: DR-20260620-security-advisories-loop-002-mozilla-mfsa
Current branch: main
Resume from: mozilla_mfsa_2026_52_56_proposal_ready
Last completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-002.md
Previous completed artifact: /MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-source-seed-001.md
Next recommended action: mozilla_mfsa_2026_57_61_dedupe_review
Batch size requested: 5
Batch size completed: 5 advisory-level proposal records

## Cursor state

Security-advisories loop has completed the initial proposal-first source seed and a Mozilla MFSA advisory-level proposal batch for MFSA 2026-52 through MFSA 2026-56.

## Last batch records

- `MFSA-2026-52` — Firefox for iOS 151.1 — `CVE-2026-9078`
- `MFSA-2026-53` — Firefox for iOS 151.2 — `CVE-2026-9308`, `CVE-2026-9309`
- `MFSA-2026-54` — Firefox 151.0.3 — `CVE-2026-10701`, `CVE-2026-10702`
- `MFSA-2026-55` — Focus for iOS 151.3.1, Klar for iOS 151.3.1 — `CVE-2026-11799`
- `MFSA-2026-56` — Firefox for iOS 152 — `CVE-2026-53899`, `CVE-2026-53900`

## Next batch constraints

- Continue with official Mozilla advisories only after duplicate checks for `MFSA-2026-57` through `MFSA-2026-61`.
- Dedupe by advisory-id, CVE, product, version-range, publisher, source-url and canonical-id.
- Larger Firefox/Firefox ESR/Thunderbird advisories must preserve product-specific fixed versions and must not merge overlapping CVEs silently.
- If affected/fixed version scope is missing or ambiguous, store the limitation and keep the entry proposal-only.
- Do not create exploit instructions, proof-of-concept reproduction steps, raw bug contents, raw crawl dumps, binaries, firmware, drivers, installers or rehosting artifacts.

## Rollback

Rollback batch id DR-20260620-security-advisories-loop-002-mozilla-mfsa by removing `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-mozilla-mfsa-batch-002.md`, removing `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-002-mozilla-mfsa.md`, and restoring the previous cursor state at `source_seed_completed` with last completed artifact `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-source-seed-001.md`.
