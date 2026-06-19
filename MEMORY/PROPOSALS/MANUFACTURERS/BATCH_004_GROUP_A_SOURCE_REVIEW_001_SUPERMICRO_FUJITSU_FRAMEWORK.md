# Batch 004 Group A source review 001 — Supermicro, Fujitsu, Framework Computer

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: `DR_DEBUG_ADMIN=TRUE DRDEBUG_OWNER_ADMIN=TRUE !dd memory review manufacturers --repo "n-e-o-w-u-l-f/dr.debug-memory" --target "Batch-004 Group-A source review: Supermicro, Fujitsu, Framework Computer" --reason "Erste Batch-004-Dreiergruppe gegen kanonische Herstellerdatei und offizielle Quellen prüfen; nur Review-Notiz anlegen, keine Canonical-Promotion" --apply`
Created: 2026-06-20
Family: MANUFACTURERS
Risk: LOW
Data-loss-risk: NONE
Write scope: proposal/source-review note only
Canonical records changed: 0
Source registry records changed: 0
Binary/download/rehosting actions: 0
Redaction: no secrets, account data, personal data, serials, raw logs or raw crawl dumps included

## Purpose

Review the first three Batch-004 Group-A manufacturer candidates against the current canonical manufacturer file and official vendor source pages.

This file is a review note only. It does not promote any candidate to `CANONICAL`, does not change `manufacturers.jsonl`, and does not modify `SOURCE_REGISTRY.md`.

## Inputs checked

- `/MEMORY/MANUFACTURERS/manufacturers.jsonl`
- `/MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_REVIEW_QUEUE_FROM_EXISTING_PROPOSALS.md`
- `/MEMORY/PROPOSALS/MANUFACTURERS/PROMOTION_QUEUE_BATCH_003.md`
- Official vendor home/support/download/security pages listed below

## Policy gates applied

- Official vendor source priority
- Dedupe before second truth
- Alias and acquisition review before promotion
- No raw crawl dumps
- No binary downloads
- No firmware, BIOS, driver or installer rehosting
- Source URLs are metadata pointers only
- Canonical promotion requires a separate reviewed write

## Batch-004 context

The Batch-004 queue identifies Group A as a small first review set and states that these entries are not canonical-ready yet; they are ready only for focused source-record review, alias check and final duplicate search.

The Batch-003 promotion queue marks the three candidates as follows:

| Candidate | Existing queue status | Queue note |
|---|---|---|
| Supermicro | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| Fujitsu | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |
| Framework Computer | SOURCE_RECORD_READY_REVIEW_REQUIRED | source-record template generated; still needs reviewer validation |

## Visible canonical duplicate pre-check

Searches against the visible current `manufacturers.jsonl` found no exact text match for:

- `Supermicro`
- `Fujitsu`
- `Framework`

This is only a visible-file pre-check. It is not a full repository-wide grep and not sufficient for canonical promotion by itself.

## Candidate review notes

### 1. Supermicro

Proposed canonical name candidate: `Supermicro`

Observed official-source pointers:

- official_home: `https://www.supermicro.com/en/`
- support_url: `https://www.supermicro.com/en/support`
- downloads_url: `https://www.supermicro.com/en/support/resources/downloadcenter/swdownload`
- firmware_or_bios_lookup_url: `https://www.supermicro.com/support/resources/bios_ipmi.php`
- security_url: `https://www.supermicro.com/en/support/security_center`

Source review:

- Official home and support navigation identify support, FAQs, Security Center, technical support, resources/downloads, management software downloads and manuals.
- The Security Center describes itself as the source for Supermicro product security updates and information.
- Firmware/BIOS/BMC download pages are high-risk source metadata only. No binary was downloaded, mirrored, hashed or rehosted in this review.

Alias/dedupe notes:

- Potential aliases to check before promotion: `Super Micro Computer`, `Super Micro Computer, Inc.`, `Supermicro Computer`.
- No exact visible canonical match found in current `manufacturers.jsonl` during this review.

Review result:

`PROPOSAL_READY_FOR_REVIEW` with official vendor source support. Candidate can move to a future one-record canonical review only after full repo-wide duplicate search and reviewer approval.

### 2. Fujitsu

Proposed canonical name candidate: `Fujitsu`

Observed official-source pointers:

