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

Ninth continued bounded manufacturer-ingest batch. This batch focuses on industrial embedded-computing vendors, maker-board vendors and single-board-computer ecosystems after reading the active resume/dedupe state.

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
| `ADVANTECH` | Advantech | Advantech Co., Ltd. | https://www.advantech.com/ | https://www.advantech.com/en-us/support | industrial_pc, embedded_sbc, networking, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `AAEON` | AAEON | AAEON Technology | https://www.aaeon.com/ | https://www.aaeon.com/en/support | industrial_pc, embedded_sbc, networking, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ADLINK` | ADLINK Technology | ADLINK | https://www.adlinktech.com/ | https://www.adlinktech.com/Products/downloadarea | industrial_pc, embedded_sbc, software_games, networking | OFFICIAL_SEARCH_CONFIRMED |
| `KONTRON` | Kontron | Kontron Embedded Computers | https://www.kontron.com/ | https://www.kontron.com/en/support-and-services/kontron-north-america/support/downloads | industrial_pc, embedded_sbc, server_oems, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ONLOGIC` | OnLogic | Logic Supply lineage | https://www.onlogic.com/ | https://www.onlogic.com/support/ | industrial_pc, embedded_sbc, networking | OFFICIAL_URL_SEED |
| `VECOW` | Vecow | Vecow Co., Ltd. | https://www.vecow.com/ | https://www.vecow.com/dispPageBox/vecow/VecowDownloads.aspx | industrial_pc, embedded_sbc, networking | OFFICIAL_URL_SEED |
| `DFI` | DFI | DFI Inc. | https://www.dfi.com/ | https://www.dfi.com/support/downloadcenter | industrial_pc, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `AXIOMTEK` | Axiomtek | Axiomtek Co., Ltd. | https://www.axiomtek.com/ | https://www.axiomtek.com/Default.aspx?MenuId=Download | industrial_pc, embedded_sbc, networking | OFFICIAL_URL_SEED |
| `PORTWELL` | Portwell | American Portwell Technology | https://www.portwell.com/ | https://www.portwell.com/support/download-center | industrial_pc, embedded_sbc, networking | OFFICIAL_URL_SEED |
| `SECO` | SECO | SECO SpA | https://www.seco.com/ | https://www.seco.com/support/ | industrial_pc, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `CONGATEC` | congatec | congatec AG | https://www.congatec.com/ | https://www.congatec.com/en/support/ | embedded_sbc, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `TORADEX` | Toradex | Toradex AG | https://www.toradex.com/ | https://developer.toradex.com/ | embedded_sbc, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `VARISCITE` | Variscite | Variscite Ltd. | https://www.variscite.com/ | https://www.variscite.com/support/ | embedded_sbc, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `OLIMEX` | Olimex | Olimex Ltd. | https://www.olimex.com/ | https://www.olimex.com/wiki/Main_Page | embedded_sbc, radio_iot, software_games | OFFICIAL_URL_SEED |
| `PINE64` | PINE64 | Pine Store, PinePhone, Pinebook | https://www.pine64.org/ | https://wiki.pine64.org/ | embedded_sbc, smartphone_tablet, software_games | OFFICIAL_URL_SEED |
| `HARDKERNEL` | Hardkernel | ODROID | https://www.hardkernel.com/ | https://wiki.odroid.com/ | embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `KHADAS` | Khadas | Khadas Technology | https://www.khadas.com/ | https://docs.khadas.com/ | embedded_sbc, audio, software_games | OFFICIAL_URL_SEED |
| `RADXA` | Radxa | Radxa Computer | https://radxa.com/ | https://docs.radxa.com/ | embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `FRIENDLYELEC` | FriendlyElec | FriendlyARM, NanoPi | https://www.friendlyelec.com/ | https://wiki.friendlyelec.com/ | embedded_sbc, networking, software_games | OFFICIAL_URL_SEED |
| `LATTEPANDA` | LattePanda | DFRobot LattePanda | https://www.lattepanda.com/ | https://docs.lattepanda.com/ | embedded_sbc, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `DFROBOT` | DFRobot | DFRobot Gravity | https://www.dfrobot.com/ | https://wiki.dfrobot.com/ | embedded_sbc, sensors, radio_iot, software_games | OFFICIAL_URL_SEED |
| `M5STACK` | M5Stack | M5Stack Technology | https://m5stack.com/ | https://docs.m5stack.com/ | embedded_sbc, sensors, radio_iot, software_games | OFFICIAL_URL_SEED |
| `PIMORONI` | Pimoroni | Pimoroni Ltd. | https://shop.pimoroni.com/ | https://learn.pimoroni.com/ | embedded_sbc, sensors, software_games | OFFICIAL_URL_SEED |
| `BEAGLEBOARD` | BeagleBoard.org | BeagleBoard Foundation, BeagleBone | https://www.beagleboard.org/ | https://docs.beagleboard.org/ | embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `SIFIVE` | SiFive | SiFive Inc. | https://www.sifive.com/ | https://www.sifive.com/support | semiconductor, embedded_sbc, software_games | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `ADVANTECH`, `AAEON`, `ADLINK`, `KONTRON`, `VECOW`, `DFI`, `AXIOMTEK`, `PORTWELL`, `SECO`, `CONGATEC`, `TORADEX` and `VARISCITE`: industrial/embedded vendors often provide BIOS, BSP, firmware, drivers, SDKs and board-support packages. Store link-only metadata until exact product/model/version review is complete.
- `ONLOGIC`: product support may be system-configuration-specific. Do not infer generic driver/BIOS compatibility across configurations.
- `OLIMEX`, `PINE64`, `HARDKERNEL`, `KHADAS`, `RADXA`, `FRIENDLYELEC`, `LATTEPANDA`, `DFROBOT`, `M5STACK`, `PIMORONI` and `BEAGLEBOARD`: community docs, wikis and forums may mix official and community content. Promote only official, scoped evidence.
- `LATTEPANDA`: DFRobot lineage/relationship needs alias review before merging records.
- `SIFIVE`: hardware, IP cores, SDKs and RISC-V software stacks require product/IP/version scoping before canonical promotion.
- Entries marked `OFFICIAL_URL_SEED` need fresh direct retrieval or product-line verification before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model/board-level facts only from official product/model/board sources.
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
