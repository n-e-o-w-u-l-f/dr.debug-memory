# MP-20260619-manufacturer-ingest-batch-005

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

Fourth continued bounded manufacturer-ingest batch. This batch extends the proposal-only manufacturer source-seed set after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002, 003 and 004. Batch 005 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `TRANSCEND` | Transcend | Transcend Information | https://www.transcend-info.com/ | https://www.transcend-info.com/support | storage, memory, peripherals | OFFICIAL_SEARCH_CONFIRMED |
| `ADATA` | ADATA | ADATA Technology, XPG | https://www.adata.com/ | https://www.adata.com/en/support/ | storage, memory, pc_components, gaming_accessories | OFFICIAL_SEARCH_CONFIRMED |
| `SK_HYNIX` | SK hynix | SK hynix Inc. | https://www.skhynix.com/ | https://ssd.skhynix.com/download/ | storage, memory, server_oems | OFFICIAL_SEARCH_CONFIRMED |
| `KIOXIA` | KIOXIA | Toshiba Memory | https://www.kioxia.com/ | https://europe.kioxia.com/en-europe/personal/support/download/ssd.html | storage, memory | OFFICIAL_SEARCH_CONFIRMED |
| `PATRIOT_MEMORY` | Patriot Memory | Patriot, Viper Gaming | https://www.patriotmemory.com/ | https://support.patriotmemory.com/ | storage, memory, gaming_accessories | OFFICIAL_URL_SEED |
| `TEAMGROUP` | TEAMGROUP | Team Group, T-FORCE, T-CREATE | https://www.teamgroupinc.com/ | https://support.teamgroupinc.com/en/ | storage, memory, gaming_accessories | OFFICIAL_SEARCH_CONFIRMED |
| `SABRENT` | Sabrent | Sabrent Rocket | https://sabrent.com/ | https://sabrent.com/pages/support | storage, peripherals | OFFICIAL_SEARCH_CONFIRMED |
| `LEXAR` | Lexar | Lexar Global | https://www.lexar.com/ | https://www.lexar.com/global/support/ | storage, memory, camera_imaging | OFFICIAL_SEARCH_CONFIRMED |
| `SILICON_POWER` | Silicon Power | SP, Silicon Power Computer & Communications | https://www.silicon-power.com/ | https://www.silicon-power.com/download/ | storage, memory | OFFICIAL_SEARCH_CONFIRMED |
| `AVM` | AVM | FRITZ!, AVM GmbH | https://avm.de/ | https://download.avm.de/ | networking, router_wifi, smart_home, telephony | OFFICIAL_SEARCH_CONFIRMED |
| `TELTONIKA_NETWORKS` | Teltonika Networks | Teltonika IoT Group | https://teltonika-networks.com/ | https://wiki.teltonika-networks.com/view/Downloads | networking, router_wifi, radio_iot, industrial_pc | OFFICIAL_SEARCH_CONFIRMED |
| `PEPLINK` | Peplink | Pepwave | https://www.peplink.com/ | https://www.peplink.com/support/downloads/firmware/ | networking, router_wifi, industrial_pc | OFFICIAL_SEARCH_CONFIRMED |
| `GL_INET` | GL.iNet | GL Technologies, GL.iNet Router | https://www.gl-inet.com/ | https://dl.gl-inet.com/ | networking, router_wifi, embedded_sbc | OFFICIAL_SEARCH_CONFIRMED_JS_REQUIRED |
| `TENDA` | Tenda | Shenzhen Tenda Technology | https://www.tendacn.com/ | https://www.tendacn.com/download | networking, router_wifi, smart_home | OFFICIAL_SEARCH_CONFIRMED |
| `GRANDSTREAM` | Grandstream Networks | Grandstream | https://www.grandstream.com/ | https://www.grandstream.com/support | networking, telephony, camera_imaging | OFFICIAL_SEARCH_CONFIRMED |
| `YEALINK` | Yealink | Yealink Network Technology | https://www.yealink.com/ | https://support.yealink.com/ | telephony, audio, video_conferencing, peripherals | OFFICIAL_SEARCH_CONFIRMED |
| `SNOM` | Snom | Snom Technology | https://www.snom.com/ | https://www.snom.com/en/support/help-center/ | telephony, networking, audio | OFFICIAL_SEARCH_CONFIRMED |
| `AXIS` | Axis Communications | Axis | https://www.axis.com/ | https://www.axis.com/support | camera_imaging, networking, security | OFFICIAL_SEARCH_CONFIRMED |
| `REOLINK` | Reolink | Reolink Innovation | https://reolink.com/ | https://reolink.com/download-center/ | camera_imaging, networking, smart_home, security | OFFICIAL_SEARCH_CONFIRMED |
| `BAMBU_LAB` | Bambu Lab | BambuLab | https://bambulab.com/ | https://bambulab.com/en/support/firmware-download/all | 3d_printer, software_games, smart_home | OFFICIAL_SEARCH_CONFIRMED |
| `CREALITY` | Creality | Shenzhen Creality 3D Technology | https://www.creality.com/ | https://www.creality.com/download | 3d_printer, scanner_imaging, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ANYCUBIC` | Anycubic | Shenzhen Anycubic Technology | https://www.anycubic.com/ | https://store.anycubic.com/pages/firmware-software | 3d_printer, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `FORMLABS` | Formlabs | Formlabs Inc. | https://formlabs.com/ | https://support.formlabs.com/s/article/Firmware-Release-Notes | 3d_printer, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `ULTIMAKER` | UltiMaker | Ultimaker, MakerBot | https://ultimaker.com/ | https://support.ultimaker.com/ | 3d_printer, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `GOODRAM` | Goodram | GOODRAM, Wilk Elektronik | https://www.goodram.com/ | https://www.goodram.com/support/ | storage, memory | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `PATRIOT_MEMORY` and `GOODRAM`: endpoints are seeded from official domains but need a fresh product-level retrieval before promotion.
- `KIOXIA`: support/download URLs are region-specific. Keep regional endpoint records separate where needed.
- `SK_HYNIX`: consumer SSD support and corporate semiconductor support may live on separate official properties. Scope product facts carefully.
- `AVM`, `PEPLINK`, `TELTONIKA_NETWORKS`, `GL_INET`, `TENDA`, `GRANDSTREAM`, `YEALINK`, `SNOM`, `AXIS` and `REOLINK`: firmware/download areas are high-risk. Store link-only metadata unless product/model/revision validation is complete.
- `GL_INET`: download center may require JavaScript; use official docs and model pages for review evidence.
- `BAMBU_LAB`, `CREALITY`, `ANYCUBIC`, `FORMLABS` and `ULTIMAKER`: firmware/slicer/tooling facts are model/version-specific. Do not generalize across printers.
- `BAMBU_LAB`: recent third-party firmware/tooling disputes make legal/terms context relevant; official source and no-bypass policy must be enforced.

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
- No secrets, serials, customer data, account pages, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs or manual bodies stored.
- Data-loss classifier: LOW, additive proposal/status/index files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 005 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
