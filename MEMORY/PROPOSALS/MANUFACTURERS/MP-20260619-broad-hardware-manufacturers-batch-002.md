proposal_id MP-20260619-BROAD-HARDWARE-MANUFACTURERS-BATCH-002
family memory_proposal
knowledge_class RESEARCHED
status_suggestion RESEARCH_SEED
requested_command DRDEBUG_OWNER_ADMIN=TRUE !dd memory ingest manufacturers --ingest-scope initial_seed_all_manufacturers --source-scope official_sources_only --output MEMORY_PROPOSAL --write-mode proposal_only --batch-size 25 --review-required --apply
ingest_scope initial_seed_all_manufacturers
seed_categories all_supported_hardware_manufacturer_categories
source_scope official_sources_only
output MEMORY_PROPOSAL
write_mode proposal_only
batch_size_requested 25
entries_count 25
created_at 2026-06-19
retrieved_at 2026-06-19
confidence MEDIUM
source_status OFFICIAL_SOURCE_SEED_URLS
validation_status DRY_RUN_SOURCE_REVIEW_ONLY
review_required true
canonical_path /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-broad-hardware-manufacturers-batch-002.md
proposed_canonical_path /MEMORY/MANUFACTURERS/
risk LOW
data_loss_risk NONE
redaction no secrets, accounts, serials, emails, customer data or raw crawl dumps included

# MEMORY_PROPOSAL: Broad hardware manufacturer official-source seed batch 002

## Scope

Proposal-only ingest seed for broad hardware manufacturers across PC/OEM, mobile/tablet, storage/NAS, networking/router/Wi-Fi, printer/scanner, monitor/display, TV/AV, embedded SBC, industrial/IoT/radio, peripherals, gaming accessories, camera/imaging, audio, consumer medical/wearable, automotive/navigation and smart-home adjacent categories.

This file does not promote any manufacturer record to canonical status. It does not download, mirror, rehost, hash or attach drivers, firmware, BIOS files, installers, manuals or binaries. It stores only minimal official-source seed URLs for later dedupe, source-record creation and one-by-one canonical promotion.

## Gates applied

- Official sources only.
- No login bypass.
- No paywall bypass.
- No raw crawl dumps.
- No binary downloads.
- No rehosting.
- No canonical promotion.
- Conservative batch size: 25 candidates.
- Repository-wide dedupe keys requested before promotion: canonical_name, normalized_name, aliases, official_home, support_url, downloads_url, manuals_url, security_url, firmware_url, source_url, domain, canonical_id.
- Alias policy: aliases point to canonical records and must not create second truths.
- Conflict policy: do not merge conflicts; create review notes.

## Batch-level validation notes

- Seed-level duplicate check performed against the currently visible canonical manufacturer list and existing 2026-06-19 PC-component proposal batch.
- This batch intentionally avoids candidates already visible in `/MEMORY/MANUFACTURERS/manufacturers.jsonl` and `/MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-pc-component-manufacturers-batch-001.md`.
- Full repository-wide duplicate search is still required before canonical promotion.
- URL reachability was spot-checked through official domains where tool access allowed; some pages may be region-redirected, script-rendered or login-gated for case handling.
- Missing, region-specific or uncertain fields are marked as seed URLs, not validated download records.
- Firmware, driver, BIOS and vendor-tool URLs are references only and must not be treated as safe, universal, current or rehostable without model-specific review.

## Manufacturer candidates

