# MP-20260619-manufacturer-ingest-batch-003

Status: PROPOSAL_ONLY  
Mode: OWNER_ADMIN_MODE bounded apply batch  
Repository: n-e-o-w-u-l-f/dr.debug-memory  
Created: 2026-06-19  
Scope: manufacturer official endpoint discovery, proposal-first ingest  
Batch size requested/applied: 25 / 25  
Canonical promotion: none  
Binary downloads: none  
Rehosting/archive upload: none  
Raw crawl dumps: none  

## Purpose

Second continued bounded batch for the requested manufacturer ingest loop. This file records official-source manufacturer endpoint seeds only. It does not create canonical manufacturer profiles and does not assert model-level driver, firmware, BIOS, compatibility, error-code or fix facts.

## Continuation/dedupe notes

Excluded from this batch because they were already present in existing manufacturer trees or earlier proposal batches:

- Existing manufacturer trees observed earlier: Dell, HP, Lenovo.
- Previous proposal batch: Acer, ASUS, ASRock, GIGABYTE, MSI, Intel, AMD, NVIDIA, Samsung, Western Digital, Kingston, Crucial, NETGEAR, TP-Link, Ubiquiti, Brother, Canon, Epson, Logitech, Raspberry Pi, Arduino, Prusa, Apple, Microsoft, Sony.

## Candidate schema defaults

```yaml
family: MANUFACTURERS
category: manufacturer
status: RESEARCH_SEED
confidence: MEDIUM
validation_status: SOURCE_CONFIRMED_FOR_OFFICIAL_ENDPOINT_ONLY
review_required: true
source_class: A_PRIMARY_OFFICIAL_VENDOR
retrieved_at: "2026-06-19"
canonical_promotion: "blocked pending repository-wide dedupe, source-record review and reviewer approval"
content_policy: "LINK_ONLY_METADATA"
binary_policy: "NO_DOWNLOADS_NO_REHOSTING"
```

## Batch candidates

