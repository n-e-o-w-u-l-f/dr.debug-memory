---
proposal_id: MP-20260619-INITIAL-SEED-ALL-MANUFACTURERS-BATCH-001
family: memory_proposal
knowledge_class: RESEARCHED
status_suggestion: RESEARCH_SEED
requested_command: "DRDEBUG_OWNER_ADMIN=TRUE !dd memory ingest manufacturers --ingest-scope initial_seed_all_manufacturers --apply"
ingest_scope: initial_seed_all_manufacturers
source_scope: official_sources_only
seed_categories: all_supported_hardware_manufacturer_categories
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
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-initial-seed-all-manufacturers-batch-001.md
proposed_canonical_path: /MEMORY/MANUFACTURERS/
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data, raw logs or raw crawl dumps included
directive_override_used: false
---

# MEMORY_PROPOSAL: Initial seed all manufacturers batch 001

## Scope

Broad manufacturer discovery seed across supported hardware categories. This file is proposal-only and does not promote any manufacturer record to canonical status.

The command requested all manufacturers; this batch implements the first resumable batch according to `--batch-size 25`. Additional batches must continue from uncovered categories and dedupe against this file and canonical manufacturer records.

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
  - canonical_name_candidate: Cisco
    aliases: [Cisco Systems]
    official_home: https://www.cisco.com/
    support_url: https://www.cisco.com/c/en/us/support/index.html
    downloads_url: https://software.cisco.com/
    manuals_url: https://www.cisco.com/c/en/us/support/index.html
    security_url: https://sec.cloudapps.cisco.com/security/center/home.x
    firmware_url: https://software.cisco.com/
    regions: [global, regional_review_required]
    categories: [networking, server, router_wifi, security, industrial_iot]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Software downloads may require entitlement or login for some products.

  - canonical_name_candidate: TP-Link
    aliases: [TP-Link Technologies Co., Ltd.]
    official_home: https://www.tp-link.com/en/
    support_url: https://www.tp-link.com/en/support/
    downloads_url: https://www.tp-link.com/en/support/download/
    manuals_url: https://www.tp-link.com/en/support/
    security_url: https://www.tp-link.com/en/support/
    firmware_url: https://www.tp-link.com/en/support/download/
    regions: [global, regional_review_required]
    categories: [networking, router_wifi, smart_home]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region and model pages required before binary-specific records.

  - canonical_name_candidate: NETGEAR
    aliases: [NETGEAR Inc.]
    official_home: https://www.netgear.com/
    support_url: https://www.netgear.com/support/
    downloads_url: https://www.netgear.com/support/download/
    manuals_url: https://www.netgear.com/support/
    security_url: https://www.netgear.com/about/security/
    firmware_url: https://www.netgear.com/support/download/
    regions: [global, regional_review_required]
    categories: [networking, router_wifi, nas, smart_home]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Support page redirected with limited parsed content; review before promotion.

  - canonical_name_candidate: Ubiquiti
    aliases: [Ubiquiti Inc., UniFi]
    official_home: https://ui.com/
    support_url: https://help.ui.com/
    downloads_url: https://www.ui.com/download/
    manuals_url: https://help.ui.com/
    security_url: https://community.ui.com/releases/Security-Advisory
    firmware_url: https://www.ui.com/download/
    regions: [global, regional_review_required]
    categories: [networking, router_wifi, camera_imaging, smart_home]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Download URL should be reviewed for current UI routing.

  - canonical_name_candidate: MikroTik
    aliases: [MikroTikls SIA]
    official_home: https://mikrotik.com/
    support_url: https://mikrotik.com/support
    downloads_url: https://mikrotik.com/download
    manuals_url: https://help.mikrotik.com/docs/
    security_url: https://mikrotik.com/supportsec
    firmware_url: https://mikrotik.com/download
    regions: [global, regional_review_required]
    categories: [networking, router_wifi, industrial_iot]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Model and RouterOS branch required for firmware records.

  - canonical_name_candidate: Synology
    aliases: [Synology Inc.]
    official_home: https://www.synology.com/
    support_url: https://kb.synology.com/
    downloads_url: https://www.synology.com/support/download
    manuals_url: https://kb.synology.com/
    security_url: https://www.synology.com/en-us/security/advisory
    firmware_url: https://www.synology.com/support/download
    regions: [global, regional_review_required]
    categories: [nas, storage, networking, camera_imaging]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Exact DSM/SRM/product model required for downloads.

  - canonical_name_candidate: QNAP
    aliases: [QNAP Systems Inc.]
    official_home: https://www.qnap.com/
    support_url: https://www.qnap.com/en/support
    downloads_url: https://www.qnap.com/en/download
    manuals_url: https://www.qnap.com/en/support
    security_url: https://www.qnap.com/en/security-advisory
    firmware_url: https://www.qnap.com/en/download
    regions: [global, regional_review_required]
    categories: [nas, storage, networking, camera_imaging]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Support open had tool error or large script page; review before promotion.

  - canonical_name_candidate: Brother
    aliases: [Brother Industries Ltd.]
    official_home: https://www.brother.com/
    support_url: https://support.brother.com/
    downloads_url: https://support.brother.com/
    manuals_url: https://support.brother.com/
    security_url: https://www.brother.com/
    firmware_url: https://support.brother.com/
    regions: [global, regional_review_required]
    categories: [printer_scanner, peripheral, industrial_labeling]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Exact regional model pages required.

  - canonical_name_candidate: Epson
    aliases: [Seiko Epson Corporation]
    official_home: https://epson.com/
    support_url: https://epson.com/Support/sl/s
    downloads_url: https://epson.com/Support/sl/s
    manuals_url: https://epson.com/Support/sl/s
    security_url: https://epson.com/Support/sl/s
    firmware_url: https://epson.com/Support/sl/s
    regions: [global, regional_review_required]
    categories: [printer_scanner, projector, camera_imaging]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region-specific support required.

  - canonical_name_candidate: Canon
    aliases: [Canon Inc., Canon U.S.A.]
    official_home: https://www.usa.canon.com/
    support_url: https://www.usa.canon.com/support
    downloads_url: https://www.usa.canon.com/support
    manuals_url: https://www.usa.canon.com/support
    security_url: https://www.usa.canon.com/support
    firmware_url: https://www.usa.canon.com/support
    regions: [global, regional_review_required]
    categories: [printer_scanner, camera_imaging, office_device]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Global/regional split requires scope review.

  - canonical_name_candidate: Ricoh
    aliases: [Ricoh Company Ltd.]
    official_home: https://www.ricoh.com/
    support_url: https://www.ricoh-usa.com/en/support-and-download
    downloads_url: https://www.ricoh-usa.com/en/support-and-download
    manuals_url: https://www.ricoh-usa.com/en/support-and-download
    security_url: https://www.ricoh.com/security/
    firmware_url: https://www.ricoh-usa.com/en/support-and-download
    regions: [global, regional_review_required]
    categories: [printer_scanner, office_device, camera_imaging]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Regional support split requires review.

  - canonical_name_candidate: Xerox
    aliases: [Xerox Holdings Corporation]
    official_home: https://www.xerox.com/
    support_url: https://www.support.xerox.com/
    downloads_url: https://www.support.xerox.com/
    manuals_url: https://www.support.xerox.com/
    security_url: https://securitydocs.business.xerox.com/
    firmware_url: https://www.support.xerox.com/
    regions: [global, regional_review_required]
    categories: [printer_scanner, office_device]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Tool returned internal fetch errors; recheck before promotion.

  - canonical_name_candidate: Kyocera Document Solutions
    aliases: [Kyocera]
    official_home: https://global.kyocera.com/
    support_url: https://global.kyocera.com/support/
    downloads_url: https://global.kyocera.com/support/
    manuals_url: https://global.kyocera.com/support/
    security_url: https://global.kyocera.com/support/
    firmware_url: https://global.kyocera.com/support/
    regions: [global, regional_review_required]
    categories: [printer_scanner, office_device, industrial_components]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Business unit split requires review.

  - canonical_name_candidate: Lexmark
    aliases: [Lexmark International Inc.]
    official_home: https://www.lexmark.com/
    support_url: https://support.lexmark.com/
    downloads_url: https://support.lexmark.com/
    manuals_url: https://support.lexmark.com/
    security_url: https://www.lexmark.com/en_us/about/security.html
    firmware_url: https://support.lexmark.com/
    regions: [global, regional_review_required]
    categories: [printer_scanner, office_device]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Exact printer family required.

  - canonical_name_candidate: Zebra Technologies
    aliases: [Zebra Technologies Corporation]
    official_home: https://www.zebra.com/
    support_url: https://www.zebra.com/us/en/support-downloads.html
    downloads_url: https://www.zebra.com/us/en/support-downloads.html
    manuals_url: https://www.zebra.com/us/en/support-downloads.html
    security_url: https://www.zebra.com/us/en/about-zebra/company-information/security-center.html
    firmware_url: https://www.zebra.com/us/en/support-downloads.html
    regions: [global, regional_review_required]
    categories: [printer_scanner, barcode, industrial_iot, handheld]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Support redirected with limited parsed content.

  - canonical_name_candidate: Apple
    aliases: [Apple Inc.]
    official_home: https://www.apple.com/
    support_url: https://support.apple.com/
    downloads_url: https://support.apple.com/downloads
    manuals_url: https://support.apple.com/manuals
    security_url: https://support.apple.com/security
    firmware_url: https://support.apple.com/downloads
    regions: [global, regional_review_required]
    categories: [smartphone_tablet, desktop_oem, notebook_oem, wearable, tv_av]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Hardware/OS/security claims require exact product and OS version.

  - canonical_name_candidate: Google
    aliases: [Google LLC, Pixel, Nest]
    official_home: https://google.com/
    support_url: https://support.google.com/
    downloads_url: https://developers.google.com/android/images
    manuals_url: https://support.google.com/
    security_url: https://source.android.com/docs/security/bulletin
    firmware_url: https://developers.google.com/android/images
    regions: [global, regional_review_required]
    categories: [smartphone_tablet, smart_home, router_wifi, wearable]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Hardware-specific support spans Pixel, Nest and Android pages.

  - canonical_name_candidate: OnePlus
    aliases: [OnePlus Technology]
    official_home: https://www.oneplus.com/
    support_url: https://support.oneplus.com/
    downloads_url: https://service.oneplus.com/
    manuals_url: https://support.oneplus.com/
    security_url: https://security.oneplus.com/
    firmware_url: https://service.oneplus.com/
    regions: [global, regional_review_required]
    categories: [smartphone_tablet, audio]
    source_status: official_seed
    confidence: LOW
    retrieved_at: 2026-06-19
    limitations: Official support URL fetch had tool error; recheck before promotion.

  - canonical_name_candidate: Fairphone
    aliases: [Fairphone B.V.]
    official_home: https://www.fairphone.com/
    support_url: https://support.fairphone.com/
    downloads_url: https://support.fairphone.com/
    manuals_url: https://support.fairphone.com/
    security_url: https://support.fairphone.com/
    firmware_url: https://support.fairphone.com/
    regions: [global, regional_review_required]
    categories: [smartphone_tablet, repair_manuals]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Model-specific documents and OS releases require review.

  - canonical_name_candidate: Raspberry Pi
    aliases: [Raspberry Pi Ltd., Raspberry Pi Foundation]
    official_home: https://www.raspberrypi.com/
    support_url: https://www.raspberrypi.com/documentation/
    downloads_url: https://www.raspberrypi.com/software/
    manuals_url: https://www.raspberrypi.com/documentation/
    security_url: https://www.raspberrypi.com/documentation/computers/os.html#security
    firmware_url: https://www.raspberrypi.com/software/
    regions: [global, regional_review_required]
    categories: [embedded_sbc, education, industrial_iot]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Board revision and OS image version required for binary records.

  - canonical_name_candidate: Arduino
    aliases: [Arduino AG, Arduino LLC]
    official_home: https://www.arduino.cc/
    support_url: https://docs.arduino.cc/
    downloads_url: https://www.arduino.cc/en/software/
    manuals_url: https://docs.arduino.cc/
    security_url: https://www.arduino.cc/en/security
    firmware_url: https://www.arduino.cc/en/software/
    regions: [global, regional_review_required]
    categories: [embedded_sbc, education, industrial_iot]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Board family and IDE/firmware component scope required.

  - canonical_name_candidate: Espressif
    aliases: [Espressif Systems]
    official_home: https://www.espressif.com/
    support_url: https://www.espressif.com/en/support/download/overview
    downloads_url: https://www.espressif.com/en/support/download/overview
    manuals_url: https://docs.espressif.com/
    security_url: https://www.espressif.com/en/support/download/overview
    firmware_url: https://www.espressif.com/en/support/download/overview
    regions: [global, regional_review_required]
    categories: [embedded_sbc, wireless_soc, radio_iot, smart_home]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Exact SoC, module and SDK version required.

  - canonical_name_candidate: Sony
    aliases: [Sony Group, Sony Electronics]
    official_home: https://www.sony.com/
    support_url: https://www.sony.com/electronics/support
    downloads_url: https://www.sony.com/electronics/support
    manuals_url: https://www.sony.com/electronics/support
    security_url: https://www.sony.com/electronics/support
    firmware_url: https://www.sony.com/electronics/support
    regions: [global, regional_review_required]
    categories: [tv_av, camera_imaging, audio, gaming_accessories]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Sony Group vs product support scopes require review.

  - canonical_name_candidate: LG Electronics
    aliases: [LG, LG Global]
    official_home: https://www.lg.com/global/
    support_url: https://www.lg.com/us/support
    downloads_url: https://www.lg.com/us/support/software-firmware-drivers
    manuals_url: https://www.lg.com/us/support/manuals-documents
    security_url: https://www.lg.com/us/support
    firmware_url: https://www.lg.com/us/support/software-firmware-drivers
    regions: [global, regional_review_required]
    categories: [tv_av, monitor_display, smart_home, appliance, smartphone_legacy]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Region and exact model required.

  - canonical_name_candidate: D-Link
    aliases: [D-Link Corporation]
    official_home: https://www.dlink.com/
    support_url: https://support.dlink.com/
    downloads_url: https://support.dlink.com/
    manuals_url: https://support.dlink.com/
    security_url: https://support.dlink.com/
    firmware_url: https://support.dlink.com/
    regions: [global, regional_review_required]
    categories: [networking, router_wifi, smart_home, camera_imaging]
    source_status: official_seed
    confidence: HIGH
    retrieved_at: 2026-06-19
    limitations: Product model required for firmware and manuals.
```

## Required follow-up before canonical promotion

1. Search repository for duplicate canonical names, normalized names, aliases, domains and source URLs.
2. Normalize aliases so sub-brands, parent companies and regional sites do not become second truths.
3. Create or link source records with `source_class=official_vendor_site` and `retrieved_at=2026-06-19`.
4. For firmware, BIOS, drivers, installers or vendor tools: record source URL, version, model scope and risk note only; do not rehost by default.
5. Promote one reviewed manufacturer at a time.

## Rollback

Remove this proposal file and the corresponding changelog entry. No canonical records, binary artifacts or downloads are created by this proposal.