```yaml
manufacturer_candidates:
  - canonical_name_candidate: Apple
    normalized_name_candidate: apple
    aliases: [Apple Inc., Mac, iPhone, iPad, Apple TV]
    official_home: https://www.apple.com/
    support_url: https://support.apple.com/
    downloads_url: https://support.apple.com/downloads
    manuals_url: https://support.apple.com/manuals
    security_url: https://support.apple.com/security
    firmware_url: https://support.apple.com/downloads
    regions: [global]
    categories: [notebook_oems, desktop_oems, smartphone_tablet, tv_av, peripherals]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Microsoft
    normalized_name_candidate: microsoft
    aliases: [Microsoft Corporation, Surface, Xbox]
    official_home: https://www.microsoft.com/
    support_url: https://support.microsoft.com/
    downloads_url: https://www.microsoft.com/download
    manuals_url: https://support.microsoft.com/
    security_url: https://msrc.microsoft.com/update-guide
    firmware_url: https://www.microsoft.com/download
    regions: [global]
    categories: [notebook_oems, desktop_oems, gaming_accessories, peripherals]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Sony
    normalized_name_candidate: sony
    aliases: [Sony Corporation, Sony Electronics, PlayStation]
    official_home: https://www.sony.com/
    support_url: https://www.sony.com/electronics/support
    downloads_url: https://www.sony.com/electronics/support
    manuals_url: https://www.sony.com/electronics/support
    security_url: https://www.sony.com/electronics/support
    firmware_url: https://www.sony.com/electronics/support
    regions: [global, regional_support]
    categories: [tv_av, camera_imaging, audio, gaming_accessories, smartphone_tablet]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: LG Electronics
    normalized_name_candidate: lg_electronics
    aliases: [LG, LG Electronics USA]
    official_home: https://www.lg.com/
    support_url: https://www.lg.com/us/support
    downloads_url: https://www.lg.com/us/support/software-firmware-drivers
    manuals_url: https://www.lg.com/us/support/manuals-documents
    security_url: https://www.lg.com/us/support
    firmware_url: https://www.lg.com/us/support/software-firmware-drivers
    regions: [global, regional_support]
    categories: [monitor_display, tv_av, smart_home, audio]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Panasonic
    normalized_name_candidate: panasonic
    aliases: [Panasonic Holdings, Panasonic North America]
    official_home: https://www.panasonic.com/
    support_url: https://support.na.panasonic.com/
    downloads_url: https://support.na.panasonic.com/
    manuals_url: https://support.na.panasonic.com/
    security_url: https://holdings.panasonic/global/corporate/product-security.html
    firmware_url: https://support.na.panasonic.com/
    regions: [global, regional_support]
    categories: [tv_av, camera_imaging, medical_consumer_devices, industrial_pc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Canon
    normalized_name_candidate: canon
    aliases: [Canon Inc., Canon U.S.A.]
    official_home: https://www.canon.com/
    support_url: https://www.usa.canon.com/support
    downloads_url: https://www.usa.canon.com/support
    manuals_url: https://www.usa.canon.com/support
    security_url: https://www.usa.canon.com/support
    firmware_url: https://www.usa.canon.com/support
    regions: [global, regional_support]
    categories: [printer_scanner, camera_imaging]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Epson
    normalized_name_candidate: epson
    aliases: [Seiko Epson, Epson America]
    official_home: https://www.epson.com/
    support_url: https://epson.com/Support/sl/s
    downloads_url: https://epson.com/Support/sl/s
    manuals_url: https://epson.com/Support/sl/s
    security_url: https://epson.com/Support/sl/s
    firmware_url: https://epson.com/Support/sl/s
    regions: [global, regional_support]
    categories: [printer_scanner, monitor_display]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Brother
    normalized_name_candidate: brother
    aliases: [Brother Industries, Brother USA]
    official_home: https://www.brother.com/
    support_url: https://support.brother.com/
    downloads_url: https://support.brother.com/
    manuals_url: https://support.brother.com/
    security_url: https://support.brother.com/
    firmware_url: https://support.brother.com/
    regions: [global, regional_support]
    categories: [printer_scanner]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Synology
    normalized_name_candidate: synology
    aliases: [Synology Inc.]
    official_home: https://www.synology.com/
    support_url: https://www.synology.com/en-global/support
    downloads_url: https://www.synology.com/en-global/support/download
    manuals_url: https://www.synology.com/en-global/support/download
    security_url: https://www.synology.com/en-global/security/advisory
    firmware_url: https://www.synology.com/en-global/support/download
    regions: [global]
    categories: [nas, networking, storage, router_wifi]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: QNAP
    normalized_name_candidate: qnap
    aliases: [QNAP Systems]
    official_home: https://www.qnap.com/
    support_url: https://www.qnap.com/en/support
    downloads_url: https://www.qnap.com/en/download
    manuals_url: https://www.qnap.com/en/download
    security_url: https://www.qnap.com/en/security-advisory
    firmware_url: https://www.qnap.com/en/download
    regions: [global]
    categories: [nas, networking, storage]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Ubiquiti
    normalized_name_candidate: ubiquiti
    aliases: [Ubiquiti Inc., UI, UniFi]
    official_home: https://ui.com/
    support_url: https://help.ui.com/
    downloads_url: https://ui.com/download
    manuals_url: https://help.ui.com/
    security_url: https://community.ui.com/releases
    firmware_url: https://ui.com/download
    regions: [global]
    categories: [networking, router_wifi, smart_home, camera_imaging]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: MikroTik
    normalized_name_candidate: mikrotik
    aliases: [MikroTikls SIA, RouterBOARD]
    official_home: https://mikrotik.com/
    support_url: https://mikrotik.com/support
    downloads_url: https://mikrotik.com/download
    manuals_url: https://help.mikrotik.com/docs/
    security_url: https://mikrotik.com/supportsec
    firmware_url: https://mikrotik.com/download
    regions: [global]
    categories: [networking, router_wifi, radio_iot, industrial_pc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: TP-Link
    normalized_name_candidate: tp_link
    aliases: [TP-LINK, TP-Link Systems, Kasa, Tapo, Omada, VIGI]
    official_home: https://www.tp-link.com/
    support_url: https://www.tp-link.com/us/support/
    downloads_url: https://www.tp-link.com/us/support/download/
    manuals_url: https://www.tp-link.com/us/support/
    security_url: https://www.tp-link.com/us/support/
    firmware_url: https://www.tp-link.com/us/support/download/
    regions: [global, regional_support]
    categories: [networking, router_wifi, smart_home, camera_imaging]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: NETGEAR
    normalized_name_candidate: netgear
    aliases: [Netgear Inc., Orbi, Nighthawk]
    official_home: https://www.netgear.com/
    support_url: https://www.netgear.com/support/
    downloads_url: https://www.netgear.com/support/download/
    manuals_url: https://www.netgear.com/support/
    security_url: https://www.netgear.com/about/security/
    firmware_url: https://www.netgear.com/support/download/
    regions: [global]
    categories: [networking, router_wifi, nas]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Cisco
    normalized_name_candidate: cisco
    aliases: [Cisco Systems, Cisco Meraki]
    official_home: https://www.cisco.com/
    support_url: https://www.cisco.com/c/en/us/support/index.html
    downloads_url: https://software.cisco.com/download/home
    manuals_url: https://www.cisco.com/c/en/us/support/index.html
    security_url: https://sec.cloudapps.cisco.com/security/center/publicationListing.x
    firmware_url: https://software.cisco.com/download/home
    regions: [global]
    categories: [networking, server_oems, router_wifi, industrial_pc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Juniper Networks
    normalized_name_candidate: juniper_networks
    aliases: [Juniper]
    official_home: https://www.juniper.net/
    support_url: https://support.juniper.net/support/
    downloads_url: https://support.juniper.net/support/downloads/
    manuals_url: https://www.juniper.net/documentation/
    security_url: https://supportportal.juniper.net/s/global-search/%40uri#sort=relevancy&f:ctype=[Security%20Advisories]
    firmware_url: https://support.juniper.net/support/downloads/
    regions: [global]
    categories: [networking, router_wifi, server_oems]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Raspberry Pi
    normalized_name_candidate: raspberry_pi
    aliases: [Raspberry Pi Ltd, Raspberry Pi Foundation]
    official_home: https://www.raspberrypi.com/
    support_url: https://www.raspberrypi.com/documentation/
    downloads_url: https://www.raspberrypi.com/software/
    manuals_url: https://www.raspberrypi.com/documentation/
    security_url: https://www.raspberrypi.com/security/
    firmware_url: https://www.raspberrypi.com/software/
    regions: [global]
    categories: [embedded_sbc, radio_iot, camera_imaging, industrial_pc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Arduino
    normalized_name_candidate: arduino
    aliases: [Arduino.cc, Arduino AG]
    official_home: https://www.arduino.cc/
    support_url: https://support.arduino.cc/
    downloads_url: https://www.arduino.cc/en/software
    manuals_url: https://docs.arduino.cc/
    security_url: https://www.arduino.cc/en/security
    firmware_url: https://www.arduino.cc/en/software
    regions: [global]
    categories: [embedded_sbc, radio_iot, industrial_pc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: BeagleBoard
    normalized_name_candidate: beagleboard
    aliases: [BeagleBoard.org Foundation, BeagleBone]
    official_home: https://www.beagleboard.org/
    support_url: https://forum.beagleboard.org/
    downloads_url: https://www.beagleboard.org/distros
    manuals_url: https://docs.beagleboard.org/latest/
    security_url: https://www.beagleboard.org/security
    firmware_url: https://www.beagleboard.org/distros
    regions: [global]
    categories: [embedded_sbc, industrial_pc, radio_iot]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Axis Communications
    normalized_name_candidate: axis_communications
    aliases: [Axis]
    official_home: https://www.axis.com/
    support_url: https://www.axis.com/support
    downloads_url: https://www.axis.com/support/downloads
    manuals_url: https://www.axis.com/support
    security_url: https://www.axis.com/support/cybersecurity
    firmware_url: https://www.axis.com/support/firmware
    regions: [global]
    categories: [camera_imaging, networking, smart_home, industrial_pc]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Logitech
    normalized_name_candidate: logitech
    aliases: [Logitech International, Logi, Logitech G, Ultimate Ears, Astro Gaming]
    official_home: https://www.logitech.com/
    support_url: https://support.logi.com/
    downloads_url: https://support.logi.com/hc/en-us
    manuals_url: https://support.logi.com/hc/en-us
    security_url: https://www.logitech.com/en-us/trust.html
    firmware_url: https://support.logi.com/hc/en-us
    regions: [global]
    categories: [peripherals, gaming_accessories, audio, camera_imaging]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Razer
    normalized_name_candidate: razer
    aliases: [Razer Inc.]
    official_home: https://www.razer.com/
    support_url: https://support.razer.com/
    downloads_url: https://mysupport.razer.com/app/answers/detail/a_id/4166
    manuals_url: https://support.razer.com/
    security_url: https://www.razer.com/legal
    firmware_url: https://mysupport.razer.com/app/answers/detail/a_id/4166
    regions: [global, regional_support]
    categories: [gaming_accessories, notebook_oems, peripherals, audio]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: SteelSeries
    normalized_name_candidate: steelseries
    aliases: [SteelSeries ApS]
    official_home: https://steelseries.com/
    support_url: https://support.steelseries.com/
    downloads_url: https://steelseries.com/gg
    manuals_url: https://support.steelseries.com/
    security_url: https://steelseries.com/policies/privacy-policy
    firmware_url: https://steelseries.com/gg
    regions: [global]
    categories: [gaming_accessories, peripherals, audio]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: Garmin
    normalized_name_candidate: garmin
    aliases: [Garmin Ltd.]
    official_home: https://www.garmin.com/
    support_url: https://support.garmin.com/
    downloads_url: https://www.garmin.com/en-US/software/
    manuals_url: https://support.garmin.com/
    security_url: https://www.garmin.com/en-US/privacy/security/
    firmware_url: https://www.garmin.com/en-US/software/
    regions: [global, regional_support]
    categories: [automotive_diagnostic_devices, medical_consumer_devices, radio_iot, smartphone_tablet]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
  - canonical_name_candidate: iRobot
    normalized_name_candidate: irobot
    aliases: [iRobot Corporation, Roomba]
    official_home: https://www.irobot.com/
    support_url: https://homesupport.irobot.com/
    downloads_url: https://homesupport.irobot.com/
    manuals_url: https://homesupport.irobot.com/
    security_url: https://www.irobot.com/legal/security
    firmware_url: https://homesupport.irobot.com/
    regions: [global, regional_support]
    categories: [smart_home, medical_consumer_devices]
    source_status: official_seed
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: Seed URL only; exact product/model, region, lifecycle, source-record, duplicate and conflict review required before canonical promotion. No binaries downloaded or rehosted.
```

