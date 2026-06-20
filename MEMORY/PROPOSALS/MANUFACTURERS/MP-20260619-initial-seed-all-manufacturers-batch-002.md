---
proposal_id: MP-20260619-INITIAL-SEED-ALL-MANUFACTURERS-BATCH-002
family: memory_proposal
knowledge_class: RESEARCHED
status_suggestion: RESEARCH_SEED
requested_command: "DRDEBUG_OWNER_ADMIN=TRUE !dd memory ingest manufacturers --batch-id initial-seed-all-manufacturers-batch-002 --apply"
ingest_scope: initial_seed_all_manufacturers
resume_from: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-initial-seed-all-manufacturers-batch-001.md
batch_id: initial-seed-all-manufacturers-batch-002
source_scope: official_sources_only
seed_categories:
  - automotive_diagnostic_devices
  - medical_consumer_devices
  - industrial_pc
  - radio_iot
  - monitor_display
  - regional_oems
output: MEMORY_PROPOSAL
write_mode: proposal_only
batch_mode: resumable
batch_size_requested: 25
entries_count: 25
created_at: 2026-06-19
retrieved_at: 2026-06-19
confidence: MEDIUM
source_status: OFFICIAL_SOURCE_SEED_URLS
validation_status: SOURCE_REVIEW_PARTIAL
review_required: true
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-initial-seed-all-manufacturers-batch-002.md
proposed_canonical_path: /MEMORY/MANUFACTURERS/
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data, raw logs or raw crawl dumps included
directive_override_used: false
changelog_note: CHANGES.md was not overwritten in this apply because the raw fetch of CHANGES.md appeared stale versus prior write history; this proposal carries its own audit/changelog section to avoid data loss.
---

# MEMORY_PROPOSAL: Initial seed all manufacturers batch 002

## Scope

Second broad manufacturer discovery seed across automotive diagnostics, medical/consumer devices, industrial PCs, radio/IoT, monitor/display and regional OEM categories. This file is proposal-only and does not promote any manufacturer record to canonical status.

This batch resumes from `MP-20260619-initial-seed-all-manufacturers-batch-001.md` and avoids known batch-001 candidates such as Cisco, TP-Link, NETGEAR, Ubiquiti, MikroTik, Synology, QNAP, Brother, Epson, Canon, Ricoh, Xerox, Kyocera Document Solutions, Lexmark, Zebra Technologies, Apple, Google, OnePlus, Fairphone, Raspberry Pi, Arduino, Espressif, Sony, LG Electronics and D-Link.

## Gates applied

- Official sources only.
- Repository-wide dedupe requested before later promotion.
- Aliases point to canonical records; aliases must not create second truths.
- Conflicts produce review notes instead of silent merge.
- No login bypass.
- No paywall bypass.
- No raw crawl dumps.
- No binary downloads.
- No rehosting.
- No canonical promotion.
- Review required before promotion.
- Directive rewrite was not needed for this batch.

## Batch-level validation notes

- Seed-level duplicate check was performed within this batch by normalized candidate name and official home domain.
- Full repository-wide duplicate search is still required before any canonical promotion.
- Official URLs were spot-checked where tool access allowed; some pages redirected or failed tool parsing and are marked lower confidence.
- Firmware, driver and download URLs are references only. They do not imply compatibility, safety, entitlement or rehosting permission.

## Manufacturer candidates

