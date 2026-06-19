# MEMORY_PROPOSAL: Initial manufacturer official-source seed batch 001

metadata:
  id: MP-20260619-manufacturer-seed-batch-001
  family: MANUFACTURERS
  status: RESEARCH_SEED
  output: MEMORY_PROPOSAL
  write_mode: proposal_only
  created_at: 2026-06-19
  updated_at: 2026-06-19
  review_required: true
  batch_size_requested: 25
  batch_mode: resumable
  source_scope: official_sources_only
  source_status: OFFICIAL_SOURCE_DISCOVERY_SEED
  validation_status: DRY_RUN_ONLY_STATIC_REVIEW
  canonical_promotion: false
  no_binary_downloads: true
  no_rehosting: true
  no_raw_crawl_dumps: true
  robots_tos: respect
  rollback: remove_created_proposal_batch_files_only

audit:
  actor: Andreas Bolder via Dr.Debug OWNER_ADMIN_MODE
  reason: Initial seed: broad manufacturer discovery from official sources only; add all discovered manufacturers as RESEARCH_SEED MEMORY_PROPOSAL entries for later dedupe, source review and one-by-one canonical promotion
  risk: LOW
  data_loss_classifier: NONE
  redaction: no secrets, credentials, personal data, serial numbers, raw logs, raw crawl dumps or binary files stored

dedupe_policy:
  repository_wide_keys: [canonical_name, normalized_name, aliases, official_home, support_url, downloads_url, manuals_url, security_url, firmware_url, source_url, domain, canonical_id]
  alias_policy: aliases_point_to_canonical_no_second_truth
  conflict_policy: do_not_merge_conflicts_create_review_notes

limitations:
  - Discovery seed only; not a canonical manufacturer database.
  - URLs are official-source candidates for review; regional redirects and vendor site restructuring may require normalization.
  - No downloads were fetched; no firmware, driver, BIOS, installer, manual or other binary file was downloaded or rehosted.
  - Security, firmware, manuals and downloads URLs are candidate landing pages and require one-by-one review before promotion.

candidate_fields: [canonical_name_candidate, aliases, official_home, support_url, downloads_url, manuals_url, security_url, firmware_url, regions, source_status, confidence, retrieved_at, limitations]

