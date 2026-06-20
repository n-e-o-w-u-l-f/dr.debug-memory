---
proposal_id: MP-20260619-PC-COMPONENT-MANUFACTURERS-BATCH-001
family: memory_proposal
knowledge_class: RESEARCHED
status_suggestion: STATUS_RESEARCH_REQUIRED
requested_command: "DRDEBUG_OWNER_ADMIN=TRUE !dd memory ingest manufacturers --seed-category pc_component_manufacturers --apply"
seed_category: pc_component_manufacturers
source_scope: official_sources_only
output: MEMORY_PROPOSAL
batch_size_requested: 25
entries_count: 25
created_at: 2026-06-19
retrieved_at: 2026-06-19
confidence: MEDIUM
source_status: OFFICIAL_SOURCE_SEED_URLS
validation_status: DRY_RUN_SOURCE_REVIEW_ONLY
review_required: true
canonical_path: /MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-pc-component-manufacturers-batch-001.md
proposed_canonical_path: /MEMORY/MANUFACTURERS/PC_COMPONENTS/
risk: LOW
redaction: no secrets, accounts, serials, emails, customer data or raw crawl dumps included
---

# MEMORY_PROPOSAL: PC component manufacturer official-source seed batch 001

## Scope

Proposal-only ingest seed for PC component manufacturers. This file does not promote any manufacturer record to canonical status and does not rehost drivers, firmware, BIOS files, installers, manuals or binaries. The proposal stores only minimal official-source seed URLs and limitations for later dedupe and source review.

## Gates applied

- Official sources only.
- No login bypass.
- No paywall bypass.
- No raw crawl dumps.
- Conservative batch size: 25 candidates.
- Dedupe keys requested: canonical_name, aliases, official_home, support_url, downloads_url, source_url.
- Promotion requires duplicate search, source record review, schema alignment and validation.

## Batch-level validation notes

- Seed-level duplicate check performed within this batch by normalized canonical_name_candidate and official_home domain.
- Full repository-wide duplicate search is still required before canonical promotion.
- URL reachability was spot-checked through official domains where tool access allowed; some pages may be region-redirected or script-rendered.
- Missing fields are marked UNKNOWN instead of inferred.
- Firmware/BIOS/download links are references only and must not be treated as safe, universal or rehostable.

## Manufacturer candidates

