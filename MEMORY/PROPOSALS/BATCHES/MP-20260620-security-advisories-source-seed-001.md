# MP-20260620-security-advisories-source-seed-001

Version: 0.1.0
Status: RESEARCH_SEED
Family: SECURITY
Category: security-advisories
Created: 2026-06-20
Updated: 2026-06-20
Review required: YES
Canonical promotion: NO
Batch id: DR-20260620-security-advisories-loop-001
Resume cursor: MEMORY cursor: security_advisories
Requested artifact types: security-advisories, cves, vulnerability-notices, psirts

## Scope

This proposal batch seeds official or near-official advisory sources for a later advisory-level ingest loop. It does not create canonical vulnerability records and does not assert affected/fixed version scope beyond what each listed publisher publishes in its own advisory data.

## Policy guards

- Proposal-first: all entries here are source-record candidates only.
- No second truth: advisory facts must later live in a single canonical SECURITY record or a reviewed source record, not in indexes.
- No raw crawl dumps: only minimal source metadata is stored.
- Security claims require official vendor/advisory source where possible.
- Aggregator data can support discovery and CVE correlation, but product-specific affected/fixed scope should prefer the vendor or project advisory when available.
- No exploit instructions, no weaponization, no proof-of-concept reproduction, no binaries, no rehosting.

## Capture fields

Each candidate is normalized to:

`advisory_id`, `cve_ids`, `publisher`, `affected_product_scope`, `affected_versions`, `fixed_versions`, `official_url`, `source_class`, `retrieved_at`, `claim_supported`, `limitations`.

## Source-record candidates

### 001 — CISA KEV Catalog

- advisory_id: `source_feed::cisa-kev`
- cve_ids: `not captured in this source-seed batch`
- publisher: `CISA`
- affected_product_scope: `Known exploited vulnerabilities; product/vendor values supplied per KEV entry`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level; remediation is entry-specific`
- official_url: `https://www.cisa.gov/known-exploited-vulnerabilities-catalog`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- retrieved_at: `2026-06-20`
- claim_supported: `Discovery source for known exploited vulnerability prioritization; exact product/version remediation still requires per-entry and preferably vendor evidence.`
- limitations: `The main page returned access-limited fetch behavior during review; search results and CISA alert pages confirmed KEV catalog existence, but this seed does not mirror catalog rows.`

### 002 — NVD CVE API / data feeds

- advisory_id: `source_feed::nist-nvd`
- cve_ids: `not captured in this source-seed batch`
- publisher: `NIST National Vulnerability Database`
- affected_product_scope: `CVE records and CPE/product metadata where available`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://nvd.nist.gov/vuln/data-feeds`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- retrieved_at: `2026-06-20`
- claim_supported: `NVD provides CVE/CPE APIs and data feeds for vulnerability data synchronization.`
- limitations: `NVD can lag or contain incomplete vendor/product/version mappings; do not override vendor advisories without explanation.`

### 003 — GitHub Advisory Database

- advisory_id: `source_feed::github-advisory-database`
- cve_ids: `not captured in this source-seed batch`
- publisher: `GitHub`
- affected_product_scope: `Open source packages and repository/global advisories`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://github.com/advisories`
- source_class: `B_OFFICIAL_PROJECT_OR_STANDARD`
- retrieved_at: `2026-06-20`
- claim_supported: `GitHub Advisory Database publishes GHSA/CVE advisories and supports advisory discovery.`
- limitations: `Imported CVEs and ecosystem mappings require review; project/vendor advisory remains preferred when available.`

### 004 — Microsoft Security Update Guide / MSRC

- advisory_id: `source_feed::msrc-security-update-guide`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Microsoft Security Response Center`
- affected_product_scope: `Microsoft products and services`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://msrc.microsoft.com/update-guide/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `MSRC publishes Microsoft security update details and CVE/advisory access paths.`
- limitations: `Monthly release and product tables must be parsed per CVE/advisory; no broad claims from source page alone.`

### 005 — Cisco Security Advisories / PSIRT

- advisory_id: `source_feed::cisco-psirt`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Cisco PSIRT`
- affected_product_scope: `Cisco products and services`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://sec.cloudapps.cisco.com/security/center/publicationListing.x`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Cisco publishes security advisories for Cisco products and services.`
- limitations: `Use only advisory-documented affected/fixed release data; Cisco policy limits validation to advisory content.`

