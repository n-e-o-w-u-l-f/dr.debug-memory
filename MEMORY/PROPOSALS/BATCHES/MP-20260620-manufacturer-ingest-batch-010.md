# MP-20260620-manufacturer-ingest-batch-010

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

Ninth continued bounded manufacturer-ingest batch. This batch focuses on automotive diagnostics/key tools, portable power stations, robot vacuums, smart-home platforms and security-camera vendors after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 009. Batch 010 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `AUTEL` | Autel | Autel Intelligent Technology, Autel Automotive | https://www.autel.com/ | https://support.autel.com/ | automotive_diagnostic_devices, battery_service, key_programming, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `LAUNCH_TECH` | Launch Tech | LAUNCH, Launch X431 | https://www.cnlaunch.com/ | https://en.cnlaunch.com/support/ | automotive_diagnostic_devices, battery_service, key_programming, software_games | OFFICIAL_URL_SEED |
| `TOPDON` | TOPDON | TOPDON Incorporated | https://www.topdon.com/ | https://service.topdon.com/portal/en/home | automotive_diagnostic_devices, battery_service, thermal_imaging, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `INNOVA_ELECTRONICS` | Innova Electronics | Innova, RepairSolutions | https://www.innova.com/ | https://www.innova.com/pages/support | automotive_diagnostic_devices, software_games | OFFICIAL_URL_SEED |
| `SCANTOOL_NET` | ScanTool.net | OBDLink, ScanTool | https://www.scantool.net/ | https://www.scantool.net/downloads/ | automotive_diagnostic_devices, networking, software_games | OFFICIAL_URL_SEED |
| `XHORSE` | Xhorse | VVDI, Xhorse Electronics | https://xhorse.com/ | https://www.xhorse.com/ | automotive_diagnostic_devices, key_programming, security, software_games | OFFICIAL_SEARCH_CONFIRMED_LIMITED |
| `ECOFLOW` | EcoFlow | EcoFlow DELTA, EcoFlow RIVER | https://www.ecoflow.com/ | https://www.ecoflow.com/us/support/download/index | cooling_power, smart_home, software_games, solar_energy | OFFICIAL_SEARCH_CONFIRMED |
| `BLUETTI` | BLUETTI | PowerOak lineage | https://www.bluettipower.com/ | https://www.bluettipower.com/pages/user-guides | cooling_power, smart_home, solar_energy, software_games | OFFICIAL_URL_SEED |
| `JACKERY` | Jackery | Jackery Inc. | https://www.jackery.com/ | https://www.jackery.com/pages/support | cooling_power, solar_energy, smart_home | OFFICIAL_URL_SEED |
| `GOAL_ZERO` | Goal Zero | Goal Zero Yeti | https://www.goalzero.com/ | https://www.goalzero.com/pages/support | cooling_power, solar_energy, smart_home | OFFICIAL_URL_SEED |
| `ROBOROCK` | Roborock | Beijing Roborock Technology | https://global.roborock.com/ | https://global.roborock.com/pages/support | smart_home, robotics, vacuum_cleaner, software_games | OFFICIAL_URL_SEED |
| `ECOVACS` | ECOVACS | Ecovacs Robotics, DEEBOT | https://www.ecovacs.com/ | https://www.ecovacs.com/global/support | smart_home, robotics, vacuum_cleaner, software_games | OFFICIAL_URL_SEED |
| `IROBOT` | iRobot | Roomba, Braava | https://www.irobot.com/ | https://homesupport.irobot.com/ | smart_home, robotics, vacuum_cleaner, software_games | OFFICIAL_URL_SEED |
| `DREAME` | Dreame | Dreame Technology | https://www.dreametech.com/ | https://www.dreametech.com/pages/support | smart_home, robotics, vacuum_cleaner | OFFICIAL_URL_SEED |
| `NARWAL` | Narwal | Narwal Robotics | https://www.narwal.com/ | https://www.narwal.com/pages/support | smart_home, robotics, vacuum_cleaner | OFFICIAL_URL_SEED |
| `WYZE` | Wyze | Wyze Labs | https://www.wyze.com/ | https://support.wyze.com/ | smart_home, camera_imaging, security, software_games | OFFICIAL_URL_SEED |
| `GOVEE` | Govee | Govee Home, Shenzhen Intellirocks | https://www.govee.com/ | https://support.govee.com/ | smart_home, lighting, sensors, software_games | OFFICIAL_URL_SEED |
| `MEROSS` | Meross | Meross Technology | https://www.meross.com/ | https://www.meross.com/support | smart_home, networking, lighting, software_games | OFFICIAL_URL_SEED |
| `SWITCHBOT` | SwitchBot | Wonderlabs, SwitchBot | https://www.switch-bot.com/ | https://support.switch-bot.com/ | smart_home, robotics, sensors, software_games | OFFICIAL_URL_SEED |
| `TUYA` | Tuya | Tuya Smart, Smart Life | https://www.tuya.com/ | https://support.tuya.com/ | smart_home, radio_iot, software_games, networking | OFFICIAL_URL_SEED |
| `YEELIGHT` | Yeelight | Qingdao Yeelink, Yeelight Pro | https://www.yeelight.com/ | https://www.yeelight.com/en_US/support | smart_home, lighting, software_games | OFFICIAL_URL_SEED |
| `EZVIZ` | EZVIZ | EZVIZ Inc. | https://www.ezviz.com/ | https://support.ezviz.com/ | camera_imaging, smart_home, security, networking | OFFICIAL_URL_SEED |
| `HIKVISION` | Hikvision | Hangzhou Hikvision Digital Technology | https://www.hikvision.com/ | https://www.hikvision.com/en/support/ | camera_imaging, security, networking, software_games | OFFICIAL_URL_SEED |
| `DAHUA` | Dahua Technology | Dahua | https://www.dahuasecurity.com/ | https://www.dahuasecurity.com/support | camera_imaging, security, networking, software_games | OFFICIAL_URL_SEED |
| `UNI_T` | UNI-T | Uni-Trend Technology | https://www.uni-trend.com/ | https://meters.uni-trend.com/download | test_measurement, software_games | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `AUTEL`, `LAUNCH_TECH`, `TOPDON`, `INNOVA_ELECTRONICS`, `SCANTOOL_NET` and `XHORSE`: automotive diagnostics/key-programming tools may affect vehicles, immobilizers, safety systems and regulated features. Store only source metadata until exact model, software version, vehicle scope and legal/safety context are reviewed.
- `ECOFLOW`, `BLUETTI`, `JACKERY` and `GOAL_ZERO`: power stations and solar/inverter devices may have battery, mains-voltage and firmware-update risks. Do not store firmware facts without exact model and revision scope.
- `ROBOROCK`, `ECOVACS`, `IROBOT`, `DREAME` and `NARWAL`: robot vacuums may expose maps, camera data or account data. Store no user-home/account information.
- `WYZE`, `EZVIZ`, `HIKVISION` and `DAHUA`: camera/security devices require privacy/security-sensitive handling. Store model metadata only and avoid account, credential, surveillance or bypass details.
- `TUYA`, `SHELLY`, `ITEAD`, `AQARA`, `MEROSS`, `SWITCHBOT`, `YEELIGHT` and related smart-home platforms may overlap by OEM ecosystem. Use source-backed aliases and do not create second truths.
- `UNI_T`: test-equipment downloads and firmware/software pages require product/model/version validation before canonical promotion.
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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 010 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
