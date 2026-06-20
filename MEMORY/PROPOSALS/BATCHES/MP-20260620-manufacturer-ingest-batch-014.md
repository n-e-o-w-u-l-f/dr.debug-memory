# MP-20260620-manufacturer-ingest-batch-014

Status: PROPOSAL_ONLY  
Mode: OWNER_ADMIN_MODE bounded apply batch  
Repository: n-e-o-w-u-l-f/dr.debug-memory  
Created: 2026-06-20  
Scope: manufacturer official endpoint discovery after dedupe-index installation  
Batch size requested/applied: 25 / 25  
Canonical promotion: none  
Binary downloads: none  
Rehosting/archive upload: none  
Raw crawl dumps: none  

## Purpose

Thirteenth continued bounded manufacturer-ingest batch. This batch focuses on NAS/storage controllers, RAID/HBA vendors, docks, adapters, KVM switches and connectivity-peripheral vendors after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 013. Batch 014 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

## Candidate schema defaults

```yaml
family: MANUFACTURERS
category: manufacturer
status: RESEARCH_SEED
confidence: MEDIUM
validation_status: SOURCE_CONFIRMED_FOR_OFFICIAL_ENDPOINT_ONLY
review_required: true
source_class: A_PRIMARY_OFFICIAL_VENDOR
retrieved_at: "2026-06-20"
canonical_promotion: "blocked pending repository-wide dedupe, source-record review and reviewer approval"
content_policy: "LINK_ONLY_METADATA"
binary_policy: "NO_DOWNLOADS_NO_REHOSTING"
```

## Batch candidates

| Candidate ID | Canonical name candidate | Aliases | Official home | Support/source URL | Category candidates | Source status |
|---|---|---|---|---|---|---|
| `ASUSTOR` | ASUSTOR | ASUSTOR NAS | https://www.asustor.com/ | https://www.asustor.com/service/downloads | nas_storage, networking, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `TERRAMASTER` | TerraMaster | TNAS, TerraMaster NAS | https://www.terra-master.com/ | https://www.terra-master.com/blogs/faq/where-can-i-download-the-tnas-pc-desktop-application-or-get-updates | nas_storage, storage, networking, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `PROMISE_TECHNOLOGY` | Promise Technology | PROMISE, Pegasus, VTrak | https://www.promise.com/ | https://www.promise.com/us/support/downloadcenter | nas_storage, storage, raid_hba, video_capture, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `HIGHPOINT_TECHNOLOGIES` | HighPoint Technologies | HighPoint, RocketRAID, RocketStor | https://www.highpoint-tech.com/ | https://www.highpoint-tech.com/ | raid_hba, storage, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ARECA_TECHNOLOGY` | Areca Technology | Areca, Areca RAID | https://www.areca.com.tw/ | https://www.areca.com.tw/support/downloads.html | raid_hba, storage, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `OWC` | OWC | Other World Computing, MacSales | https://www.owc.com/ | https://software.owc.com/downloads/ | storage, peripherals, docks_adapters, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CALDIGIT` | CalDigit | CalDigit Docks | https://www.caldigit.com/ | https://downloads.caldigit.com/ | docks_adapters, storage, networking, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `SONNET_TECHNOLOGIES` | Sonnet Technologies | SonnetTech, Sonnet | https://www.sonnettech.com/ | https://www.sonnettech.com/support/ | docks_adapters, raid_hba, networking, video_capture, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `PLUGABLE` | Plugable | Plugable Technologies | https://plugable.com/ | https://plugable.com/pages/drivers | docks_adapters, networking, peripherals, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `SATECHI` | Satechi | Satechi Support | https://satechi.net/ | https://support.satechi.com/hc/en-us | docks_adapters, peripherals, charging_power, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `BASEUS` | Baseus | Shenzhen Baseus Technology | https://www.baseus.com/ | https://www.baseus.com/pages/download-center | docks_adapters, peripherals, charging_power, networking, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `UGREEN` | UGREEN | Ugreen Group, UGREEN NASync | https://www.ugreen.com/ | https://us.ugreen.com/pages/download | docks_adapters, nas_storage, networking, charging_power, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ORICO` | ORICO | ORICO Technologies | https://www.orico.cc/ | https://www.orico.cc/index/attachment/index.html | storage, docks_adapters, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ICY_DOCK` | ICY DOCK | ICY DOCK USA, CREMAX | https://global.icydock.com/ | https://global.icydock.com/support.html?m=140001&ty=1 | storage, docks_adapters, peripherals | OFFICIAL_SEARCH_CONFIRMED |
| `CABLE_MATTERS` | Cable Matters | Cable Matters Inc. | https://www.cablematters.com/ | https://www.cablematters.com/cs-downloads.aspx | docks_adapters, networking, peripherals, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `J5CREATE` | j5create | Kaijet Technology, j5create International | https://www.j5create.com/ | https://en.j5create.com/pages/drivers | docks_adapters, peripherals, networking, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `WAVLINK` | WAVLINK | Winstars Technology, WAVLINK Wireless | https://www.wavlink.com/ | https://www.wavlink.com/en_us/drivers.html | docks_adapters, networking, peripherals, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `TARGUS` | Targus | Targus Docking | https://www.targus.com/ | https://us.targus.com/pages/driver-support | docks_adapters, peripherals, notebook_accessories, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CLUB_3D` | Club 3D | Club3D | https://www.club-3d.com/ | https://www.club-3d.com/support-and-faq | docks_adapters, graphics_accessories, peripherals | OFFICIAL_SEARCH_CONFIRMED |
| `DELOCK` | Delock | Tragant Delock | https://www.delock.com/ | https://www.delock.com/service/treiber.html | docks_adapters, networking, storage, peripherals, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `LINDY` | Lindy | Lindy Electronics | https://lindy.com/ | https://lindy.com/de/drivers_and_manuals/ | docks_adapters, networking, av_kvm, peripherals, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `RAIDSONIC` | RaidSonic | ICY BOX, RaidSonic Technology | https://icybox.uk/ | https://www.icybox.uk/support | storage, docks_adapters, peripherals, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ATEN` | ATEN | ATEN International, ATEN KVM | https://www.aten.com/ | https://www.aten.com/eu/en/supportcenter/info/downloads/ | av_kvm, networking, docks_adapters, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `IOGEAR` | IOGEAR | IOGEAR KVM | https://iogear.com/ | https://iogear.com/pages/driver | av_kvm, peripherals, networking, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `TESMART` | TESmart | TESmart KVM | https://www.tesmart.com/ | https://support.tesmart.com/hc/en-us/categories/7606227532953-Download | av_kvm, peripherals, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |

