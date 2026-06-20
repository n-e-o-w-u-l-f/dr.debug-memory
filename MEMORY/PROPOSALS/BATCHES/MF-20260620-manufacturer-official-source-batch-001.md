# MF-20260620-manufacturer-official-source-batch-001

Status: PROPOSAL_READY_FOR_REVIEW
Mode: OWNER_ADMIN_MODE
Command: memory loop known-artifacts continuation
Continuation from: `MEMORY cursor: known_artifacts/iana-baseline-proposal-indexed; next=start-manufacturer-source-batch-or-import-iana-baseline-after-review; batch-size=25-or-5`
Created: 2026-06-20
Repository: n-e-o-w-u-l-f/dr.debug-memory
Artifact class: MANUFACTURER_OFFICIAL_SOURCE_PROPOSAL_BATCH
Batch size: 8 manufacturer/source candidates

## Scope

This proposal prepares official-source manufacturer candidates for later dedupe and canonical manufacturer review. It does not create canonical manufacturer records, does not import source-registry records, does not download binaries, and does not rehost firmware, drivers, installers, manuals or vendor tools.

## Import boundary

Manufacturer candidates are proposal-only. Promotion requires dedupe by exact name, normalized name, aliases, source URL, model family, acquisition/sub-brand relationships and canonical ID. Drivers, BIOS, firmware, installers and vendor tools remain high-risk binaries and are not rehosted by default.

## Candidate records

### MF-PROP-20260620-001 — Acer

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `Acer`
- aliases: `Acer Inc.; Acer Group`
- official_home: `https://www.acer.com/us-en`
- support_url: `https://www.acer.com/support/`
- downloads_url: `https://www.acer.com/us-en/support/drivers-and-manuals`
- manuals_url: `https://www.acer.com/us-en/support/drivers-and-manuals`
- security_url: `not verified in this pass`
- firmware_url: `same model-gated downloads portal; no direct firmware URL stored`
- regions: `global with regional portals observed: US, DE, NL, IN`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SUPPORT_DOWNLOADS; MEDIUM_FOR_SECURITY_URL_PENDING`
- retrieved_at: `2026-06-20`
- limitations: `Downloads require model, serial, SNID or part-number identification; no binary was downloaded; security advisory landing page not verified in this pass.`
- rehosting_decision: `NO_REHOSTING; drivers/firmware/BIOS/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-002 — ASUS

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `ASUS`
- aliases: `ASUSTeK Computer Inc.; ASUS Global`
- official_home: `https://www.asus.com/`
- support_url: `https://www.asus.com/support/`
- downloads_url: `https://www.asus.com/support/download-center/`
- manuals_url: `https://www.asus.com/support/download-center/`
- security_url: `not verified in this pass`
- firmware_url: `same model-gated download center; no direct firmware URL stored`
- regions: `global with regional portals observed: Global, DE, NL, IT`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SUPPORT_DOWNLOADS; MEDIUM_FOR_SECURITY_URL_PENDING`
- retrieved_at: `2026-06-20`
- limitations: `Download center provides drivers, software, firmware and manuals by product/model; no binary was downloaded; cybersecurity notice exists on support page but dedicated advisory registry was not verified in this pass.`
- rehosting_decision: `NO_REHOSTING; drivers/firmware/BIOS/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-003 — Dell

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `Dell`
- aliases: `Dell Technologies; Dell EMC for enterprise/product-id contexts`
- official_home: `https://www.dell.com/`
- support_url: `https://www.dell.com/support/home/en-us`
- downloads_url: `https://www.dell.com/support/home/en-us?app=drivers`
- manuals_url: `https://www.dell.com/support/home/en-us`
- security_url: `not verified in this pass`
- firmware_url: `same Service-Tag/model-gated drivers portal; no direct firmware URL stored`
- regions: `global with regional portals observed: US, UK, DE`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SUPPORT_DOWNLOADS; MEDIUM_FOR_SECURITY_URL_PENDING`
- retrieved_at: `2026-06-20`
- limitations: `Drivers and documentation are product/service-tag scoped; no binary was downloaded; security advisory page not verified in this pass.`
- rehosting_decision: `NO_REHOSTING; drivers/firmware/BIOS/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-004 — HP

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `HP`
- aliases: `HP Inc.; Hewlett-Packard legacy alias requires separate historical review`
- official_home: `https://www.hp.com/`
- support_url: `https://support.hp.com/`
- downloads_url: `https://support.hp.com/us-en/drivers`
- manuals_url: `https://support.hp.com/`
- security_url: `not verified in this pass`
- firmware_url: `same product-gated drivers portal; no direct firmware URL stored`
- regions: `global with regional portals observed: US, AT, AU, CH, IT, NL`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SUPPORT_DOWNLOADS; MEDIUM_FOR_SECURITY_URL_PENDING`
- retrieved_at: `2026-06-20`
- limitations: `Drivers, software, firmware and diagnostics are product-scoped; no binary was downloaded; legacy Hewlett-Packard/HPE separation needs alias/canonical review.`
- rehosting_decision: `NO_REHOSTING; drivers/firmware/BIOS/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-005 — Lenovo

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `Lenovo`
- aliases: `Lenovo Group; Lenovo PC Support; ThinkPad/ThinkCentre/IdeaPad are product-family aliases, not manufacturer replacements`
- official_home: `https://www.lenovo.com/`
- support_url: `https://support.lenovo.com/us/en`
- downloads_url: `https://pcsupport.lenovo.com/`
- manuals_url: `https://pcsupport.lenovo.com/`
- security_url: `https://support.lenovo.com/de/de/product_security/ps500001`
- firmware_url: `same product-gated support/download portal; no direct firmware URL stored`
- regions: `global with regional portals observed: US, DE`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SUPPORT_DOWNLOADS_AND_SECURITY`
- retrieved_at: `2026-06-20`
- limitations: `Downloads and security applicability are product/version scoped; no binary was downloaded; IBM/ThinkPad acquisition history requires alias-only review to avoid second truth.`
- rehosting_decision: `NO_REHOSTING; drivers/firmware/BIOS/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-006 — Microsoft Surface

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `Microsoft Surface`
- aliases: `Microsoft; Surface; Surface Pro; Surface Laptop; Surface Go; Surface Book; Surface Studio; Surface Dock; Surface Hub`
- official_home: `https://www.microsoft.com/`
- support_url: `https://support.microsoft.com/en-us/surface`
- downloads_url: `https://support.microsoft.com/en-us/surface/drivers-firmware/download-drivers-and-firmware-for-surface`
- manuals_url: `https://support.microsoft.com/en-us/surface`
- security_url: `not verified in this pass`
- firmware_url: `model-gated Surface drivers and firmware portal; no direct firmware URL stored`
- regions: `global with regional Microsoft Support portals observed: EN-US, DE-DE`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SURFACE_DRIVER_FIRMWARE_SUPPORT; MEDIUM_FOR_SECURITY_URL_PENDING`
- retrieved_at: `2026-06-20`
- limitations: `Surface driver/firmware updates are model and lifecycle scoped; Microsoft notes power and battery precautions for Surface updates; no binary was downloaded.`
- rehosting_decision: `NO_REHOSTING; drivers/firmware/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-007 — Apple

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `Apple`
- aliases: `Apple Inc.; Apple Support`
- official_home: `https://www.apple.com/`
- support_url: `https://support.apple.com/`
- downloads_url: `https://support.apple.com/en-us/docs`
- manuals_url: `https://support.apple.com/en-us/docs`
- security_url: `https://support.apple.com/en-us/100100`
- firmware_url: `software-update ecosystem; no direct firmware URL stored`
- regions: `global with regional support portals observed: EN-US, IT-IT`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_MANUALS_DOWNLOADS_AND_SECURITY_RELEASES`
- retrieved_at: `2026-06-20`
- limitations: `Apple updates are OS/device scoped; security issues are disclosed after investigation and release; no binary was downloaded; do not mirror Apple downloads without explicit preservation/legal review.`
- rehosting_decision: `NO_REHOSTING; software/firmware/installers are high-risk binaries and remain source-linked only.`

### MF-PROP-20260620-008 — Samsung

- proposed_status: `PROPOSAL_READY_FOR_REVIEW`
- canonical_name_candidate: `Samsung`
- aliases: `Samsung Electronics; Samsung Support`
- official_home: `https://www.samsung.com/`
- support_url: `https://www.samsung.com/us/support/`
- downloads_url: `https://www.samsung.com/us/support/downloads/`
- manuals_url: `https://www.samsung.com/us/support/downloads/`
- security_url: `not verified in this pass`
- firmware_url: `model/product-gated Manuals & Software portal; no direct firmware URL stored`
- regions: `global with regional portals observed: US, NL`
- source_status: `OFFICIAL_VENDOR_SOURCE_VERIFIED`
- confidence: `HIGH_FOR_SUPPORT_DOWNLOADS; MEDIUM_FOR_SECURITY_URL_PENDING`
- retrieved_at: `2026-06-20`
- limitations: `Manuals, firmware and software are product/model scoped; no binary was downloaded; mobile/TV/monitor/PC support paths may require family-specific canonical records.`
- rehosting_decision: `NO_REHOSTING; firmware/software/installers are high-risk binaries and remain source-linked only.`