## Source-record requirements for follow-up

Each candidate needs a source record with:

- `source_class`: `A_PRIMARY_OFFICIAL_VENDOR`
- `publisher`: official manufacturer/vendor domain
- `retrieved_at`: 2026-06-19
- `claim_supported`: official home/support/download/manual/security/firmware seed landing pages
- `limitations`: region redirects, script-rendered pages, login-gated support cases, and model-specific download requirements
- `hash_if_file`: not applicable in this proposal because no files were downloaded

## Required follow-up before canonical promotion

1. Search exact canonical name, normalized name, aliases, official domains, support/download/manual/security/firmware URLs and canonical IDs repository-wide.
2. Split sub-brands, acquisitions and product-line labels into aliases unless official evidence supports a separate canonical manufacturer.
3. Create or link source records before promotion.
4. Promote one reviewed manufacturer at a time.
5. For firmware, BIOS, drivers, installers or vendor tools: record source URL, version, model scope, risk note and checksum only when safely obtained by a later reviewed workflow; do not rehost by default.
6. If source claims conflict, create review notes and do not merge conflicting facts.

## Rollback

Remove this proposal file and the proposal-index/changelog entries created in the same batch. No canonical records, source registry records, binaries, manuals, firmware files, downloads or external uploads were created by this proposal.
