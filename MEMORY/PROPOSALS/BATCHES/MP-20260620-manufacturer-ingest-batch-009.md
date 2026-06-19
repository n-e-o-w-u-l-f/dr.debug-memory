# MP-20260620-manufacturer-ingest-batch-009

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

Eighth continued bounded manufacturer-ingest batch. This batch focuses on barcode/POS, UPS/power, industrial automation, industrial computing, security-key and smart-home manufacturers after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 008. Batch 009 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `ZEBRA_TECHNOLOGIES` | Zebra Technologies | Zebra, Zebra Enterprise | https://www.zebra.com/ | https://www.zebra.com/us/en/support-downloads.html | printer_scanner, barcode_pos, industrial_pc, networking, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `HONEYWELL` | Honeywell | Honeywell Productivity, Honeywell Sensing | https://www.honeywell.com/ | https://sps-support.honeywell.com/ | barcode_pos, industrial_pc, sensors, networking, security | OFFICIAL_URL_SEED |
| `DATALOGIC` | Datalogic | Datalogic S.p.A. | https://www.datalogic.com/ | https://www.datalogic.com/eng/support-services/automatic-data-capture/downloads-utilities-dw-82.html | barcode_pos, printer_scanner, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `SOCKET_MOBILE` | Socket Mobile | SocketScan | https://www.socketmobile.com/ | https://www.socketmobile.com/support | barcode_pos, peripherals, software_games | OFFICIAL_URL_SEED |
| `STAR_MICRONICS` | Star Micronics | Star, Star Micronics America | https://www.starmicronics.com/ | https://starmicronics.com/support/ | barcode_pos, printer_scanner, peripherals | OFFICIAL_URL_SEED |
| `SCHNEIDER_ELECTRIC` | Schneider Electric | APC, APC by Schneider Electric | https://www.se.com/ | https://www.se.com/ww/en/download/ | cooling_power, industrial_pc, networking, smart_home, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `EATON` | Eaton | Eaton Power Quality | https://www.eaton.com/ | https://www.eaton.com/us/en-us/support.html | cooling_power, networking, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `CYBERPOWER_SYSTEMS` | CyberPower Systems | CyberPower | https://www.cyberpowersystems.com/ | https://www.cyberpowersystems.com/support/ | cooling_power, networking, software_games | OFFICIAL_URL_SEED |
| `VERTIV` | Vertiv | Liebert lineage | https://www.vertiv.com/ | https://www.vertiv.com/en-us/support/ | cooling_power, networking, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `SIEMENS` | Siemens | Siemens Industry, Siemens Digital Industries | https://www.siemens.com/ | https://support.industry.siemens.com/ | industrial_pc, networking, automation, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ADVANTECH` | Advantech | Advantech Co., Ltd. | https://www.advantech.com/ | https://www.advantech.com/en/support | industrial_pc, embedded_sbc, networking, software_games | OFFICIAL_URL_SEED |
| `AAEON` | AAEON | AAEON Technology | https://www.aaeon.com/ | https://www.aaeon.com/en/support | industrial_pc, embedded_sbc, networking | OFFICIAL_URL_SEED |
| `BECKHOFF` | Beckhoff Automation | Beckhoff | https://www.beckhoff.com/ | https://www.beckhoff.com/en-en/support/ | industrial_pc, automation, networking, software_games | OFFICIAL_URL_SEED |
| `PHOENIX_CONTACT` | Phoenix Contact | Phoenix Contact GmbH | https://www.phoenixcontact.com/ | https://www.phoenixcontact.com/en-us/service-and-support | industrial_pc, networking, automation, cooling_power | OFFICIAL_URL_SEED |
| `WAGO` | WAGO | WAGO Kontakttechnik | https://www.wago.com/ | https://www.wago.com/global/support | industrial_pc, automation, networking, software_games | OFFICIAL_URL_SEED |
| `MOXA` | Moxa | Moxa Inc. | https://www.moxa.com/ | https://www.moxa.com/en/support | networking, industrial_pc, automation, software_games | OFFICIAL_URL_SEED |
| `HMS_NETWORKS` | HMS Networks | Anybus, Ewon, Ixxat | https://www.hms-networks.com/ | https://www.hms-networks.com/support | networking, industrial_pc, radio_iot, software_games | OFFICIAL_URL_SEED |
| `YUBICO` | Yubico | YubiKey | https://www.yubico.com/ | https://www.yubico.com/support/download/ | security, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `NITROKEY` | Nitrokey | Nitrokey GmbH | https://www.nitrokey.com/ | https://support.nitrokey.com/ | security, peripherals, software_games | OFFICIAL_URL_SEED |
| `SHELLY` | Shelly | Shelly Group, Allterco Robotics lineage | https://www.shelly.com/ | https://support.shelly.cloud/ | smart_home, radio_iot, networking, software_games | OFFICIAL_URL_SEED |
| `ITEAD` | ITEAD | SONOFF, ITEAD Studio | https://itead.cc/ | https://sonoff.tech/support/ | smart_home, radio_iot, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `AQARA` | Aqara | Lumi United, Aqara Home | https://www.aqara.com/ | https://www.aqara.com/en/support/ | smart_home, radio_iot, sensors, software_games | OFFICIAL_URL_SEED |
| `LUTRON` | Lutron | Lutron Electronics | https://www.lutron.com/ | https://support.lutron.com/ | smart_home, lighting, radio_iot, software_games | OFFICIAL_URL_SEED |
| `ECOBEE` | ecobee | Ecobee Inc. | https://www.ecobee.com/ | https://support.ecobee.com/ | smart_home, sensors, software_games | OFFICIAL_URL_SEED |
| `NETATMO` | Netatmo | Netatmo by Legrand | https://www.netatmo.com/ | https://helpcenter.netatmo.com/ | smart_home, sensors, camera_imaging, software_games | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `ZEBRA_TECHNOLOGIES`, `DATALOGIC`, `SOCKET_MOBILE` and `STAR_MICRONICS`: barcode/POS devices often expose firmware, driver, SDK and configuration-tool downloads. Store link-only metadata until model/version scope is reviewed.
- `HONEYWELL`: Honeywell has multiple product divisions. Keep safety, building, sensing and productivity/barcode scopes separate.
- `SCHNEIDER_ELECTRIC`: APC is a Schneider Electric brand; do not create separate canonical APC facts unless an alias/brand record explicitly scopes them.
- `EATON`, `CYBERPOWER_SYSTEMS`, `VERTIV` and Schneider/APC UPS products may include firmware update paths; do not store firmware facts without exact model and revision scope.
- `SIEMENS`, `BECKHOFF`, `PHOENIX_CONTACT`, `WAGO`, `MOXA`, `ADVANTECH`, `AAEON` and `HMS_NETWORKS`: industrial automation devices may be production-critical. Any repair/update plan requires platform gate, backup, rollback and maintenance-window checks.
- `YUBICO` and `NITROKEY`: security-key tools may affect credentials. Store no secrets and avoid credential-handling instructions in factual records.
- `SHELLY`, `ITEAD`, `AQARA`, `LUTRON`, `ECOBEE` and `NETATMO`: smart-home devices can expose privacy/security-sensitive data. Store model metadata only, no account or user-home data.
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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 009 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
