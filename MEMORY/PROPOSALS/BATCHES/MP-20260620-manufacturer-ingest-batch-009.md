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

Eighth continued bounded manufacturer-ingest batch. This batch focuses on industrial automation, power/UPS, enterprise edge/networking, barcode/mobile-computing and diagnostic-tool manufacturers after reading the active resume/dedupe state.

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
| `SCHNEIDER_ELECTRIC` | Schneider Electric | APC lineage, EcoStruxure | https://www.se.com/ | https://www.se.com/ww/en/download/ | power_ups, industrial_pc, networking, software_games, smart_home | OFFICIAL_SEARCH_CONFIRMED |
| `EATON` | Eaton | Eaton Power Quality | https://www.eaton.com/ | https://www.eaton.com/us/en-us/support.html | power_ups, networking, industrial_pc, cooling_power | OFFICIAL_URL_SEED |
| `VERTIV` | Vertiv | Liebert lineage | https://www.vertiv.com/ | https://www.vertiv.com/en-us/support/ | power_ups, cooling_power, server_oems, industrial_pc | OFFICIAL_URL_SEED |
| `CYBERPOWER` | CyberPower | CyberPower Systems | https://www.cyberpowersystems.com/ | https://www.cyberpowersystems.com/support/ | power_ups, cooling_power, smart_home | OFFICIAL_URL_SEED |
| `TRIPP_LITE` | Tripp Lite | Eaton Tripp Lite | https://tripplite.eaton.com/ | https://tripplite.eaton.com/support | power_ups, peripherals, networking, cooling_power | OFFICIAL_URL_SEED |
| `SIEMENS` | Siemens | Siemens Industry, SiePortal | https://www.siemens.com/ | https://support.industry.siemens.com/ | industrial_pc, networking, software_games, automotive_diagnostic_devices | OFFICIAL_SEARCH_CONFIRMED |
| `PHOENIX_CONTACT` | Phoenix Contact | Phoenix Contact GmbH | https://www.phoenixcontact.com/ | https://www.phoenixcontact.com/en-us/service-and-support | industrial_pc, networking, radio_iot, power_ups | OFFICIAL_URL_SEED |
| `WAGO` | WAGO | WAGO Kontakttechnik | https://www.wago.com/ | https://www.wago.com/global/support | industrial_pc, networking, radio_iot, software_games | OFFICIAL_URL_SEED |
| `BECKHOFF` | Beckhoff Automation | Beckhoff | https://www.beckhoff.com/ | https://www.beckhoff.com/en-en/support/ | industrial_pc, networking, software_games | OFFICIAL_URL_SEED |
| `MOXA` | Moxa | Moxa Technologies | https://www.moxa.com/ | https://www.moxa.com/en/support | networking, industrial_pc, radio_iot, software_games | OFFICIAL_URL_SEED |
| `HMS_NETWORKS` | HMS Networks | Anybus, Ewon, Ixxat | https://www.hms-networks.com/ | https://www.hms-networks.com/support | networking, industrial_pc, radio_iot, software_games | OFFICIAL_URL_SEED |
| `TELIT_CINTERION` | Telit Cinterion | Telit, Cinterion | https://www.telit.com/ | https://www.telit.com/support/ | radio_iot, networking, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `CRADLEPOINT` | Cradlepoint | Ericsson Cradlepoint | https://cradlepoint.com/ | https://customer.cradlepoint.com/s/ | networking, router_wifi, radio_iot, software_games | OFFICIAL_URL_SEED |
| `ZEBRA_TECHNOLOGIES` | Zebra Technologies | Zebra | https://www.zebra.com/ | https://www.zebra.com/us/en/support-downloads.html | printer_scanner, peripherals, networking, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `HONEYWELL` | Honeywell | Honeywell Productivity Solutions and Services | https://sps.honeywell.com/ | https://sps-support.honeywell.com/ | printer_scanner, peripherals, industrial_pc, smart_home, software_games | OFFICIAL_URL_SEED |
| `DATALOGIC` | Datalogic | Datalogic ADC | https://www.datalogic.com/ | https://www.datalogic.com/eng/support-89.html | printer_scanner, peripherals, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `BLUEBIRD` | Bluebird | Bluebird Inc. | https://www.bluebirdcorp.com/ | https://www.bluebirdcorp.com/support | smartphone_tablet, peripherals, industrial_pc | OFFICIAL_URL_SEED |
| `UNITECH` | Unitech | Unitech Electronics | https://www.ute.com/ | https://www.ute.com/support | peripherals, printer_scanner, industrial_pc | OFFICIAL_URL_SEED |
| `SOCKET_MOBILE` | Socket Mobile | SocketScan | https://www.socketmobile.com/ | https://www.socketmobile.com/support | peripherals, printer_scanner, smartphone_tablet | OFFICIAL_URL_SEED |
| `PROGLOVE` | ProGlove | Workaround GmbH | https://www.proglove.com/ | https://www.proglove.com/support/ | peripherals, industrial_pc, wearable_scanner | OFFICIAL_URL_SEED |
| `AUTEL` | Autel | Autel Automotive, Autel Robotics not alias | https://www.autel.com/ | https://www.autel.com/support/ | automotive_diagnostic_devices, software_games | OFFICIAL_URL_SEED |
| `LAUNCH_TECH` | LAUNCH Tech | LAUNCH, Launch X431 | https://www.cnlaunch.com/ | https://en.cnlaunch.com/support/ | automotive_diagnostic_devices, software_games | OFFICIAL_URL_SEED |
| `TOPDON` | TOPDON | TOPDON Technology | https://www.topdon.com/ | https://www.topdon.com/pages/support | automotive_diagnostic_devices, power_ups, software_games | OFFICIAL_URL_SEED |
| `SCANTOOL_NET` | ScanTool.net | OBDLink | https://www.scantool.net/ | https://www.scantool.net/downloads/ | automotive_diagnostic_devices, software_games | OFFICIAL_URL_SEED |
| `HIKVISION` | Hikvision | Hangzhou Hikvision Digital Technology | https://www.hikvision.com/ | https://www.hikvision.com/en/support/ | camera_imaging, networking, security, software_games | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `SCHNEIDER_ELECTRIC`, `EATON` and `TRIPP_LITE`: brand and acquisition lineage can overlap. Keep APC, Eaton and Tripp Lite support scopes explicit until alias registry review.
- `SIEMENS`, `PHOENIX_CONTACT`, `WAGO`, `BECKHOFF`, `MOXA`, `HMS_NETWORKS` and `TELIT_CINTERION`: industrial products often include firmware, fieldbus stacks and safety-relevant configurations. Store link-only metadata until product/model/version review is complete.
- `CRADLEPOINT`: support/download access may be account-gated. Store only public metadata unless authorized evidence is available.
- `ZEBRA_TECHNOLOGIES`, `HONEYWELL`, `DATALOGIC`, `BLUEBIRD`, `UNITECH`, `SOCKET_MOBILE` and `PROGLOVE`: scanner/mobile-computing facts require exact model, OS, firmware and regional support scope.
- `AUTEL`, `LAUNCH_TECH`, `TOPDON` and `SCANTOOL_NET`: automotive diagnostic tooling can involve vehicle safety, licensing, subscriptions and firmware updates. Keep claims product/version-specific.
- `HIKVISION`: camera/security products require privacy/security-sensitive handling, region scoping and no unsafe bypass guidance.
- Entries marked `OFFICIAL_URL_SEED` need fresh direct retrieval or product-line verification before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model/device-line facts only from official product/model sources.
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
