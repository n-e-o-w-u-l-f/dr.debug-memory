# MP-20260620-manufacturer-ingest-batch-013

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

Twelfth continued bounded manufacturer-ingest batch. This batch focuses on single-board computers, maker electronics, handheld PCs, retro handhelds and e-reader/tablet hardware vendors after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 012. Batch 013 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `PINE64` | PINE64 | Pine Store, PinePhone, Pinebook, PineTab | https://pine64.org/ | https://pine64.org/documentation/ | embedded_sbc, smartphone_tablet, notebook_oems, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `BEAGLEBOARD` | BeagleBoard.org | BeagleBoard, BeagleBone | https://www.beagleboard.org/ | https://docs.beagleboard.org/ | embedded_sbc, industrial_pc, software_games, open_hardware | OFFICIAL_SEARCH_CONFIRMED |
| `HARDKERNEL` | Hardkernel | ODROID | https://www.hardkernel.com/ | https://wiki.odroid.com/ | embedded_sbc, mini_pc, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `RADXA` | Radxa | ROCK, Rock Pi | https://www.radxa.com/ | https://docs.radxa.com/ | embedded_sbc, mini_pc, networking, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `LIBRE_COMPUTER` | Libre Computer | Le Potato, AML-S905X-CC | https://libre.computer/ | https://libre.computer/pages/support | embedded_sbc, software_games, open_hardware | OFFICIAL_URL_SEED |
| `ORANGE_PI` | Orange Pi | Shenzhen Xunlong, OrangePi | http://www.orangepi.org/ | http://www.orangepi.org/html/serviceAndSupport/index.html | embedded_sbc, mini_pc, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `FRIENDLYELEC` | FriendlyELEC | FriendlyARM, NanoPi | https://www.friendlyelec.com/ | https://wiki.friendlyelec.com/wiki/index.php/Main_Page | embedded_sbc, networking, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `KHADAS` | Khadas | Khadas VIM, Edge | https://www.khadas.com/ | https://docs.khadas.com/ | embedded_sbc, mini_pc, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `LATTEPANDA` | LattePanda | DFRobot LattePanda | https://www.lattepanda.com/ | https://docs.lattepanda.com/ | embedded_sbc, mini_pc, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `UDOO` | UDOO | UDOO Board | https://www.udoo.org/ | https://www.udoo.org/docs/ | embedded_sbc, mini_pc, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `DFROBOT` | DFRobot | DFRobot Wiki, Gravity, Fermion | https://www.dfrobot.com/ | https://wiki.dfrobot.com/ | embedded_sbc, sensors, radio_iot, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `M5STACK` | M5Stack | M5Stack Docs, UIFLOW, M5Burner | https://m5stack.com/ | https://docs.m5stack.com/ | embedded_sbc, sensors, radio_iot, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `PIMORONI` | Pimoroni | Pimoroni Ltd | https://shop.pimoroni.com/ | https://forums.pimoroni.com/c/support/5 | embedded_sbc, peripherals, sensors, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `POLOLU` | Pololu | Pololu Robotics and Electronics | https://www.pololu.com/ | https://www.pololu.com/support | robotics, sensors, embedded_sbc, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ELECROW` | Elecrow | Elecrow CrowPi, CrowPanel | https://www.elecrow.com/ | https://www.elecrow.com/wiki/ | embedded_sbc, monitor_display, sensors, software_games | OFFICIAL_URL_SEED |
| `AYANEO` | AYANEO | Anyun Intelligent Technology, AYASpace | https://ayaneo.com/ | https://ayaneo.com/support/download | handheld_pc, gaming_accessories, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `GPD` | GPD | Shenzhen GPD Technology | https://www.gpd.hk/ | https://www.gpd.hk/download | handheld_pc, notebook_oems, software_games, driver_metadata, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ONEXPLAYER` | ONEXPLAYER | One-Netbook, OneXPlayer | https://onexplayerstore.com/ | https://onexplayerstore.com/pages/drivers-and-faqs | handheld_pc, gaming_accessories, software_games, driver_metadata, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_VENDOR_STORE |
| `AYN` | AYN | AYN Odin, Ayntec | https://www.ayntec.com/ | https://www.ayntec.com/pages/software | handheld_pc, gaming_accessories, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `ANBERNIC` | Anbernic | Anbernic RG | https://anbernic.com/ | https://win.anbernic.com/download/ | handheld_pc, gaming_accessories, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `RETROID` | Retroid | GoRetroid | https://www.goretroid.com/ | https://www.goretroid.com/pages/support | handheld_pc, gaming_accessories, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `MIYOO` | Miyoo | Miyoo Mini | https://www.lomiyoo.com/ | https://www.lomiyoo.com/en/gujianxiazai.html | handheld_pc, gaming_accessories, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `ANALOGUE` | Analogue | Analogue Pocket | https://www.analogue.co/ | https://www.analogue.co/support | handheld_pc, gaming_accessories, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `KOBO` | Kobo | Rakuten Kobo | https://www.kobo.com/ | https://help.kobo.com/ | ereader, smartphone_tablet, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `REMARKABLE` | reMarkable | reMarkable AS | https://remarkable.com/ | https://support.remarkable.com/s/ | ereader, smartphone_tablet, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |

## Per-candidate limitations

- SBC and maker-board vendors often mix vendor-maintained docs, community docs, GitHub repositories and third-party OS images. Store exact source class and do not promote community images as official firmware unless the vendor explicitly labels them official.
- `PINE64`, `BEAGLEBOARD`, `HARDKERNEL`, `RADXA`, `LIBRE_COMPUTER`, `ORANGE_PI`, `FRIENDLYELEC`, `KHADAS`, `LATTEPANDA` and `UDOO`: OS images, bootloaders, board schematics and firmware require board revision, SoC, storage target and image-version scope.
- `DFROBOT`, `M5STACK`, `PIMORONI`, `POLOLU` and `ELECROW`: tutorials, sample code and libraries are not automatically canonical device facts; keep product-level evidence scoped.
- `AYANEO`, `GPD`, `ONEXPLAYER`, `AYN`, `ANBERNIC`, `RETROID` and `MIYOO`: handheld PC/retro handheld support pages may include BIOS, drivers, firmware and OS images. Store link-only metadata and do not download/rehost packages.
- `ANBERNIC`: official firmware pages may point to third-party file hosts. Treat the official vendor page as the source record, and review external download host risk separately before any archive or checksum workflow.
- `ANALOGUE`: firmware update pages are model-specific and may require SD-card procedures. Do not store procedural update instructions as canonical records without model/version validation.
- `KOBO` and `REMARKABLE`: account, sync and document data can be privacy-sensitive. Store no user-library, account or document data.
- Entries marked `OFFICIAL_URL_SEED` need fresh direct retrieval or product-line verification before promotion.

## Promotion gate

Promotion from this proposal to canonical records requires:

1. Search exact name, normalized name, aliases, official domains, support URLs and canonical IDs.
2. Add source records using the source registry fields.
3. Verify product/model/board-level facts only from product/model/board-level official sources.
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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 013 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
