# MP-20260620-security-advisories-ubuntu-usn-batch-004

Version: 0.1.0
Status: PROPOSAL_READY_FOR_REVIEW
Family: SECURITY
Category: security-advisories
Publisher scope: Ubuntu Security Notices
Created: 2026-06-20
Updated: 2026-06-20
Review required: YES
Canonical promotion: NO
Batch id: DR-20260620-security-advisories-loop-004-ubuntu-usn
Previous cursor: mozilla_mfsa_2026_57_61_product_scope_proposal_ready
Requested artifact types: security-advisories, cves, vulnerability-notices

## Scope

This proposal batch captures five Ubuntu Security Notices as release/package-scoped advisory source records. It does not create canonical vulnerability records, SOURCE_REGISTRY imports, exploit notes, proof-of-concept details, package downloads, binaries, raw crawl dumps or rehosting artifacts.

## Publisher policy

Ubuntu Security Notices are official Canonical/Ubuntu advisory pages. Release applicability and package fixed versions are scoped exactly to each USN page. Ubuntu Pro / ESM / Legacy Support availability is recorded as a limitation where present and must not be generalized to non-Pro availability.

## Dedupe rule

Do not deduplicate by CVE alone. Ubuntu USNs may overlap with upstream/vendor advisories, package-specific notices, related notices and release-specific fixed package versions. The minimum dedupe key for this batch is:

`advisory-id`, `cve`, `package`, `ubuntu-release`, `fixed-package-version`, `publisher`, `source-url`, `canonical-id`.

## Capture fields

Each record uses:

`advisory_id`, `cve_ids`, `publisher`, `affected_product_scope`, `affected_versions`, `fixed_versions`, `official_url`, `source_class`, `retrieved_at`, `claim_supported`, `limitations`.

## Advisory source records

### 001 — USN-8452-1

- advisory_id: `USN-8452-1`
- cve_ids: `CVE-2025-6545`
- publisher: `Canonical Ubuntu Security Team`
- affected_product_scope: `Ubuntu package node-pbkdf2 on Ubuntu 24.04 LTS, 22.04 LTS, 20.04 LTS and 18.04 LTS as listed by the USN`
- affected_versions: `versions before the USN-listed fixed package versions; exact vulnerable range not expanded beyond Ubuntu's advisory text`
- fixed_versions: `24.04 LTS noble node-pbkdf2 3.1.2-3ubuntu0.1~esm1; 22.04 LTS jammy node-pbkdf2 3.1.2-2ubuntu0.1~esm1; 20.04 LTS focal node-pbkdf2 3.0.16-1ubuntu0.1~esm1; 18.04 LTS bionic node-pbkdf2 3.0.14-2ubuntu0.1~esm1`
- official_url: `https://ubuntu.com/security/notices/USN-8452-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Ubuntu USN-8452-1 states the advisory id, publication date, package, affected Ubuntu releases, CVE and fixed package versions.`
- limitations: `Fix availability is listed via Ubuntu Pro / ESM Apps on the advisory page; do not generalize to community-pocket availability without package-pocket review.`

### 002 — USN-8453-1

- advisory_id: `USN-8453-1`
- cve_ids: `CVE-2026-45191; CVE-2026-45190`
- publisher: `Canonical Ubuntu Security Team`
- affected_product_scope: `Ubuntu package libnet-cidr-lite-perl on Ubuntu 26.04 LTS, 25.10, 24.04 LTS, 22.04 LTS, 20.04 LTS, 18.04 LTS and 16.04 LTS as listed by the USN`
- affected_versions: `versions before the USN-listed fixed package versions; exact vulnerable range not expanded beyond Ubuntu's advisory text`
- fixed_versions: `26.04 LTS resolute libnet-cidr-lite-perl 0.22-2ubuntu0.26.04.2; 25.10 questing libnet-cidr-lite-perl 0.22-2ubuntu0.25.10.2; 24.04 LTS noble libnet-cidr-lite-perl 0.22-2ubuntu0.24.04.2; 22.04 LTS jammy libnet-cidr-lite-perl 0.22-1ubuntu0.2; 20.04 LTS focal libnet-cidr-lite-perl 0.21-2ubuntu0.1+esm2; 18.04 LTS bionic libnet-cidr-lite-perl 0.21-1ubuntu0.18.04.1~esm2; 16.04 LTS xenial libnet-cidr-lite-perl 0.21-1ubuntu0.16.04.1~esm2`
- official_url: `https://ubuntu.com/security/notices/USN-8453-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Ubuntu USN-8453-1 states the advisory id, publication date, package, affected Ubuntu releases, CVEs and fixed package versions.`
- limitations: `Some fixed versions are Ubuntu Pro / ESM-scoped; preserve release and pocket context during canonical review.`

### 003 — USN-8449-1

