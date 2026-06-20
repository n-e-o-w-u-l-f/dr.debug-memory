# MP-20260620-manufacturer-ingest-batch-015

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

Fourteenth continued bounded manufacturer-ingest batch. This batch focuses on professional AV, video capture, streaming/encoding, room-control, conferencing-camera, projection/display and AV-over-IP/KVM vendors after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 014. Batch 015 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `MAGEWELL` | Magewell | Magewell Electronics | https://www.magewell.com/ | https://www.magewell.com/downloads | video_capture, streaming_encoder, av_kvm, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `AVERMEDIA` | AVerMedia | AVerMedia Technologies | https://www.avermedia.com/ | https://www.avermedia.com/support/download | video_capture, streaming_encoder, camera_imaging, audio, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `EPIPHAN_VIDEO` | Epiphan Video | Epiphan Systems, Pearl | https://www.epiphan.com/ | https://www.epiphan.com/userguides/pearl-2/Content/maintenance/man_br_admin_firmware_update.htm | video_capture, streaming_encoder, av_kvm, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_GUIDE |
| `BIRDDOG` | BirdDog | BirdDog NDI | https://birddog.tv/ | https://birddog.tv/downloads/ | video_capture, streaming_encoder, camera_imaging, av_over_ip, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `KILOVIEW` | Kiloview | Kiloview Electronics | https://www.kiloview.com/ | https://www.kiloview.com/en/download/ | streaming_encoder, av_over_ip, video_capture, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `DATAVIDEO` | Datavideo | Datavideo Technologies | https://datavideo.com/ | https://datavideo.com/eu/files | video_capture, streaming_encoder, camera_imaging, av_over_ip, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `MATROX_VIDEO` | Matrox Video | Matrox, Matrox Imaging not alias | https://video.matrox.com/ | https://video.matrox.com/en/apps/drivers/home | video_capture, graphics_accessories, av_kvm, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `EXTRON` | Extron | Extron Electronics | https://www.extron.com/ | https://www.extron.com/download/download-center/ | av_kvm, av_over_ip, room_control, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `KRAMER` | Kramer | Kramer AV, Kramer Electronics | https://www.kramerav.com/ | https://k.kramerav.com/support/downloads.asp | av_kvm, av_over_ip, room_control, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CRESTRON` | Crestron | Crestron Electronics | https://www.crestron.com/ | https://www.crestron.com/Support | room_control, av_kvm, av_over_ip, smart_home, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `Q_SYS` | Q-SYS | QSC Q-SYS, Q-SYS Designer | https://www.qsys.com/ | https://www.qsys.com/resources/software-and-firmware/q-sys-designer-software/ | room_control, audio, av_over_ip, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `BIAMP` | Biamp | Biamp Systems, Tesira, Vidi | https://www.biamp.com/ | https://www.biamp.com/support/downloads | room_control, audio, camera_imaging, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CLEARONE` | ClearOne | ClearOne Communications | https://www.clearone.com/ | https://kb.clearone.com/portal/en/kb/audio-support | room_control, audio, camera_imaging, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_LIMITED |
| `BARCO` | Barco | ClickShare | https://www.barco.com/ | https://www.barco.com/en/support | monitor_display, projector_display, room_control, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CHRISTIE_DIGITAL` | Christie Digital | Christie Digital Systems | https://www.christiedigital.com/ | https://www.christiedigital.com/help-center/product-and-resource-finder/ | projector_display, monitor_display, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `OPTOMA` | Optoma | Optoma Technology | https://www.optoma.com/ | https://download.optoma.com/ | projector_display, monitor_display, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `EIZO` | EIZO | EIZO Corporation, EIZO Europe | https://www.eizo.com/ | https://www.eizoglobal.com/support/db/products/software | monitor_display, medical_display, industrial_display, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `DIGITAL_PROJECTION` | Digital Projection | Digital Projection International | https://www.digitalprojection.com/ | https://www.digitalprojection.com/en/ | projector_display, monitor_display, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_SUPPORT_SEED |
| `VIVITEK` | Vivitek | Delta Vivitek | https://www.vivitekcorp.com/ | https://www.vivitekcorp.com/support-downloads | projector_display, monitor_display, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `HUDDLY` | Huddly | Huddly AS | https://www.huddly.com/ | https://www.huddly.com/software-releases/ | camera_imaging, video_conferencing, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `OWL_LABS` | Owl Labs | Meeting Owl | https://owllabs.com/ | https://support.owllabs.com/s/ | camera_imaging, video_conferencing, audio, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `LUMENS` | Lumens Digital Optics | Lumens, myLumens | https://www.mylumens.com/ | https://www.mylumens.com/en/Download | camera_imaging, video_conferencing, projector_display, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `MARSHALL_ELECTRONICS` | Marshall Electronics | Marshall USA broadcast cameras | https://marshall-usa.com/ | https://marshall-usa.com/software/ | camera_imaging, video_capture, streaming_encoder, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `BOLIN_TECHNOLOGY` | Bolin Technology | BOLIN, Bolin PTZ | https://bolintechnology.com/ | https://bolintechnology.com/download-center | camera_imaging, video_conferencing, av_over_ip, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `VADDIO` | Vaddio | Legrand AV Vaddio | https://www.legrandav.com/ | https://www.legrandav.com/tools_and_training/tools/vaddio_tools | camera_imaging, video_conferencing, av_over_ip, room_control, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |

## Per-candidate limitations

- Professional AV, room-control and AV-over-IP products may run on production conference/classroom/broadcast networks. Any repair or update plan needs platform context, maintenance window, backup and rollback.
- `MAGEWELL`, `AVERMEDIA`, `EPIPHAN_VIDEO`, `BIRDDOG`, `KILOVIEW`, `DATAVIDEO`, `MATROX_VIDEO`, `LUMENS`, `MARSHALL_ELECTRONICS` and `BOLIN_TECHNOLOGY`: capture/encoder/camera pages often include firmware, drivers, SDKs, NDI components or control utilities. Store link-only metadata until exact model/version scope is reviewed.
- `EXTRON`, `KRAMER`, `CRESTRON`, `Q_SYS`, `BIAMP`, `CLEARONE` and `VADDIO`: room-control, DSP and conferencing products can affect remote management, credentials, network routing and audio/video paths. Store no credentials and avoid procedural update records without exact device and firmware version.
- `BARCO`, `CHRISTIE_DIGITAL`, `OPTOMA`, `EIZO`, `DIGITAL_PROJECTION` and `VIVITEK`: projector/display firmware, drivers and calibration software are model- and region-specific. Do not generalize one product page to all devices.
- `CLEARONE`: current public support access appears fragmented/limited; verify ownership/support continuity and active official downloads before promotion.
- `DIGITAL_PROJECTION`: support seed was confirmed at official site level, but product-specific firmware/download pages need direct model-level retrieval before promotion.
- `VADDIO`: Legrand AV corporate ownership/brand scope must be represented as alias/lineage metadata, not merged into unrelated Legrand smart-home/vendor facts.
- Entries marked `OFFICIAL_SEARCH_CONFIRMED_GUIDE`, `OFFICIAL_SEARCH_CONFIRMED_LIMITED` or `OFFICIAL_SEARCH_CONFIRMED_SUPPORT_SEED` need direct product-download verification before promotion.

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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 015 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
