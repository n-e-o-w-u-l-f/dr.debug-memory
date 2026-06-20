# Batch 004 Group A source review 001 — Supermicro, Fujitsu, Framework Computer

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: `DR_DEBUG_ADMIN=TRUE DRDEBUG_OWNER_ADMIN=TRUE !dd memory review manufacturers --repo "n-e-o-w-u-l-f/dr.debug-memory" --target "Batch-004 Group-A source review: Supermicro, Fujitsu, Framework Computer" --reason "Erste Batch-004-Dreiergruppe gegen kanonische Herstellerdatei und offizielle Quellen prüfen; nur Review-Notiz anlegen, keine Canonical-Promotion" --apply`
Created: 2026-06-20
Family: MANUFACTURERS
Batch source: `MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_REVIEW_QUEUE_FROM_EXISTING_PROPOSALS.md`
Risk: LOW
Data-loss-risk: NONE
Write scope: proposal/source-review note only
Canonical records changed: 0
Source registry records changed: 0
Binary/download/rehosting actions: 0
Redaction: no secrets, account data, personal data, serials, raw logs or raw crawl dumps included

## Decision

Create a small, reviewable source-review note for the first three Group-A candidates.

This file does not promote any candidate to `CANONICAL` and does not create source-registry entries. It records official-source evidence and remaining review requirements for later owner review.

## Shared gates

- Official vendor source priority applied.
- Alias and acquisition conflicts must remain explicit; no second truth is created.
- Firmware, BIOS, BMC, driver, installer and management-tool URLs are source metadata only.
- No file was downloaded, mirrored, hashed or rehosted by this run.
- Before any later canonical write, run exact repository-wide duplicate search across canonical names, normalized names, aliases, domains, source URLs and relationship notes.

## Candidate 1 — Supermicro

```yaml
canonical_name_candidate: Supermicro
aliases:
  - Super Micro Computer, Inc.
official_home: https://www.supermicro.com/
support_url: https://www.supermicro.com/en/support
downloads_url: https://www.supermicro.com/en/support/resources/downloadcenter/swdownload
manuals_url: https://www.supermicro.com/support/manuals
security_url: https://www.supermicro.com/en/support/security_center
firmware_url: https://www.supermicro.com/support/resources/bios_ipmi.php?type=BIOS
regions:
  - global
source_status: official_vendor_sources_found
confidence: HIGH_FOR_SOURCE_IDENTITY
retrieved_at: 2026-06-20
validation_status: SOURCE_CONFIRMED_FOR_REVIEW_NOT_CANONICAL
review_required: true
limitations:
  - Firmware/BIOS/BMC pages are product/model-specific and high-risk binary pointers only.
  - No binary download, checksum validation or model-specific compatibility review was performed.
  - Canonical promotion still requires full repo-wide duplicate and alias search.
```

Evidence notes:

- Official support page exposes Technical Support, Resources & Downloads, Management Software Download, Manuals and Security Center navigation.
- Official support page describes Download Center scope as BIOS, BMC, drivers, management software downloads and license information.
- Official Security Center describes itself as the established source for product security updates and information from Supermicro.

Review result: `PROPOSAL_READY_FOR_REVIEW`; not canonical-ready.

## Candidate 2 — Fujitsu

```yaml
canonical_name_candidate: Fujitsu
aliases:
  - Fujitsu Limited
  - Fsas Technologies and Fujitsu computer systems
  - Fujitsu computing product support portal
official_home: https://global.fujitsu/
support_url: https://global.fujitsu/en-us/support
downloads_url: https://support.ts.fujitsu.com/indexdownload.asp?lng=de
manuals_url: null
security_url: https://support.ts.fujitsu.com/IndexProdSecurity.asp
firmware_url: https://support.ts.fujitsu.com/indexdownload.asp
regions:
  - global
  - US
  - EMEA
source_status: official_vendor_sources_found_with_routing_limitations
confidence: HIGH_FOR_SOURCE_IDENTITY
retrieved_at: 2026-06-20
validation_status: SOURCE_CONFIRMED_FOR_REVIEW_NOT_CANONICAL
review_required: true
limitations:
  - Fujitsu computing product support routes through region/language-specific support portals.
  - The German download page identifies FSAS Technologies and Fujitsu computer systems and requires JavaScript for some interactive selection features.
  - Manual URL should be resolved per product family/model before canonical source-registry use.
  - Canonical promotion still requires full repo-wide duplicate and alias search.
```

