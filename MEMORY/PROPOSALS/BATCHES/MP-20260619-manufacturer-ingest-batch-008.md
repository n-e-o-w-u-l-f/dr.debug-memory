# MP-20260619-manufacturer-ingest-batch-008

Status: PROPOSAL_ONLY  
Mode: OWNER_ADMIN_MODE bounded apply batch  
Repository: n-e-o-w-u-l-f/dr.debug-memory  
Created: 2026-06-19  
Scope: manufacturer official endpoint discovery after dedupe-index installation  
Batch size requested/applied: 25 / 25  
Canonical promotion: none  
Binary downloads: none  
Rehosting/archive upload: none  
Raw crawl dumps: none  

## Purpose

Seventh continued bounded manufacturer-ingest batch. This batch focuses on test equipment, maker-board vendors, semiconductor vendors and wireless/IoT module manufacturers after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 007. Batch 008 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `FLUKE` | Fluke | Fluke Corporation, Fluke Networks, Fluke Biomedical | https://www.fluke.com/ | https://www.fluke.com/en-us/support | test_measurement, networking, medical_consumer_devices, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `TEKTRONIX` | Tektronix | Tek, Keithley lineage | https://www.tek.com/ | https://www.tek.com/en/support | test_measurement, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `KEYSIGHT` | Keysight | Keysight Technologies, Agilent lineage | https://www.keysight.com/ | https://support.keysight.com/s/ | test_measurement, software_games, networking | OFFICIAL_SEARCH_CONFIRMED |
| `RIGOL` | RIGOL | Rigol Technologies | https://www.rigoltech.com/ | https://rigol.my.site.com/support/s/ | test_measurement, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SIGLENT` | SIGLENT | Siglent Technologies | https://www.siglent.com/ | https://siglentna.com/service-and-support/firmware-software/ | test_measurement, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SALEAE` | Saleae | Saleae Logic | https://www.saleae.com/ | https://support.saleae.com/ | test_measurement, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `PICO_TECHNOLOGY` | Pico Technology | PicoScope, PicoLog | https://www.picotech.com/ | https://www.picotech.com/downloads | test_measurement, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SEEED_STUDIO` | Seeed Studio | Seeed, Seeed Wiki | https://www.seeedstudio.com/ | https://wiki.seeedstudio.com/knowledgebase/ | embedded_sbc, radio_iot, sensors, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ADAFRUIT` | Adafruit | Adafruit Industries | https://www.adafruit.com/ | https://www.adafruit.com/support | embedded_sbc, sensors, radio_iot, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SPARKFUN` | SparkFun | SparkFun Electronics | https://www.sparkfun.com/ | https://www.sparkfun.com/contact_us | embedded_sbc, sensors, radio_iot, software_games | OFFICIAL_URL_SEED |
| `WAVESHARE` | Waveshare | Waveshare Electronics | https://www.waveshare.com/ | https://www.waveshare.com/wiki/Main_Page | embedded_sbc, sensors, monitor_display, radio_iot | OFFICIAL_URL_SEED |
| `ESPRESSIF` | Espressif Systems | ESP, ESP32, ESP-IDF | https://www.espressif.com/ | https://www.espressif.com/en/support/documents/technical-documents | semiconductor, radio_iot, embedded_sbc, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `NORDIC_SEMICONDUCTOR` | Nordic Semiconductor | Nordic, nRF | https://www.nordicsemi.com/ | https://docs.nordicsemi.com/ | semiconductor, radio_iot, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `STMICROELECTRONICS` | STMicroelectronics | ST, STM32 | https://www.st.com/ | https://www.st.com/content/st_com/en/support/support-home.html | semiconductor, embedded_sbc, sensors, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `TEXAS_INSTRUMENTS` | Texas Instruments | TI | https://www.ti.com/ | https://www.ti.com/support-quality/support.html | semiconductor, embedded_sbc, sensors, software_games | OFFICIAL_URL_SEED |
| `MICROCHIP` | Microchip Technology | Microchip, Atmel lineage | https://www.microchip.com/ | https://www.microchip.com/en-us/support | semiconductor, embedded_sbc, radio_iot, software_games | OFFICIAL_URL_SEED |
| `NXP` | NXP Semiconductors | NXP, Freescale lineage | https://www.nxp.com/ | https://www.nxp.com/support/support:SUPPORTHOME | semiconductor, embedded_sbc, automotive_diagnostic_devices, radio_iot, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SILICON_LABS` | Silicon Labs | Silicon Laboratories, SiLabs | https://www.silabs.com/ | https://www.silabs.com/support | semiconductor, radio_iot, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `RENESAS` | Renesas Electronics | Renesas | https://www.renesas.com/ | https://www.renesas.com/en/support | semiconductor, embedded_sbc, automotive_diagnostic_devices, software_games | OFFICIAL_URL_SEED |
| `INFINEON` | Infineon Technologies | Infineon | https://www.infineon.com/ | https://www.infineon.com/cms/en/support/ | semiconductor, sensors, automotive_diagnostic_devices, software_games | OFFICIAL_URL_SEED |
| `QUECTEL` | Quectel | Quectel Wireless Solutions | https://www.quectel.com/ | https://www.quectel.com/support/ | radio_iot, networking, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `U_BLOX` | u-blox | u-blox AG | https://www.u-blox.com/ | https://www.u-blox.com/en/support | radio_iot, networking, sensors, embedded_sbc | OFFICIAL_URL_SEED |
| `SEMTECH` | Semtech | Semtech Corporation, Sierra Wireless lineage | https://www.semtech.com/ | https://www.semtech.com/support | semiconductor, radio_iot, networking, sensors | OFFICIAL_URL_SEED |
| `DIGI_INTERNATIONAL` | Digi International | Digi, DigiKey not alias | https://www.digi.com/ | https://www.digi.com/support | radio_iot, networking, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `BOSCH_SENSOTEC` | Bosch Sensortec | Bosch Sensortec GmbH | https://www.bosch-sensortec.com/ | https://www.bosch-sensortec.com/products/downloads/ | sensors, semiconductor, embedded_sbc, software_games | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `FLUKE`: product lines are split across Fluke, Fluke Networks, Fluke Process Instruments and Fluke Biomedical. Keep medical/test/network scopes separate.
- `TEKTRONIX`: Keithley is a lineage/brand relationship but may require separate alias registry review before merging support facts.
- `KEYSIGHT`: Agilent lineage must be source-backed and should not create a second truth.
- `SIGLENT`, `RIGOL`, `PICO_TECHNOLOGY`, `SALEAE` and other test-equipment vendors may provide firmware, drivers, SDKs and software; store link-only metadata until product/model/version validation is complete.
- `SEEED_STUDIO`, `ADAFRUIT`, `SPARKFUN` and `WAVESHARE`: maker-board ecosystems combine vendor boards, third-party chips, tutorials and community content. Do not promote forum/tutorial claims as canonical hardware facts.
- `ESPRESSIF`, `NORDIC_SEMICONDUCTOR`, `STMICROELECTRONICS`, `TEXAS_INSTRUMENTS`, `MICROCHIP`, `NXP`, `SILICON_LABS`, `RENESAS` and `INFINEON`: semiconductor documentation is chip/SDK/version-specific. Store chip family, SDK and document-version scope before canonical promotion.
- `QUECTEL`, `U_BLOX`, `SEMTECH` and `DIGI_INTERNATIONAL`: radio/GNSS/cellular modules may have region, carrier, regulatory and firmware constraints. Do not generalize module firmware or certification facts.
- `BOSCH_SENSOTEC`: sensor drivers and datasheets are component-specific; product families require exact part-number scoping.
- Entries marked `OFFICIAL_URL_SEED` need fresh direct retrieval or product-line verification before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model/chip-level facts only from product/model/chip-level official sources.
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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 008 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