- advisory_id: `USN-8449-1`
- cve_ids: `CVE-2026-10846`
- publisher: `Canonical Ubuntu Security Team`
- affected_product_scope: `Ubuntu ldns packages on Ubuntu 26.04 LTS, 24.04 LTS, 22.04 LTS, 20.04 LTS, 18.04 LTS and 16.04 LTS as listed by the USN`
- affected_versions: `versions before the USN-listed fixed package versions; exact vulnerable range not expanded beyond Ubuntu's advisory text`
- fixed_versions: `26.04 LTS ldnsutils/libldns3t64 1.8.4-2ubuntu0.26.04.1~esm1; 24.04 LTS ldnsutils/libldns3t64 1.8.3-2ubuntu0.1~esm1; 22.04 LTS ldnsutils/libldns3 1.7.1-2ubuntu4+esm2; 20.04 LTS ldnsutils/libldns2 1.7.0-4.1ubuntu1+esm2; 18.04 LTS ldnsutils/libldns2 1.7.0-3ubuntu4.1+esm1; 16.04 LTS ldnsutils/libldns1 1.6.17-8ubuntu0.1+esm2`
- official_url: `https://ubuntu.com/security/notices/USN-8449-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Ubuntu USN-8449-1 states the advisory id, publication date, package, affected Ubuntu releases, CVE and fixed package versions.`
- limitations: `Package names differ by release; do not collapse ldnsutils/libldns package variants into one fixed package identity without release context. Some fixes are Ubuntu Pro / ESM Apps or Legacy Support scoped.`

### 004 — USN-8442-1

- advisory_id: `USN-8442-1`
- cve_ids: `CVE-2026-33642; CVE-2026-33633`
- publisher: `Canonical Ubuntu Security Team`
- affected_product_scope: `Ubuntu kitty and kitty-shell-integration packages on Ubuntu 26.04 LTS, 25.10, 24.04 LTS, 22.04 LTS and 20.04 LTS as listed by the USN`
- affected_versions: `versions before the USN-listed fixed package versions; exact vulnerable range not expanded beyond Ubuntu's advisory text`
- fixed_versions: `26.04 LTS kitty/kitty-shell-integration 0.45.0-1ubuntu0.1~esm1; 25.10 kitty/kitty-shell-integration 0.41.1-2+deb13u1build0.25.10.1; 24.04 LTS kitty/kitty-shell-integration 0.32.2-1ubuntu0.4+esm1; 22.04 LTS kitty 0.21.2-1ubuntu0.22.04.1+esm1; 20.04 LTS kitty 0.15.0-1ubuntu0.2+esm1`
- official_url: `https://ubuntu.com/security/notices/USN-8442-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Ubuntu USN-8442-1 states the advisory id, publication date, package, affected Ubuntu releases, CVEs and fixed package versions.`
- limitations: `Ubuntu says kitty should be restarted after update; that operational note is not a vulnerability claim and should stay advisory-scoped. Some fixes are Ubuntu Pro / ESM Apps scoped.`

### 005 — USN-8450-1

- advisory_id: `USN-8450-1`
- cve_ids: `CVE-2026-42498; CVE-2026-41293; CVE-2026-43515; CVE-2026-41284`
- publisher: `Canonical Ubuntu Security Team`
- affected_product_scope: `Ubuntu tomcat11 packages on Ubuntu 26.04 LTS as listed by the USN`
- affected_versions: `versions before the USN-listed fixed package versions; exact vulnerable range not expanded beyond Ubuntu's advisory text`
- fixed_versions: `26.04 LTS resolute libtomcat11-embed-java 11.0.18-1ubuntu0.1~esm1; libtomcat11-java 11.0.18-1ubuntu0.1~esm1; tomcat11 11.0.18-1ubuntu0.1~esm1`
- official_url: `https://ubuntu.com/security/notices/USN-8450-1`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Ubuntu USN-8450-1 states the advisory id, publication date, package, affected Ubuntu release, CVEs and fixed package versions.`
- limitations: `Tomcat upstream/advisory context and related USNs are not imported here; this proposal is Ubuntu-package scoped only. Ubuntu says Tomcat should be restarted after update; that operational note is advisory-scoped.`

## Validation notes

- markdown-links: repository-relative links intentionally avoided except later index references.
- json-yaml: no JSON/YAML data files added.
- source-records: requested capture fields present for each record.
- affected-version-scope: fixed versions are release/package scoped and limited to Ubuntu advisory fields.
- no-second-truth: proposal-only; no canonical SECURITY path or SOURCE_REGISTRY import.
- redaction: no secrets, credentials, customer data, serials, raw logs, exploit code, proof-of-concept steps, package downloads, raw crawl dumps or binaries.
- rollback: remove this file and associated report/cursor references.