manufacturer_candidates:
  - seed_id: MFG-SEED-20260619-001
    canonical_name_candidate: ASUS
    normalized_name: asus
    aliases: [ASUSTeK, Republic of Gamers, ROG]
    categories: [pc_components,notebook_oems,desktop_oems,router_wifi,server_oems,monitor_display,peripherals,gaming_accessories]
    official_home: https://www.asus.com/
    support_url: https://www.asus.com/support/
    downloads_url: https://www.asus.com/support/download-center/
    manuals_url: https://www.asus.com/support/download-center/
    security_url: https://www.asus.com/content/asus-product-security-advisory/
    firmware_url: https://www.asus.com/support/download-center/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-002
    canonical_name_candidate: Acer
    normalized_name: acer
    aliases: [Predator, Aopen, Altos]
    categories: [notebook_oems,desktop_oems,monitor_display,server_oems,peripherals]
    official_home: https://www.acer.com/
    support_url: https://www.acer.com/support
    downloads_url: https://www.acer.com/support
    manuals_url: https://www.acer.com/support
    security_url: https://www.acer.com/support
    firmware_url: https://www.acer.com/support
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-003
    canonical_name_candidate: Dell
    normalized_name: dell
    aliases: [Dell Technologies, Alienware, Latitude, OptiPlex, PowerEdge]
    categories: [notebook_oems,desktop_oems,server_oems,storage,monitor_display,peripherals]
    official_home: https://www.dell.com/
    support_url: https://www.dell.com/support/home
    downloads_url: https://www.dell.com/support/home
    manuals_url: https://www.dell.com/support/home
    security_url: https://www.dell.com/support/security/en-us
    firmware_url: https://www.dell.com/support/home
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-004
    canonical_name_candidate: HP
    normalized_name: hp
    aliases: [Hewlett-Packard, HP Inc., OMEN, Poly]
    categories: [notebook_oems,desktop_oems,printer_scanner,monitor_display,peripherals]
    official_home: https://www.hp.com/
    support_url: https://support.hp.com/
    downloads_url: https://support.hp.com/
    manuals_url: https://support.hp.com/
    security_url: https://support.hp.com/
    firmware_url: https://support.hp.com/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-005
    canonical_name_candidate: Lenovo
    normalized_name: lenovo
    aliases: [ThinkPad, ThinkCentre, IdeaPad, Legion, Motorola]
    categories: [notebook_oems,desktop_oems,server_oems,smartphone_tablet,peripherals]
    official_home: https://www.lenovo.com/
    support_url: https://support.lenovo.com/
    downloads_url: https://support.lenovo.com/
    manuals_url: https://support.lenovo.com/
    security_url: https://psirt.lenovo.com/
    firmware_url: https://support.lenovo.com/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-006
    canonical_name_candidate: Intel
    normalized_name: intel
    aliases: [Intel Corporation, NUC, Arc]
    categories: [pc_components,server_oems,networking,embedded_sbc,industrial_pc,radio_iot]
    official_home: https://www.intel.com/
    support_url: https://www.intel.com/content/www/us/en/support.html
    downloads_url: https://downloadcenter.intel.com/
    manuals_url: https://www.intel.com/content/www/us/en/support.html
    security_url: https://www.intel.com/content/www/us/en/security-center/default.html
    firmware_url: https://www.intel.com/content/www/us/en/support.html
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-007
    canonical_name_candidate: AMD
    normalized_name: amd
    aliases: [Advanced Micro Devices, Radeon, Ryzen, EPYC, Xilinx]
    categories: [pc_components,server_oems,embedded_sbc,industrial_pc,automotive_diagnostic_devices,radio_iot]
    official_home: https://www.amd.com/
    support_url: https://www.amd.com/en/support
    downloads_url: https://www.amd.com/en/support
    manuals_url: https://www.amd.com/en/support
    security_url: https://www.amd.com/en/resources/product-security.html
    firmware_url: https://www.amd.com/en/support
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-008
    canonical_name_candidate: NVIDIA
    normalized_name: nvidia
    aliases: [NVIDIA Corporation, GeForce, Quadro, RTX]
    categories: [pc_components,server_oems,embedded_sbc,industrial_pc,automotive_diagnostic_devices]
    official_home: https://www.nvidia.com/
    support_url: https://www.nvidia.com/en-us/support/
    downloads_url: https://www.nvidia.com/en-us/drivers/
    manuals_url: https://www.nvidia.com/en-us/support/
    security_url: https://www.nvidia.com/en-us/security/
    firmware_url: https://www.nvidia.com/en-us/drivers/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-009
    canonical_name_candidate: GIGABYTE
    normalized_name: gigabyte
    aliases: [Gigabyte Technology, AORUS]
    categories: [pc_components,notebook_oems,desktop_oems,server_oems,monitor_display,gaming_accessories]
    official_home: https://www.gigabyte.com/
    support_url: https://www.gigabyte.com/Support
    downloads_url: https://www.gigabyte.com/Support
    manuals_url: https://www.gigabyte.com/Support
    security_url: https://www.gigabyte.com/Support/Security
    firmware_url: https://www.gigabyte.com/Support
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-010
    canonical_name_candidate: MSI
    normalized_name: msi
    aliases: [Micro-Star International, MSI Gaming]
    categories: [pc_components,notebook_oems,desktop_oems,monitor_display,gaming_accessories,cooling_power]
    official_home: https://www.msi.com/
    support_url: https://www.msi.com/support
    downloads_url: https://www.msi.com/support
    manuals_url: https://www.msi.com/support
    security_url: https://www.msi.com/page/security
    firmware_url: https://www.msi.com/support
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-011
    canonical_name_candidate: Samsung
    normalized_name: samsung
    aliases: [Samsung Electronics, Galaxy, Samsung Display]
    categories: [smartphone_tablet,tv_av,monitor_display,storage,smart_home,medical_consumer_devices]
    official_home: https://www.samsung.com/
    support_url: https://www.samsung.com/support/
    downloads_url: https://www.samsung.com/support/
    manuals_url: https://www.samsung.com/support/
    security_url: https://security.samsungmobile.com/
    firmware_url: https://www.samsung.com/support/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-012
    canonical_name_candidate: LG
    normalized_name: lg
    aliases: [LG Electronics, LG Display]
    categories: [tv_av,monitor_display,smart_home,audio,medical_consumer_devices]
    official_home: https://www.lg.com/
    support_url: https://www.lg.com/support/
    downloads_url: https://www.lg.com/support/
    manuals_url: https://www.lg.com/support/
    security_url: https://www.lg.com/global/business/it-security
    firmware_url: https://www.lg.com/support/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-013
    canonical_name_candidate: Sony
    normalized_name: sony
    aliases: [Sony Corporation, Sony Electronics, PlayStation]
    categories: [tv_av,camera_imaging,audio,smartphone_tablet,gaming_accessories]
    official_home: https://www.sony.com/
    support_url: https://www.sony.com/electronics/support
    downloads_url: https://www.sony.com/electronics/support
    manuals_url: https://www.sony.com/electronics/support
    security_url: https://www.sony.net/security/
    firmware_url: https://www.sony.com/electronics/support
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-014
    canonical_name_candidate: Apple
    normalized_name: apple
    aliases: [Apple Inc., Mac, iPhone, iPad]
    categories: [notebook_oems,desktop_oems,smartphone_tablet,peripherals,audio,smart_home]
    official_home: https://www.apple.com/
    support_url: https://support.apple.com/
    downloads_url: https://support.apple.com/downloads
    manuals_url: https://support.apple.com/manuals
    security_url: https://support.apple.com/security
    firmware_url: https://support.apple.com/downloads
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-015
    canonical_name_candidate: Huawei
    normalized_name: huawei
    aliases: [Huawei Consumer, Honor (historic/related)]
    categories: [smartphone_tablet,networking,router_wifi,radio_iot,server_oems,smart_home]
    official_home: https://www.huawei.com/
    support_url: https://consumer.huawei.com/en/support/
    downloads_url: https://consumer.huawei.com/en/support/
    manuals_url: https://consumer.huawei.com/en/support/
    security_url: https://www.huawei.com/en/psirt
    firmware_url: https://consumer.huawei.com/en/support/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-016
    canonical_name_candidate: Synology
    normalized_name: synology
    aliases: [Synology Inc.]
    categories: [nas,networking,router_wifi,camera_imaging,smart_home]
    official_home: https://www.synology.com/
    support_url: https://www.synology.com/support
    downloads_url: https://www.synology.com/support/download
    manuals_url: https://kb.synology.com/
    security_url: https://www.synology.com/en-global/security/advisory
    firmware_url: https://www.synology.com/support/download
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-017
    canonical_name_candidate: QNAP
    normalized_name: qnap
    aliases: [QNAP Systems]
    categories: [nas,networking,router_wifi,storage,camera_imaging]
    official_home: https://www.qnap.com/
    support_url: https://www.qnap.com/en/support
    downloads_url: https://www.qnap.com/en/download
    manuals_url: https://www.qnap.com/en/support
    security_url: https://www.qnap.com/en/security-advisories
    firmware_url: https://www.qnap.com/en/download
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-018
    canonical_name_candidate: Western Digital
    normalized_name: western-digital
    aliases: [WD, SanDisk, G-Technology]
    categories: [storage,nas]
    official_home: https://www.westerndigital.com/
    support_url: https://support-en.wd.com/
    downloads_url: https://support-en.wd.com/
    manuals_url: https://support-en.wd.com/
    security_url: https://www.westerndigital.com/support/product-security
    firmware_url: https://support-en.wd.com/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-019
    canonical_name_candidate: Seagate
    normalized_name: seagate
    aliases: [Seagate Technology, LaCie]
    categories: [storage,nas]
    official_home: https://www.seagate.com/
    support_url: https://www.seagate.com/support/
    downloads_url: https://www.seagate.com/support/downloads/
    manuals_url: https://www.seagate.com/support/
    security_url: https://www.seagate.com/support/security/
    firmware_url: https://www.seagate.com/support/downloads/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-020
    canonical_name_candidate: TP-Link
    normalized_name: tp-link
    aliases: [TP-Link Technologies, Tapo, Kasa]
    categories: [networking,router_wifi,smart_home,radio_iot]
    official_home: https://www.tp-link.com/
    support_url: https://www.tp-link.com/support/
    downloads_url: https://www.tp-link.com/support/download/
    manuals_url: https://www.tp-link.com/support/
    security_url: https://www.tp-link.com/support/security-advisory/
    firmware_url: https://www.tp-link.com/support/download/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-021
    canonical_name_candidate: Canon
    normalized_name: canon
    aliases: [Canon Inc.]
    categories: [printer_scanner,camera_imaging,medical_consumer_devices,industrial_pc]
    official_home: https://www.canon.com/
    support_url: https://www.canon.com/support/
    downloads_url: https://www.canon.com/support/
    manuals_url: https://www.canon.com/support/
    security_url: https://www.canon.com/support/
    firmware_url: https://www.canon.com/support/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-022
    canonical_name_candidate: Epson
    normalized_name: epson
    aliases: [Seiko Epson, Epson]
    categories: [printer_scanner,camera_imaging,industrial_pc,peripherals]
    official_home: https://epson.com/
    support_url: https://epson.com/Support/sl/s
    downloads_url: https://epson.com/Support/sl/s
    manuals_url: https://epson.com/Support/sl/s
    security_url: https://epson.com/Support/sl/s
    firmware_url: https://epson.com/Support/sl/s
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-023
    canonical_name_candidate: Brother
    normalized_name: brother
    aliases: [Brother Industries]
    categories: [printer_scanner,peripherals,industrial_pc]
    official_home: https://www.brother.com/
    support_url: https://support.brother.com/
    downloads_url: https://support.brother.com/
    manuals_url: https://support.brother.com/
    security_url: https://support.brother.com/
    firmware_url: https://support.brother.com/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-024
    canonical_name_candidate: NETGEAR
    normalized_name: netgear
    aliases: [Netgear, Orbi, Nighthawk]
    categories: [networking,router_wifi,nas,smart_home]
    official_home: https://www.netgear.com/
    support_url: https://www.netgear.com/support/
    downloads_url: https://www.netgear.com/support/
    manuals_url: https://www.netgear.com/support/
    security_url: https://www.netgear.com/about/security/
    firmware_url: https://www.netgear.com/support/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
  - seed_id: MFG-SEED-20260619-025
    canonical_name_candidate: Logitech
    normalized_name: logitech
    aliases: [Logi, Logitech G, Ultimate Ears]
    categories: [peripherals,gaming_accessories,audio,camera_imaging,smart_home]
    official_home: https://www.logitech.com/
    support_url: https://support.logi.com/
    downloads_url: https://support.logi.com/
    manuals_url: https://support.logi.com/
    security_url: https://www.logitech.com/security.html
    firmware_url: https://support.logi.com/
    regions: [global]
    source_status: OFFICIAL_SOURCE_CANDIDATE
    confidence: MEDIUM
    retrieved_at: 2026-06-19
    limitations: candidate landing URLs only; requires repository-wide dedupe, source review, regional URL normalization and conflict notes before any canonical promotion