```yaml
manufacturer_candidates:
  - canonical_name_candidate: Bosch Diagnostics
    aliases: [Robert Bosch GmbH, Bosch Automotive Service Solutions]
    official_home: https://www.boschdiagnostics.com/
    support_url: https://www.boschdiagnostics.com/support
    downloads_url: https://www.boschdiagnostics.com/downloads
    manuals_url: https://www.boschdiagnostics.com/downloads
    security_url: https://www.bosch.com/product-security/
    firmware_url: https://www.boschdiagnostics.com/downloads
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, vehicle_service_tools]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Bosch corporate and diagnostics support domains require product-line review before canonical promotion.

  - canonical_name_candidate: Autel
    aliases: [Autel Intelligent Technology]
    official_home: https://www.autel.com/
    support_url: https://www.autel.com/support/
    downloads_url: https://www.autel.com/download/
    manuals_url: https://www.autel.com/support/
    security_url: https://www.autel.com/support/
    firmware_url: https://www.autel.com/download/
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, vehicle_service_tools]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Model-specific update tools and subscriptions may apply; no login or entitlement bypass.

  - canonical_name_candidate: LAUNCH Tech
    aliases: [LAUNCH, Launch Tech Co., Ltd.]
    official_home: https://www.cnlaunch.com/
    support_url: https://www.cnlaunch.com/support/
    downloads_url: https://www.cnlaunch.com/download/
    manuals_url: https://www.cnlaunch.com/support/
    security_url: UNKNOWN
    firmware_url: https://www.cnlaunch.com/download/
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, vehicle_service_tools]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Official regional domains and product-line split require review before promotion.

  - canonical_name_candidate: Snap-on Diagnostics
    aliases: [Snap-on, Snap-on Incorporated]
    official_home: https://www.snapon.com/
    support_url: https://www.snapon.com/Diagnostics/US/Support
    downloads_url: https://www.snapon.com/Diagnostics/US/Software-Updates
    manuals_url: https://www.snapon.com/Diagnostics/US/User-Manuals
    security_url: https://www.snapon.com/
    firmware_url: https://www.snapon.com/Diagnostics/US/Software-Updates
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, vehicle_service_tools]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Diagnostics subsite and regional support must be reviewed for exact product scope.

  - canonical_name_candidate: TEXA
    aliases: [TEXA S.p.A.]
    official_home: https://www.texa.com/
    support_url: https://www.texa.com/support/
    downloads_url: https://www.texa.com/download/
    manuals_url: https://www.texa.com/support/
    security_url: UNKNOWN
    firmware_url: https://www.texa.com/download/
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, vehicle_service_tools]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Support/download routes require source retry before promotion.

  - canonical_name_candidate: TOPDON
    aliases: [TOPDON Technology]
    official_home: https://www.topdon.com/
    support_url: https://www.topdon.com/pages/support
    downloads_url: https://www.topdon.com/pages/download
    manuals_url: https://www.topdon.com/pages/support
    security_url: UNKNOWN
    firmware_url: https://www.topdon.com/pages/download
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, battery_tools]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Shopify-style route and product-specific download links require review.

  - canonical_name_candidate: Innova Electronics
    aliases: [Innova, RepairSolutions]
    official_home: https://www.innova.com/
    support_url: https://www.innova.com/pages/support
    downloads_url: https://www.innova.com/pages/downloads
    manuals_url: https://www.innova.com/pages/manuals
    security_url: UNKNOWN
    firmware_url: https://www.innova.com/pages/downloads
    regions: [global, regional_review_required]
    categories: [automotive_diagnostic_devices, consumer_vehicle_tools]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Support URL patterns require review against current official navigation.

  - canonical_name_candidate: Omron Healthcare
    aliases: [OMRON, Omron Healthcare Co., Ltd.]
    official_home: https://www.omron-healthcare.com/
    support_url: https://www.omron-healthcare.com/support
    downloads_url: https://www.omron-healthcare.com/support
    manuals_url: https://www.omron-healthcare.com/support
    security_url: https://www.omron-healthcare.com/
    firmware_url: UNKNOWN
    regions: [global, regional_review_required]
    categories: [medical_consumer_devices, health_monitoring]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Medical device regulatory scope and regional documents require review; no clinical advice implied.

  - canonical_name_candidate: Withings
    aliases: [Withings Health Solutions]
    official_home: https://www.withings.com/
    support_url: https://support.withings.com/
    downloads_url: https://support.withings.com/
    manuals_url: https://support.withings.com/
    security_url: https://www.withings.com/security
    firmware_url: https://support.withings.com/
    regions: [global, regional_review_required]
    categories: [medical_consumer_devices, wearable, smart_home]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Health data/privacy and app-version-specific claims require review.

  - canonical_name_candidate: Beurer
    aliases: [Beurer GmbH]
    official_home: https://www.beurer.com/
    support_url: https://www.beurer.com/web/we-are-here-for-you/service/
    downloads_url: https://www.beurer.com/web/we-are-here-for-you/service/downloads.php
    manuals_url: https://www.beurer.com/web/we-are-here-for-you/service/downloads.php
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global, regional_review_required]
    categories: [medical_consumer_devices, wellness_devices]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Regional site structure and exact device category must be reviewed.

  - canonical_name_candidate: iHealth Labs
    aliases: [iHealth]
    official_home: https://ihealthlabs.com/
    support_url: https://ihealthlabs.com/pages/support
    downloads_url: https://ihealthlabs.com/pages/support
    manuals_url: https://ihealthlabs.com/pages/support
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global, regional_review_required]
    categories: [medical_consumer_devices, health_monitoring]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Health data/privacy and app support require source review.

  - canonical_name_candidate: ResMed
    aliases: [ResMed Inc.]
    official_home: https://www.resmed.com/
    support_url: https://www.resmed.com/en-us/support/
    downloads_url: https://www.resmed.com/en-us/support/
    manuals_url: https://www.resmed.com/en-us/support/
    security_url: https://www.resmed.com/en-us/security/
    firmware_url: UNKNOWN
    regions: [global, regional_review_required]
    categories: [medical_consumer_devices, respiratory_devices]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Medical devices require strict no-medical-advice scope and regional regulatory review.

  - canonical_name_candidate: Advantech
    aliases: [Advantech Co., Ltd.]
    official_home: https://www.advantech.com/
    support_url: https://www.advantech.com/support
    downloads_url: https://www.advantech.com/support/downloads
    manuals_url: https://www.advantech.com/support
    security_url: https://www.advantech.com/security
    firmware_url: https://www.advantech.com/support/downloads
    regions: [global, regional_review_required]
    categories: [industrial_pc, embedded_sbc, industrial_iot]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region redirect observed; exact product family required.

  - canonical_name_candidate: Kontron
    aliases: [Kontron AG]
    official_home: https://www.kontron.com/
    support_url: https://www.kontron.com/en/support
    downloads_url: https://www.kontron.com/en/support/downloads
    manuals_url: https://www.kontron.com/en/support
    security_url: https://www.kontron.com/en/support/security
    firmware_url: https://www.kontron.com/en/support/downloads
    regions: [global, regional_review_required]
    categories: [industrial_pc, embedded_sbc, industrial_iot]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Exact board/system family required before driver/firmware records.

  - canonical_name_candidate: AAEON
    aliases: [AAEON Technology Inc.]
    official_home: https://www.aaeon.com/
    support_url: https://www.aaeon.com/en/support
    downloads_url: https://www.aaeon.com/en/downloads
    manuals_url: https://www.aaeon.com/en/support
    security_url: UNKNOWN
    firmware_url: https://www.aaeon.com/en/downloads
    regions: [global, regional_review_required]
    categories: [industrial_pc, embedded_sbc, industrial_iot]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: URL patterns require source retry before promotion.

  - canonical_name_candidate: OnLogic
    aliases: [OnLogic Inc., Logic Supply]
    official_home: https://www.onlogic.com/
    support_url: https://www.onlogic.com/company/support/
    downloads_url: https://www.onlogic.com/company/support/
    manuals_url: https://www.onlogic.com/company/support/
    security_url: https://www.onlogic.com/company/support/
    firmware_url: https://www.onlogic.com/company/support/
    regions: [global, regional_review_required]
    categories: [industrial_pc, embedded_systems, edge_computing]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Some support resources may be model-specific or account-scoped.

  - canonical_name_candidate: Getac
    aliases: [Getac Technology Corporation]
    official_home: https://www.getac.com/
    support_url: https://www.getac.com/support/
    downloads_url: https://www.getac.com/support/downloads/
    manuals_url: https://www.getac.com/support/
    security_url: https://www.getac.com/support/
    firmware_url: https://www.getac.com/support/downloads/
    regions: [global, regional_review_required]
    categories: [industrial_pc, rugged_notebook, regional_oems]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region redirect observed; exact rugged model required.

  - canonical_name_candidate: Quectel
    aliases: [Quectel Wireless Solutions]
    official_home: https://www.quectel.com/
    support_url: https://www.quectel.com/support/
    downloads_url: https://www.quectel.com/download-zone/
    manuals_url: https://www.quectel.com/download-zone/
    security_url: https://www.quectel.com/support/
    firmware_url: https://www.quectel.com/download-zone/
    regions: [global, regional_review_required]
    categories: [radio_iot, cellular_modules, industrial_iot]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Download zone may require account/permissions for some assets; no bypass.

  - canonical_name_candidate: Teltonika Networks
    aliases: [Teltonika, Teltonika IoT Group]
    official_home: https://teltonika-networks.com/
    support_url: https://wiki.teltonika-networks.com/
    downloads_url: https://teltonika-networks.com/products/downloads
    manuals_url: https://wiki.teltonika-networks.com/
    security_url: https://teltonika-networks.com/security
    firmware_url: https://teltonika-networks.com/products/downloads
    regions: [global, regional_review_required]
    categories: [radio_iot, router_wifi, industrial_iot, networking]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Exact device model and RutOS version required.

  - canonical_name_candidate: Nordic Semiconductor
    aliases: [NordicSemi, Nordic Semiconductor ASA]
    official_home: https://www.nordicsemi.com/
    support_url: https://www.nordicsemi.com/Support
    downloads_url: https://www.nordicsemi.com/Products/Development-software
    manuals_url: https://docs.nordicsemi.com/
    security_url: https://www.nordicsemi.com/Support
    firmware_url: https://www.nordicsemi.com/Products/Development-software
    regions: [global, regional_review_required]
    categories: [radio_iot, wireless_soc, embedded_sbc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: SDK/software and chip family scope required before binary-specific records.

  - canonical_name_candidate: EIZO
    aliases: [EIZO Corporation]
    official_home: https://www.eizo.com/
    support_url: https://www.eizo.com/support/
    downloads_url: https://www.eizo.com/support/db/
    manuals_url: https://www.eizo.com/support/db/
    security_url: https://www.eizo.com/support/
    firmware_url: https://www.eizo.com/support/db/
    regions: [global, regional_review_required]
    categories: [monitor_display, medical_display, imaging]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region/product family and medical display scope require review.

  - canonical_name_candidate: ViewSonic
    aliases: [ViewSonic Corporation]
    official_home: https://www.viewsonic.com/
    support_url: https://www.viewsonic.com/support/
    downloads_url: https://www.viewsonic.com/support/downloads/
    manuals_url: https://www.viewsonic.com/support/
    security_url: https://www.viewsonic.com/support/
    firmware_url: https://www.viewsonic.com/support/downloads/
    regions: [global, regional_review_required]
    categories: [monitor_display, projector, interactive_display]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region-specific support routing required.

  - canonical_name_candidate: BenQ
    aliases: [BenQ Corporation]
    official_home: https://www.benq.com/
    support_url: https://www.benq.com/en-us/support.html
    downloads_url: https://www.benq.com/en-us/support/downloads-faq.html
    manuals_url: https://www.benq.com/en-us/support.html
    security_url: https://www.benq.com/en-us/support.html
    firmware_url: https://www.benq.com/en-us/support/downloads-faq.html
    regions: [global, regional_review_required]
    categories: [monitor_display, projector, interactive_display]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Regional model pages required.

  - canonical_name_candidate: iiyama
    aliases: [iiyama Corporation]
    official_home: https://iiyama.com/
    support_url: https://iiyama.com/support/
    downloads_url: https://iiyama.com/support/
    manuals_url: https://iiyama.com/support/
    security_url: UNKNOWN
    firmware_url: https://iiyama.com/support/
    regions: [global, regional_review_required]
    categories: [monitor_display, interactive_display]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Tool returned internal fetch error for official home; retry before promotion.

  - canonical_name_candidate: TUXEDO Computers
    aliases: [TUXEDO]
    official_home: https://www.tuxedocomputers.com/
    support_url: https://www.tuxedocomputers.com/en/Infos/Help-Support.tuxedo
    downloads_url: https://www.tuxedocomputers.com/en/Infos/Help-Support.tuxedo
    manuals_url: https://www.tuxedocomputers.com/en/Infos/Help-Support.tuxedo
    security_url: https://www.tuxedocomputers.com/en/Infos/Help-Support.tuxedo
    firmware_url: https://www.tuxedocomputers.com/en/Infos/Help-Support.tuxedo
    regions: [Europe, regional_review_required]
    categories: [regional_oems, notebook_oem, desktop_oem, linux_hardware]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Regional OEM support and model-specific downloads require review.
```

## Changelog / audit note

- Added `MP-20260619-initial-seed-all-manufacturers-batch-002.md` as the second resumable broad manufacturer seed batch.
- Stored 25 official-source manufacturer candidates across automotive diagnostics, medical/consumer devices, industrial PCs, radio/IoT, monitor/display and regional OEM categories.
- Kept all records as `RESEARCH_SEED` / `MEMORY_PROPOSAL`.
- No canonical promotion, binary download, firmware download, manual download, installer download or rehosting was performed.
- No project directive rewrite was needed for this batch.
- `CHANGES.md` was not rewritten in this apply because the fetched raw changelog appeared stale relative to prior write history; avoiding a blind overwrite prevents data loss.

## Required follow-up before canonical promotion

1. Search repository for duplicate canonical names, normalized names, aliases, domains and source URLs.
2. Normalize aliases so sub-brands, parent companies and regional sites do not become second truths.
3. Create or link source records with `source_class=official_vendor_site` and `retrieved_at=2026-06-19`.
4. For firmware, BIOS, drivers, installers or vendor tools: record source URL, version, model scope and risk note only; do not rehost by default.
5. Promote one reviewed manufacturer at a time.

## Rollback

Remove this proposal file. No canonical records, binary artifacts or downloads are created by this proposal.