### 006 — Fortinet PSIRT Advisories

- advisory_id: `source_feed::fortinet-psirt`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Fortinet PSIRT`
- affected_product_scope: `Fortinet products and services`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://www.fortiguard.com/psirt`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Fortinet PSIRT lists advisories for issues in Fortinet products.`
- limitations: `Affected/fixed version scope must be read from each Fortinet advisory.`

### 007 — Red Hat Security Advisories

- advisory_id: `source_feed::redhat-rhsa`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Red Hat`
- affected_product_scope: `Red Hat products and services`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://access.redhat.com/security/security-updates/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Red Hat publishes security advisories and related CVE/security update information.`
- limitations: `Subscription/product lifecycle context may affect applicability; parse per RHSA/CVE.`

### 008 — Ubuntu Security Notices

- advisory_id: `source_feed::ubuntu-usn`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Canonical Ubuntu Security Team`
- affected_product_scope: `Ubuntu packages and releases`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://ubuntu.com/security/notices`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Ubuntu Security Notices publish Ubuntu package security notices by release/package context.`
- limitations: `Release-specific package versions must be parsed per USN.`

### 009 — Debian Security Tracker / DSAs

- advisory_id: `source_feed::debian-security`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Debian Security Team`
- affected_product_scope: `Debian packages, DSAs, DLAs and CVE tracker entries`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://www.debian.org/security/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Debian publishes security advisories and related security information.`
- limitations: `Package/release state must be resolved per Debian release and advisory/tracker entry.`

### 010 — Mozilla Foundation Security Advisories

- advisory_id: `source_feed::mozilla-mfsa`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Mozilla`
- affected_product_scope: `Mozilla products`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://www.mozilla.org/en-US/security/advisories/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Mozilla publishes Foundation Security Advisories and product vulnerability listings.`
- limitations: `Affected/fixed versions must be taken from each MFSA/product advisory.`

### 011 — Apple Security Releases

- advisory_id: `source_feed::apple-security-releases`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Apple`
- affected_product_scope: `Apple software and security releases`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://support.apple.com/en-us/100100`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Apple security releases page lists Apple releases with security advisory context and CVE details where available.`
- limitations: `Apple may withhold details until investigation and release; parse exact product/version page per release.`

### 012 — Android Security Bulletins

- advisory_id: `source_feed::android-security-bulletins`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Android Open Source Project / Google`
- affected_product_scope: `Android platform and device security bulletins`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://source.android.com/docs/security/bulletin`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Android Security and Update Bulletins publish Android security bulletin information.`
- limitations: `OEM/device applicability and patch level must be resolved per bulletin and vendor implementation.`

### 013 — Chrome Releases

- advisory_id: `source_feed::chrome-releases`
- cve_ids: `not captured in this source-seed batch`
- publisher: `Google Chrome Releases`
- affected_product_scope: `Chrome and ChromeOS release/security updates`
- affected_versions: `not captured at source-seed level`
- fixed_versions: `not captured at source-seed level`
- official_url: `https://chromereleases.googleblog.com/`
- source_class: `A_PRIMARY_OFFICIAL_VENDOR`
- retrieved_at: `2026-06-20`
- claim_supported: `Chrome Releases publishes Chrome and related channel release/security update posts.`
- limitations: `Security fix details can be delayed or restricted; parse per release post.`

## Dedupe keys for later advisory-level ingest

`advisory-id`, `cve`, `product`, `version-range`, `publisher`, `source-url`, `canonical-id`.

## Validation notes

- Markdown structure: static review only.
- JSON/YAML: no JSON/YAML data blocks added.
- Source records: proposal-only source-record candidates; no canonical SOURCE_REGISTRY entries.
- Affected-version scope: intentionally not asserted at source-seed level.
- No second truth: indexes only point to this batch/report.
- Redaction: no secrets, credentials, customer data, serials, raw logs, exploit code or raw crawl dumps.
- Rollback: remove this file, remove index entries, remove report, restore previous cursor and changelog.