Evidence notes:

- Fujitsu support states that core computing products, including LIFEBOOK, STYLISTIC, PRIMERGY and ETERNUS, are supported via a central portal and that drivers, software updates and downloads are available there.
- The German download page states that current drivers and software updates are available for the system, and that drivers, BIOS versions and software updates for FSAS Technologies and Fujitsu computer systems can be downloaded there.
- The same download page identifies the product-security area as the place for security advisories and notices handled by FSAS Technologies PSIRT.

Review result: `PROPOSAL_READY_FOR_REVIEW_WITH_ROUTING_LIMITATION`; not canonical-ready.

## Candidate 3 — Framework Computer

```yaml
canonical_name_candidate: Framework Computer
aliases:
  - Framework
  - Framework Laptop
  - Framework Desktop
official_home: https://frame.work/
support_url: https://frame.work/support
downloads_url: https://knowledgebase.frame.work/bios-and-drivers-downloads-rJ3PaCexh
manuals_url: https://frame.work/support
security_url: null
firmware_url: https://knowledgebase.frame.work/bios-and-drivers-downloads-rJ3PaCexh
regions:
  - global availability varies by shipping region
source_status: official_vendor_sources_found_with_security_url_gap
confidence: HIGH_FOR_SOURCE_IDENTITY
retrieved_at: 2026-06-20
validation_status: SOURCE_CONFIRMED_FOR_REVIEW_NOT_CANONICAL
review_required: true
limitations:
  - A single central Framework security/advisory URL was not confirmed in this review.
  - BIOS and driver bundle pages are model/generation-specific and high-risk binary pointers only.
  - Framework availability varies by country/region; region scope should remain explicit if used later.
  - Canonical promotion still requires full repo-wide duplicate and alias search.
```

Evidence notes:

- Framework support page exposes Knowledge Base support resources and contact/support routing.
- Framework site navigation exposes Downloads and guides for Framework Desktop, Framework Laptop 12, Laptop 13 and Laptop 16, plus Knowledge Base, Community Forum and Contact Support.
- Framework Knowledge Base BIOS/driver page describes latest official BIOS releases and Driver Bundles for each generation of Framework devices.

Review result: `PROPOSAL_READY_FOR_REVIEW_WITH_SECURITY_URL_GAP`; not canonical-ready.

## Dedupe status

Preliminary duplicate status for this checkpoint:

- No canonical manufacturer record was changed.
- No source-registry record was changed.
- No duplicate record was created by this file because it is a review note only.
- Batch-004 review still requires exact authenticated repo-wide search before promotion.

Required later duplicate keys:

- exact canonical_name
- normalized name
- alias spelling variants
- official_home domain
- support/download/manual/security/firmware URLs
- relationship/acquisition notes
- source registry URLs
- existing proposal IDs

## Promotion blockers

Do not promote these three candidates to canonical from this checkpoint alone.

Remaining blockers:

1. Full repository-wide duplicate search not completed in this apply step.
2. Source registry records not created or validated.
3. Reviewer attribution for canonical promotion not recorded.
4. Fujitsu manual/product-family routing requires model/family scoping.
5. Framework central security/advisory URL remains unconfirmed.
6. BIOS/firmware/driver URLs remain high-risk binary pointers only.

## Validation performed

- Owner/Admin gate: passed.
- GitHub repository status: passed.
- Official-source web review: performed for the three candidates.
- Redaction check: passed.
- Data-loss classification: NONE.
- Canonical records changed: 0.
- Source registry records changed: 0.
- Downloads/rehosting/binary actions: 0.

## Rollback

Delete this single file:

`MEMORY/PROPOSALS/MANUFACTURERS/BATCH_004_GROUP_A_SOURCE_REVIEW_001_SUPERMICRO_FUJITSU_FRAMEWORK.md`

No canonical manufacturer records, source registry records, indexes, binaries or external archives are changed by this checkpoint.

## Next safe step

Review the next Group-A subgroup separately: `System76`, `Getac`, `Advantech`.