```yaml
manufacturer_candidates:
  - canonical_name_candidate: ASUS
    aliases: [ASUSTeK, ASUSTeK Computer Inc., ROG, Republic of Gamers, TUF Gaming]
    official_home: https://www.asus.com/
    support_url: https://www.asus.com/support/
    downloads_url: https://www.asus.com/support/Download-Center/
    manuals_url: https://www.asus.com/support/Download-Center/
    security_url: https://www.asus.com/content/asus-product-security-advisory/
    firmware_url: https://www.asus.com/support/Download-Center/
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Region redirects observed; exact model pages required for driver, BIOS and firmware records.

  - canonical_name_candidate: ASRock
    aliases: [ASRock Inc., ASRock Rack, Phantom Gaming]
    official_home: https://www.asrock.com/
    support_url: https://www.asrock.com/support/
    downloads_url: https://www.asrock.com/support/index.asp?cat=Download
    manuals_url: https://www.asrock.com/support/index.asp?cat=Manual
    security_url: https://www.asrock.com/support/
    firmware_url: https://www.asrock.com/support/index.asp?cat=BIOS
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: BIOS/download URLs are support-section seeds; model-specific confirmation required.

  - canonical_name_candidate: MSI
    aliases: [Micro-Star International, MSI Global]
    official_home: https://www.msi.com/
    support_url: https://www.msi.com/support
    downloads_url: https://www.msi.com/support/download
    manuals_url: https://www.msi.com/support/download
    security_url: UNKNOWN
    firmware_url: https://www.msi.com/support/download
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Product family and model-specific pages required before canonical download records.

  - canonical_name_candidate: GIGABYTE
    aliases: [Gigabyte Technology, AORUS]
    official_home: https://www.gigabyte.com/
    support_url: https://www.gigabyte.com/Support
    downloads_url: https://www.gigabyte.com/Support/Download
    manuals_url: https://www.gigabyte.com/Support/Download
    security_url: UNKNOWN
    firmware_url: https://www.gigabyte.com/Support/Download
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Consumer and enterprise support areas diverge; exact product scope required.

  - canonical_name_candidate: EVGA
    aliases: [EVGA Corporation]
    official_home: https://www.evga.com/
    support_url: https://www.evga.com/support/
    downloads_url: https://www.evga.com/support/download/
    manuals_url: https://www.evga.com/support/manuals/
    security_url: UNKNOWN
    firmware_url: https://www.evga.com/support/download/
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Product availability and legacy support status may vary; verify current model support.

  - canonical_name_candidate: Intel
    aliases: [Intel Corporation]
    official_home: https://www.intel.com/
    support_url: https://www.intel.com/content/www/us/en/support.html
    downloads_url: https://www.intel.com/content/www/us/en/download-center/home.html
    manuals_url: https://www.intel.com/content/www/us/en/support.html
    security_url: https://www.intel.com/content/www/us/en/security-center/default.html
    firmware_url: https://www.intel.com/content/www/us/en/download-center/home.html
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Some legacy products are discontinued or redirected; exact product lifecycle check required.

  - canonical_name_candidate: AMD
    aliases: [Advanced Micro Devices]
    official_home: https://www.amd.com/
    support_url: https://www.amd.com/en/support
    downloads_url: https://www.amd.com/en/support/download/drivers.html
    manuals_url: https://www.amd.com/en/resources/support-articles.html
    security_url: https://www.amd.com/en/resources/product-security.html
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Driver/support scope varies by CPU, GPU, chipset and adaptive products.

  - canonical_name_candidate: NVIDIA
    aliases: [NVIDIA Corporation, GeForce]
    official_home: https://www.nvidia.com/
    support_url: https://www.nvidia.com/en-us/support/
    downloads_url: https://www.nvidia.com/en-us/drivers/
    manuals_url: https://www.nvidia.com/en-us/support/
    security_url: https://nvidia.custhelp.com/app/answers/detail/a_id/4787
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Driver records require product branch, OS, release notes and checksum where available.

  - canonical_name_candidate: Corsair
    aliases: [CORSAIR, Corsair Gaming]
    official_home: https://www.corsair.com/
    support_url: https://help.corsair.com/
    downloads_url: https://www.corsair.com/us/en/s/downloads
    manuals_url: https://www.corsair.com/us/en/explorer/
    security_url: UNKNOWN
    firmware_url: https://www.corsair.com/us/en/s/downloads
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Software/firmware is product-specific; no binary rehosting.

  - canonical_name_candidate: G.SKILL
    aliases: [G.Skill, G.SKILL International]
    official_home: https://www.gskill.com/
    support_url: https://www.gskill.com/support
    downloads_url: https://www.gskill.com/download
    manuals_url: UNKNOWN
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Tool access did not fully verify download page; review before promotion.

  - canonical_name_candidate: Kingston
    aliases: [Kingston Technology, Kingston FURY, HyperX legacy]
    official_home: https://www.kingston.com/
    support_url: https://www.kingston.com/en/support
    downloads_url: https://www.kingston.com/en/support/technical/downloads
    manuals_url: https://www.kingston.com/en/support
    security_url: https://www.kingston.com/en/company/compliance
    firmware_url: https://www.kingston.com/en/support/technical/downloads
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Kingston FURY and legacy HyperX aliases require careful alias handling.

  - canonical_name_candidate: Crucial
    aliases: [Crucial by Micron, Micron Crucial]
    official_home: https://www.crucial.com/
    support_url: https://www.crucial.com/support
    downloads_url: https://www.crucial.com/support/ssd-support
    manuals_url: https://www.crucial.com/support
    security_url: UNKNOWN
    firmware_url: https://www.crucial.com/support/ssd-support
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Canonical relationship to Micron needs source review.

  - canonical_name_candidate: Western Digital
    aliases: [WD, SanDisk Professional, Western Digital Corporation]
    official_home: https://www.westerndigital.com/
    support_url: https://support-en.wd.com/
    downloads_url: https://support-en.wd.com/app/products/downloads
    manuals_url: https://support-en.wd.com/
    security_url: https://www.westerndigital.com/support/product-security
    firmware_url: https://support-en.wd.com/app/products/downloads
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Support page tool access was limited; verify URLs before promotion.

  - canonical_name_candidate: Seagate
    aliases: [Seagate Technology]
    official_home: https://www.seagate.com/
    support_url: https://www.seagate.com/support/
    downloads_url: https://www.seagate.com/support/downloads/
    manuals_url: https://www.seagate.com/support/
    security_url: https://www.seagate.com/support/security/
    firmware_url: https://www.seagate.com/support/downloads/
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Support page tool access was limited; exact product pages required.

  - canonical_name_candidate: Samsung Semiconductor Consumer Storage
    aliases: [Samsung SSD, Samsung Memory]
    official_home: https://semiconductor.samsung.com/consumer-storage/
    support_url: https://semiconductor.samsung.com/consumer-storage/support/
    downloads_url: https://semiconductor.samsung.com/consumer-storage/support/tools/
    manuals_url: https://semiconductor.samsung.com/consumer-storage/support/
    security_url: UNKNOWN
    firmware_url: https://semiconductor.samsung.com/consumer-storage/support/tools/
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Distinguish consumer storage from Samsung Electronics regional support.

  - canonical_name_candidate: SK hynix
    aliases: [SK hynix Inc., Solidigm legacy relationship requires review]
    official_home: https://www.skhynix.com/
    support_url: https://www.skhynix.com/eng/support/download.jsp
    downloads_url: https://www.skhynix.com/eng/support/download.jsp
    manuals_url: UNKNOWN
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Tool access did not verify support URL; review before promotion.

  - canonical_name_candidate: Seasonic
    aliases: [Sea Sonic, Sea Sonic Electronics]
    official_home: https://seasonic.com/
    support_url: https://seasonic.com/support/
    downloads_url: UNKNOWN
    manuals_url: https://seasonic.com/support/
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Primarily PSU/manual/RMA support; no generic firmware expectation.

  - canonical_name_candidate: be quiet!
    aliases: [Listan, be quiet]
    official_home: https://www.bequiet.com/
    support_url: https://www.bequiet.com/en/support
    downloads_url: https://www.bequiet.com/en/service/downloads
    manuals_url: https://www.bequiet.com/en/service/downloads
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Tool access did not verify support URL; review before promotion.

  - canonical_name_candidate: Noctua
    aliases: [Noctua, Rascom]
    official_home: https://www.noctua.at/
    support_url: https://www.noctua.at/en/support
    downloads_url: https://www.noctua.at/en/support
    manuals_url: https://www.noctua.at/en/support
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Cooling/accessory support; no generic firmware expectation.

  - canonical_name_candidate: Cooler Master
    aliases: [CoolerMaster]
    official_home: https://www.coolermaster.com/
    support_url: https://www.coolermaster.com/en-global/support/
    downloads_url: https://www.coolermaster.com/en-global/software-download/
    manuals_url: https://www.coolermaster.com/en-global/support/
    security_url: UNKNOWN
    firmware_url: https://www.coolermaster.com/en-global/software-download/
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Software/firmware references are product-specific; no binary rehosting.

  - canonical_name_candidate: NZXT
    aliases: [NZXT Inc.]
    official_home: https://nzxt.com/
    support_url: https://nzxt.com/support
    downloads_url: https://nzxt.com/software/cam
    manuals_url: https://nzxt.com/support
    security_url: UNKNOWN
    firmware_url: https://nzxt.com/software/cam
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: CAM/software firmware flows require product-specific review.

  - canonical_name_candidate: Fractal Design
    aliases: [Fractal]
    official_home: https://www.fractal-design.com/
    support_url: https://www.fractal-design.com/support/
    downloads_url: https://www.fractal-design.com/support/
    manuals_url: https://www.fractal-design.com/support/
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Primarily cases, cooling and PSU documentation/support.

  - canonical_name_candidate: Phanteks
    aliases: [Phanteks USA]
    official_home: https://phanteks.com/
    support_url: https://phanteks.com/support/
    downloads_url: UNKNOWN
    manuals_url: https://phanteks.com/support/
    security_url: UNKNOWN
    firmware_url: UNKNOWN
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Tool access did not verify support URL; review before promotion.

  - canonical_name_candidate: Thermaltake
    aliases: [Thermaltake Technology]
    official_home: https://www.thermaltake.com/
    support_url: https://www.thermaltake.com/support
    downloads_url: https://www.thermaltake.com/downloads
    manuals_url: https://www.thermaltake.com/support
    security_url: UNKNOWN
    firmware_url: https://www.thermaltake.com/downloads
    regions: [global]
    source_status: official_seed
    confidence: LOW
    limitations: Tool access did not verify support/download URL; review before promotion.

  - canonical_name_candidate: LIAN LI
    aliases: [Lian Li, LIAN LI Industrial]
    official_home: https://lian-li.com/
    support_url: https://lian-li.com/contact-us/
    downloads_url: https://lian-li.com/downloads/
    manuals_url: https://lian-li.com/downloads/
    security_url: UNKNOWN
    firmware_url: https://lian-li.com/downloads/
    regions: [global]
    source_status: official_seed
    confidence: MEDIUM
    limitations: Download/firmware references are product-specific; no binary rehosting.
```

## Required follow-up before canonical promotion

1. Search repository for duplicate canonical names, aliases, domains and support URLs.
2. Normalize aliases so sub-brands and acquired/legacy names do not become second truths.
3. Create or link source records with source_class=official_vendor_site and retrieved_at=2026-06-19.
4. For firmware, BIOS, drivers, installers or vendor tools: record source URL, version, model scope and risk note only; no default rehosting.
5. Promote one reviewed manufacturer at a time to canonical manufacturer records.

## Rollback

Remove this proposal file only. No canonical records, indexes, source registry files or binary artifacts are changed by this proposal.