## Dedupe notes

- Product families and support tools are aliases or scoped support surfaces, not separate manufacturers by default.
- Regional portals should become aliases/navigation only unless they carry region-specific official evidence.
- Legacy and acquisition-sensitive aliases require separate review: HP vs HPE/Hewlett-Packard legacy, Lenovo vs IBM/ThinkPad history, Dell vs Dell EMC enterprise contexts, Samsung Electronics vs regional Samsung portals.
- Direct firmware, BIOS, installer or driver file URLs should not be stored unless a later owner workflow records retrieved_at, exact model scope, version and checksum.

## Validation performed

- Source hierarchy check: official manufacturer or platform support sources only.
- Currentness check: web retrieval performed 2026-06-20.
- Redaction check: no serial numbers, Service Tags, SNIDs, customer data, credentials, private hosts, raw logs or raw crawl dumps added.
- Binary/rehosting check: no binaries, firmware, drivers, installers, manuals, downloads, checksums, archive uploads or rehosting artifacts added.
- Status lifecycle check: proposal-ready for review only; not canonical, not reviewed, not imported.
- Second-truth guard: regional portals and product families are scoped aliases/navigation candidates only.

## Cursor update

Next resume cursor: `MEMORY cursor: known_artifacts/manufacturer-source-batch-001-complete; next=append-proposal-index-changelog-or-review-manufacturer-batch; batch-size=8-or-25`

## Rollback

Delete this proposal file. No canonical records, source-registry records, index entries, changelog entries, binaries, archive uploads, status promotions or broad reclassifications need rollback from this pass.