| Candidate ID | Canonical name candidate | Aliases | Official home | Support/source URL | Category candidates | Source status |
|---|---|---|---|---|---|---|
| `SEAGATE` | Seagate | Seagate Technology | https://www.seagate.com/ | https://www.seagate.com/support/ | storage | OFFICIAL_URL_REDIRECT_LOOP_WITH_TOOL |
| `SYNOLOGY` | Synology | Synology Inc. | https://www.synology.com/ | https://www.synology.com/support | nas, storage, networking, smart_home | OFFICIAL_URL_RETRIEVED_REDIRECT_TO_KB |
| `QNAP` | QNAP | QNAP Systems | https://www.qnap.com/ | https://www.qnap.com/en/download | nas, storage, networking, smart_home | OFFICIAL_DOWNLOAD_CENTER_RETRIEVED |
| `CISCO` | Cisco | Cisco Systems | https://www.cisco.com/ | https://www.cisco.com/c/en/us/support/index.html | networking, router_wifi, server_oems, industrial_pc, software_games | OFFICIAL_SUPPORT_SEARCH_CONFIRMED |
| `JUNIPER` | Juniper Networks | Juniper | https://www.juniper.net/ | https://support.juniper.net/support/ | networking, router_wifi, server_oems | OFFICIAL_URL_RETRIEVED |
| `MIKROTIK` | MikroTik | MikroTikls SIA, RouterBOARD | https://mikrotik.com/ | https://mikrotik.com/support | networking, router_wifi, radio_iot | OFFICIAL_URL_RETRIEVED |
| `D_LINK` | D-Link | D-Link Systems, D-Link Corporation | https://www.dlink.com/ | https://support.dlink.com/ | networking, router_wifi, smart_home, camera_imaging | OFFICIAL_URL_RETRIEVED |
| `ZYXEL` | Zyxel | Zyxel Networks | https://www.zyxel.com/ | https://www.zyxel.com/global/en/support | networking, router_wifi, nas, security | OFFICIAL_URL_RETRIEVED |
| `LEXMARK` | Lexmark | Lexmark International | https://www.lexmark.com/ | https://support.lexmark.com/en_us.html | printer_scanner | OFFICIAL_SUPPORT_CONFIRMED |
| `XEROX` | Xerox | Xerox Corporation | https://www.xerox.com/ | https://www.support.xerox.com/ | printer_scanner | OFFICIAL_SUPPORT_CONFIRMED |
| `RICOH` | Ricoh | Ricoh Company, Ricoh USA, Ricoh Europe | https://www.ricoh.com/ | https://www.ricoh.com/support | printer_scanner, industrial_pc, software_games | OFFICIAL_SUPPORT_CONFIRMED |
| `KYOCERA` | Kyocera Document Solutions | Kyocera | https://www.kyoceradocumentsolutions.com/ | https://www.kyoceradocumentsolutions.com/global/en/support-and-download.html | printer_scanner | OFFICIAL_SUPPORT_CONFIRMED |
| `PANASONIC` | Panasonic | Panasonic Holdings, Panasonic Connect, Toughbook | https://www.panasonic.com/ | https://help.na.panasonic.com/ | tv_av, camera_imaging, audio, smartphone_tablet, industrial_pc, notebook_oems | OFFICIAL_SUPPORT_CONFIRMED |
| `LG` | LG | LG Electronics | https://www.lg.com/ | https://www.lg.com/html/support/home.html | tv_av, monitor_display, audio, smartphone_tablet, smart_home, desktop_oems | OFFICIAL_SUPPORT_CONFIRMED |
| `BOSE` | Bose | Bose Corporation, Bose Professional | https://www.bose.com/ | https://support.bose.com/s/ | audio, tv_av, smart_home | OFFICIAL_SUPPORT_CONFIRMED |
| `SENNHEISER` | Sennheiser | Sennheiser electronic, Sennheiser Hearing | https://www.sennheiser.com/ | https://www.sennheiser.com/en-us/support/downloads-and-instructions | audio | OFFICIAL_SUPPORT_CONFIRMED |
| `RAZER` | Razer | Razer Inc. | https://www.razer.com/ | https://mysupport.razer.com/ | gaming_accessories, notebook_oems, peripherals, audio, software_games | OFFICIAL_SUPPORT_CONFIRMED |
| `CORSAIR` | CORSAIR | Corsair Gaming, Elgato, SCUF | https://www.corsair.com/ | https://www.corsair.com/ww/en/s/downloads | pc_components, cooling_power, peripherals, gaming_accessories, audio, software_games | OFFICIAL_DOWNLOADS_CONFIRMED |
| `COOLER_MASTER` | Cooler Master | Cooler Master Technology | https://www.coolermaster.com/ | https://www.coolermaster.com/en-global/masterplus.html | pc_components, cooling_power, peripherals, gaming_accessories, software_games | OFFICIAL_SOFTWARE_PAGE_CONFIRMED |
| `SEASONIC` | Seasonic | Sea Sonic Electronics | https://seasonic.com/ | https://seasonic.com/support/ | cooling_power, pc_components | OFFICIAL_SUPPORT_CONFIRMED |
| `ANKER` | Anker | Anker Innovations, Anker SOLIX, AnkerWork | https://www.anker.com/ | https://service.anker.com/ | audio, smart_home, cooling_power, peripherals | OFFICIAL_SUPPORT_CONFIRMED |
| `GARMIN` | Garmin | Garmin Ltd. | https://www.garmin.com/ | https://support.garmin.com/ | medical_consumer_devices, automotive_diagnostic_devices, radio_iot, software_games | OFFICIAL_SUPPORT_CONFIRMED |
| `FAIRPHONE` | Fairphone | Fairphone B.V. | https://www.fairphone.com/ | https://support.fairphone.com/hc/en-us | smartphone_tablet | OFFICIAL_SUPPORT_CONFIRMED |
| `FRAMEWORK` | Framework | Framework Computer | https://frame.work/ | https://knowledgebase.frame.work/bios-and-drivers-downloads-rJ3PaCexh | notebook_oems, desktop_oems, pc_components | OFFICIAL_KB_CONFIRMED |
| `STARTECH` | StarTech.com | StarTech.com Ltd. | https://www.startech.com/ | https://www.startech.com/support/drivers-and-downloads | peripherals, networking, storage, monitor_display | OFFICIAL_SUPPORT_CONFIRMED |

## Per-candidate limitations

- `SEAGATE`: support URL is official but the web retrieval tool encountered a redirect loop. Re-check with a browser or vendor page before promotion.
- `CISCO`: support pages can include login-gated software-download flows. Store public support metadata only unless authorized evidence is available.
- `JUNIPER`, `CISCO`, `MIKROTIK`, `D_LINK`, `ZYXEL`, `AXIS`-like networking/security vendors require careful model-level firmware validation before any firmware fact is stored.
- `PANASONIC`: support is split across consumer, Toughbook/PC, industrial and Panasonic Connect properties. Use product-line-specific endpoints before promotion.
- `SENNHEISER`: consumer/professional and hearing-support properties may diverge. Keep aliases and support endpoints scoped.
- `ANKER`: Anker, AnkerWork and Anker SOLIX support areas may require separate source records.
- `GARMIN`: aviation, marine, fitness and automotive support areas may have distinct update mechanisms and regional pages.
- `FRAMEWORK`: BIOS/driver pages are model/generation-specific. Do not generalize one BIOS or driver bundle across models.
- `STARTECH`: driver/manual discovery is product-ID based. Model/SKU evidence is required before adding device or driver candidates.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model-level facts only from product/model-level official sources.
4. Preserve aliases as pointers to canonical records; do not create second truths.
5. Keep driver, firmware, BIOS, installer and vendor-tool binaries out of the repository by default.
6. Record review actor, validation status and rollback before canonical promotion.

## Validation

- Official-source-only endpoint discovery.
- No secrets, serials, customer data, account pages, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs or manual bodies stored.
- Data-loss classifier: LOW, additive proposal files only.
- Rollback: remove this proposal file, this batch's status companion, index supplement and report.

## Resume pointer

Next safe loop should re-read current repository state, dedupe against existing manufacturer trees and batches 002/003, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
