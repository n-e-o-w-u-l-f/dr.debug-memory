# DR-20260620-security-advisories-loop-004-ubuntu-usn

Version: 0.1.0
Status: APPLIED_PROPOSAL_BATCH
Date: 2026-06-20
Mode: OWNER_ADMIN_MODE
Branch: main
Batch requested: 5
Batch completed: 5 Ubuntu USN release/package-scoped proposal records
Previous cursor: mozilla_mfsa_2026_57_61_product_scope_proposal_ready
New cursor: ubuntu_usn_8442_8449_8450_8452_8453_proposal_ready
Rollback id: DR-20260620-security-advisories-loop-004-ubuntu-usn

## Command summary

Requested loop:

`memory loop security-advisories --publisher "Canonical Ubuntu Security Team" --advisory-list USN-8452-1,USN-8453-1,USN-8449-1,USN-8442-1,USN-8450-1`

Scope included security advisories, CVEs and vulnerability notices. The applied batch is deliberately proposal-only because canonical CVE/security entries require later review, dedupe and promotion. No exploit reproduction steps, package downloads, raw crawl dumps, binaries or rehosting artifacts were added.

## Source verification

Official Ubuntu Security Notice pages were checked for the five USNs. Release, package and fixed-version scope are limited to Ubuntu advisory fields:

- `USN-8452-1` — `node-pbkdf2` — Ubuntu 24.04 LTS, 22.04 LTS, 20.04 LTS, 18.04 LTS — `CVE-2025-6545`.
- `USN-8453-1` — `libnet-cidr-lite-perl` — Ubuntu 26.04 LTS, 25.10, 24.04 LTS, 22.04 LTS, 20.04 LTS, 18.04 LTS, 16.04 LTS — `CVE-2026-45191`, `CVE-2026-45190`.
- `USN-8449-1` — `ldns` package variants — Ubuntu 26.04 LTS, 24.04 LTS, 22.04 LTS, 20.04 LTS, 18.04 LTS, 16.04 LTS — `CVE-2026-10846`.
- `USN-8442-1` — `kitty` / `kitty-shell-integration` — Ubuntu 26.04 LTS, 25.10, 24.04 LTS, 22.04 LTS, 20.04 LTS — `CVE-2026-33642`, `CVE-2026-33633`.
- `USN-8450-1` — `tomcat11` package variants — Ubuntu 26.04 LTS — `CVE-2026-42498`, `CVE-2026-41293`, `CVE-2026-43515`, `CVE-2026-41284`.

## Applied files

- `/MEMORY/PROPOSALS/BATCHES/MP-20260620-security-advisories-ubuntu-usn-batch-004.md`
- `/MEMORY/REPORTS/SECURITY_ADVISORIES/DR-20260620-security-advisories-loop-004-ubuntu-usn.md`
- `/MEMORY/STATE/CURSORS/security_advisories.md`

## Dedupe result

No CVE-only dedupe was performed. Ubuntu fixed-version scope is release/package-specific and may include Ubuntu Pro / ESM Apps or Legacy Support availability. Minimum dedupe key for later canonical review is:

`advisory-id`, `cve`, `package`, `ubuntu-release`, `fixed-package-version`, `publisher`, `source-url`, `canonical-id`.

## Validation

- markdown-links: static review only; no repository-relative broken links introduced in proposal/report.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each proposal record.
- affected-version-scope: limited to official Ubuntu advisory release/package/fixed-version fields.
- no-second-truth: proposal-only, no canonical SECURITY entry and no SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, proof-of-concept steps, package downloads, raw crawl dumps or binaries.
- rollback-ready: remove batch/report and restore previous `/MEMORY/STATE/CURSORS/security_advisories.md` cursor.

## Limitations

- This batch does not claim canonical CVE records were created.
- It does not generalize affected versions beyond Ubuntu advisory scope.
- It does not download or mirror Ubuntu packages.
- Ubuntu Pro / ESM Apps / Legacy Support notes are stored as limitations, not generic availability claims.
- `CHANGES.md` and navigation indexes were not updated because the requested write scope was limited to proposals, reports and cursors.

## Next cursor action

Continue with another publisher or an Ubuntu canonical-review pass only after duplicate checks against Ubuntu USN proposal records and upstream/vendor advisories.