- official_home: `https://global.fujitsu/`
- support_url: `https://global.fujitsu/en-global/support`
- downloads_url: `https://support.ts.fujitsu.com/indexDownload.asp?lng=en`
- product_security_url: `https://support.eu.fsastech.com/IndexProdSecurity.asp?lng=eu`
- regional_support_note: Fujitsu support is country/region-specific and some computing-product downloads/security pages are served under Fsas Technologies/Fujitsu support domains.

Source review:

- Fujitsu global support states that core computing product support is country specific and includes notebooks, tablets, PCs, ScanSnap, PRIMERGY servers, ETERNUS storage and printers.
- The Fujitsu/Fsas downloads page states that available drivers, BIOS versions and software updates for Fsas Technologies and Fujitsu computer systems can be downloaded there.
- The Fsas/Fujitsu product security page states that the PSIRT is the Fujitsu entity responsible for product-specific IT security and handles known vulnerabilities and security issues through advisories/notices.

Alias/dedupe notes:

- Potential aliases/scopes to review before promotion: `Fujitsu Limited`, `Fujitsu Technology Solutions`, `Fsas Technologies`, `PRIMERGY`, `ETERNUS`, `LIFEBOOK`, `STYLISTIC`, `ESPRIMO`, `CELSIUS`.
- Product-line names must remain aliases/product scopes unless the repository later creates separate canonical entities with evidence.
- No exact visible canonical match found in current `manufacturers.jsonl` during this review.

Review result:

`PROPOSAL_READY_FOR_REVIEW` with official vendor support, but with a support-routing limitation: record must document region-specific support and Fsas/Fujitsu domain routing before any canonical promotion.

### 3. Framework Computer

Proposed canonical name candidate: `Framework Computer`

Observed official-source pointers:

- official_home: `https://frame.work/`
- support_url: `https://frame.work/support`
- knowledgebase_bios_drivers_url: `https://knowledgebase.frame.work/bios-and-drivers-downloads-rJ3PaCexh`
- release_example_url: `https://knowledgebase.frame.work/framework-laptop-bios-and-driver-releases-13th-gen-intel-core-BkQBvKWr3`

Source review:

- Framework has official support and Knowledge Base resources.
- The BIOS and Drivers Downloads Knowledge Base page states that it links the latest official BIOS releases and driver bundles for each generation of Framework devices.
- Framework release pages are model/generation-specific and include BIOS/driver bundle download references and security-update notes where applicable.
- A single central product-security/advisory center was not confirmed in this review. Security information appears to be release-note scoped in the reviewed official sources.

Alias/dedupe notes:

- Potential aliases to check before promotion: `Framework`, `Framework Laptop`, `Framework Computer Inc.`
- Product names such as `Framework Laptop 13`, `Framework Laptop 16`, `Framework Desktop` and `Framework Laptop 12` should remain product scopes, not separate manufacturer records.
- No exact visible canonical match found in current `manufacturers.jsonl` during this review.

Review result:

`PROPOSAL_READY_FOR_REVIEW` with official vendor support and download evidence. Before canonical promotion, document the security-source limitation as either release-note-scoped security evidence or add an official central security/advisory URL if one is found.

## Decision

Do not promote these candidates in this run.

Recommended next action:

1. Run full repository-wide duplicate search for Supermicro only.
2. If clean, create a one-record canonical promotion proposal or source-registry update for Supermicro.
3. Repeat for Fujitsu and Framework Computer separately after their support-routing/security limitations are reviewed.

## Validation performed for this checkpoint

- Owner/Admin mode gate: passed.
- Repository status check: passed.
- Existing Batch-004 and Batch-003 queue context reviewed.
- Visible canonical duplicate pre-check performed for the three exact names.
- Official source review performed for the three candidates.
- Redaction check: passed.
- Data-loss classification: NONE.
- No canonical data changed.
- No source registry data changed.
- No binaries, downloads, archive uploads or rehosting actions performed.

## Rollback

Delete this single file:

`MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_GROUP_A_SOURCE_REVIEW_001_SUPERMICRO_FUJITSU_FRAMEWORK.md`

No canonical manufacturer records, source registry records, indexes or binary artifacts are changed by this checkpoint.

## Open risks

- Visible raw-file search is not a full repository grep.
- Vendor pages can change, redirect by region or render parts through scripts; later promotion should re-check sources at review time.
- Firmware, BIOS and driver links are high-risk source metadata only and must not be treated as validated safe binaries.
- Framework's central security/advisory source remains unconfirmed in this review.
