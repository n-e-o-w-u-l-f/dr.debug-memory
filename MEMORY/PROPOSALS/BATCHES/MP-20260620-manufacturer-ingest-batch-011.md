# MP-20260620-manufacturer-ingest-batch-011

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

Tenth continued bounded manufacturer-ingest batch. This batch focuses on label/POS printer vendors, laboratory/test instrument vendors, thermal imaging and desktop fabrication/laser/3D-printer manufacturers after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 010. Batch 011 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `TSC_AUTO_ID` | TSC Auto ID | TSC Printers, Printronix Auto ID lineage | https://www.tscprinters.com/ | https://emea.tscprinters.com/en | barcode_pos, printer_scanner, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SATO` | SATO | SATO Global, SATO America, SATO Europe | https://www.sato-global.com/ | https://www.sato-global.com/support/drivers/ | barcode_pos, printer_scanner, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `CITIZEN_SYSTEMS` | Citizen Systems | Citizen, Citizen Printers | https://www.citizen-systems.com/ | https://www.citizen-systems.com/en/support | barcode_pos, printer_scanner, peripherals | OFFICIAL_URL_SEED |
| `BIXOLON` | BIXOLON | Bixolon Co., Ltd. | https://bixolon.com/ | https://bixolon.com/download/ | barcode_pos, printer_scanner, peripherals, software_games | OFFICIAL_URL_SEED |
| `GODEX` | GoDEX | GoDEX International | https://www.godexintl.com/ | https://www.godexintl.com/support | barcode_pos, printer_scanner, peripherals, software_games | OFFICIAL_URL_SEED |
| `BRADY` | Brady | Brady Corporation | https://www.bradyid.com/ | https://www.bradyid.com/support | barcode_pos, printer_scanner, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `DYMO` | DYMO | Dymo, Newell Brands DYMO | https://www.dymo.com/ | https://www.dymo.com/support | printer_scanner, barcode_pos, peripherals, software_games | OFFICIAL_URL_SEED |
| `METTLER_TOLEDO` | Mettler Toledo | METTLER TOLEDO | https://www.mt.com/ | https://www.mt.com/home/library/software-downloads.html | test_measurement, lab_equipment, industrial_pc, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `OHAUS` | OHAUS | OHAUS Corporation | https://www.ohaus.com/ | https://www.ohaus.com/en-us/support | test_measurement, lab_equipment, software_games | OFFICIAL_URL_SEED |
| `SARTORIUS` | Sartorius | Sartorius AG | https://www.sartorius.com/ | https://www.sartorius.com/en/service-support | test_measurement, lab_equipment, software_games | OFFICIAL_URL_SEED |
| `THERMO_FISHER` | Thermo Fisher Scientific | Thermo Scientific, Fisher Scientific | https://www.thermofisher.com/ | https://www.thermofisher.com/support | lab_equipment, test_measurement, medical_consumer_devices, software_games | OFFICIAL_URL_SEED |
| `HACH` | Hach | Hach Company | https://www.hach.com/ | https://support.hach.com/ | test_measurement, lab_equipment, sensors, software_games | OFFICIAL_URL_SEED |
| `HANNA_INSTRUMENTS` | Hanna Instruments | Hanna | https://www.hannainst.com/ | https://www.hannainst.com/hanna-support | test_measurement, lab_equipment, sensors | OFFICIAL_URL_SEED |
| `TELEDYNE_FLIR` | Teledyne FLIR | FLIR, FLIR Systems | https://www.flir.com/ | https://www.flir.com/support/ | thermal_imaging, camera_imaging, test_measurement, software_games | OFFICIAL_URL_SEED |
| `EXTECH` | Extech | Extech Instruments, Teledyne FLIR Extech | https://www.extech.com/ | https://www.extech.com/support | test_measurement, thermal_imaging, software_games | OFFICIAL_URL_SEED |
| `SNAPMAKER` | Snapmaker | Snapmaker 2.0, Snapmaker Artisan, Snapmaker Luban | https://www.snapmaker.com/ | https://support.snapmaker.com/hc/en-us/categories/360005617793-Downloads | 3d_printer, laser_cnc, software_games, embedded_sbc | OFFICIAL_SEARCH_CONFIRMED |
| `XTOOL` | xTool | xTool Creative Space, Makeblock xTool | https://www.xtool.com/ | https://support.xtool.com/download | laser_cnc, software_games, camera_imaging | OFFICIAL_SEARCH_CONFIRMED |
| `GLOWFORGE` | Glowforge | Glowforge Inc. | https://glowforge.com/ | https://support.glowforge.com/ | laser_cnc, software_games, camera_imaging | OFFICIAL_URL_SEED |
| `ORTUR` | Ortur | Ortur Laser | https://ortur.net/ | https://ortur.net/pages/download-center | laser_cnc, software_games | OFFICIAL_URL_SEED |
| `SCULPFUN` | Sculpfun | SCULPFUN Laser | https://www.sculpfun.com/ | https://www.sculpfun.com/pages/download | laser_cnc, software_games | OFFICIAL_URL_SEED |
| `ATOMSTACK` | Atomstack | Atomstack Laser | https://atomstack.com/ | https://atomstack.com/pages/download | laser_cnc, software_games | OFFICIAL_URL_SEED |
| `FLASHFORGE` | Flashforge | Zhejiang Flashforge 3D Technology | https://www.flashforge.com/ | https://flashforge.com/pages/download-center | 3d_printer, software_games | OFFICIAL_URL_SEED |
| `QIDI_TECH` | QIDI Tech | QIDI, Qidi Technology | https://qidi3d.com/ | https://qidi3d.com/pages/software-firmware | 3d_printer, software_games | OFFICIAL_URL_SEED |
| `RAISE3D` | Raise3D | Raise3D Technologies | https://www.raise3d.com/ | https://www.raise3d.com/download/ | 3d_printer, software_games | OFFICIAL_URL_SEED |
| `TIERTIME` | Tiertime | Beijing Tiertime Technology, UP printers | https://www.tiertime.com/ | https://www.tiertime.com/download | 3d_printer, software_games | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `TSC_AUTO_ID`, `SATO`, `CITIZEN_SYSTEMS`, `BIXOLON`, `GODEX`, `BRADY` and `DYMO`: printer and barcode devices often expose drivers, firmware, SDKs and label-design tools. Store link-only metadata until exact model/version scope is reviewed.
- `METTLER_TOLEDO`, `OHAUS`, `SARTORIUS`, `THERMO_FISHER`, `HACH` and `HANNA_INSTRUMENTS`: lab and measurement devices may be regulated or calibration-sensitive. Do not store calibration, medical or compliance claims without exact model, document version and official source scope.
- `TELEDYNE_FLIR` and `EXTECH`: thermal imaging and measurement tools may include firmware/software downloads. Store no binaries and do not generalize camera/tool facts across product families.
- `SNAPMAKER`, `XTOOL`, `GLOWFORGE`, `ORTUR`, `SCULPFUN`, `ATOMSTACK`, `FLASHFORGE`, `QIDI_TECH`, `RAISE3D` and `TIERTIME`: 3D-printer/laser/CNC tooling often includes firmware, slicers, drivers and safety-relevant procedures. Keep link-only metadata and require exact model/version/safety review before canonical promotion.
- `XTOOL`: distinguish xTool laser/craft equipment from Shenzhen Xtooltech automotive diagnostic products; do not merge based on name similarity.
- Entries marked `OFFICIAL_URL_SEED` need fresh direct retrieval or product-line verification before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model-level facts only from product/model-level official sources.
4. Preserve aliases as pointers to canonical records; do not create second truths.
5. Keep driver, firmware, BIOS, installer and vendor-tool binaries out of the repository by default.
6. Record review actor, validation status and rollback before canonical promotion.

## Validation

- Dedupe state read before candidate selection.
- Official-source-only endpoint seeds.
- Current web verification was performed for selected official support/download pages; seed-only entries are explicitly marked.
- No secrets, serials, customer data, account pages, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs or manual bodies stored.
- Data-loss classifier: LOW, additive proposal/status/index files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 011 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