## Per-candidate limitations

- `ASUSTOR`: name is similar to ASUS, but this proposal keeps it separate from existing ASUS manufacturer entries until alias/corporate-lineage review is performed.
- `PROMISE_TECHNOLOGY`, `HIGHPOINT_TECHNOLOGIES`, `ARECA_TECHNOLOGY`, `ASUSTOR`, `TERRAMASTER`, `UGREEN`, `ORICO`, `OWC`, `CALDIGIT` and `SONNET_TECHNOLOGIES`: storage, RAID, NAS, dock and PCIe products may expose firmware, BIOS, drivers, utilities, OS images or data-path changes. Store link-only metadata until exact model/version and backup/rollback context are reviewed.
- `OWC`: Akitio/MacSales/Other World Computing lineage and brand scope must be reviewed before aliasing.
- `ICY_DOCK` and `RAIDSONIC`: ICY DOCK and ICY BOX/RaidSonic are separate brand/vendor records unless a reviewer creates an explicit alias/corporate-link record.
- `PLUGABLE`, `J5CREATE`, `WAVLINK`, `TARGUS`, `BASEUS`, `SATECHI`, `CABLE_MATTERS`, `CLUB_3D`, `DELOCK` and `LINDY`: drivers and firmware can depend on chipset vendor, OS version and exact model/SKU. Do not generalize one driver package to all products.
- `ATEN`, `IOGEAR` and `TESMART`: KVM and AV-control firmware/software can affect remote access, input devices and display paths. Store no remote-access secrets and do not provide firmware procedures without model/version validation.
- Entries marked `OFFICIAL_URL_SEED` need fresh direct retrieval or product-line verification before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model/SKU-level facts only from product/model/SKU-level official sources.
4. Preserve aliases as pointers to canonical records; do not create second truths.
5. Keep driver, firmware, BIOS, installer, OS image and vendor-tool binaries out of the repository by default.
6. Record review actor, validation status and rollback before canonical promotion.

## Validation

- Dedupe state read before candidate selection.
- Official-source-only endpoint seeds.
- Current web verification was performed for selected official support/download pages; seed-only entries are explicitly marked.
- No secrets, serials, customer data, account pages, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs, OS images or manual bodies stored.
- Data-loss classifier: LOW, additive proposal/status/index files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 014 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
