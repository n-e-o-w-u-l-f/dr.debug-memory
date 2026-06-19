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

Tenth continued bounded manufacturer-ingest batch. This batch focuses on audio, video capture, camera support, lighting, streaming, docks and creator-hardware vendors after reading the active resume/dedupe state.

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
| `SONOS` | Sonos | Sonos Inc. | https://www.sonos.com/ | https://support.sonos.com/ | audio, smart_home, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `BANG_OLUFSEN` | Bang & Olufsen | B&O, Bang and Olufsen | https://www.bang-olufsen.com/ | https://support.bang-olufsen.com/ | audio, tv_av, smart_home | OFFICIAL_URL_SEED |
| `FIIO` | FiiO | FiiO Electronics Technology | https://www.fiio.com/ | https://www.fiio.com/supports | audio, peripherals, software_games | OFFICIAL_URL_SEED |
| `CREATIVE_TECHNOLOGY` | Creative Technology | Creative Labs, Sound Blaster | https://www.creative.com/ | https://support.creative.com/ | audio, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `AVERMEDIA` | AVerMedia | AVerMedia Technologies | https://www.avermedia.com/ | https://www.avermedia.com/support/download | video_capture, camera_imaging, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `MAGEWELL` | Magewell | Magewell Electronics | https://www.magewell.com/ | https://www.magewell.com/support-contacts | video_capture, networking, audio, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `EPIPHAN_VIDEO` | Epiphan Video | Epiphan Systems | https://www.epiphan.com/ | https://www.epiphan.com/support/ | video_capture, networking, software_games | OFFICIAL_URL_SEED |
| `DATAVIDEO` | Datavideo | Datavideo Technologies | https://www.datavideo.com/ | https://www.datavideo.com/us/support | video_capture, camera_imaging, audio, software_games | OFFICIAL_URL_SEED |
| `HOLLYLAND` | Hollyland | Hollyland Technology | https://www.hollyland.com/ | https://www.hollyland.com/support-home | video_capture, audio, camera_imaging, radio_iot | OFFICIAL_SEARCH_CONFIRMED |
| `ZHIYUN` | Zhiyun | ZHIYUN-Tech | https://www.zhiyun-tech.com/ | https://www.zhiyun-tech.com/en/downloads | camera_imaging, stabilizer_gimbal, lighting, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `FEIYUTECH` | FeiyuTech | Guilin Feiyu Technology | https://www.feiyu-tech.com/ | https://www.feiyu-tech.com/support.html | camera_imaging, stabilizer_gimbal, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `GODOX` | Godox | Godox Photo Equipment | https://www.godox.com/ | https://www.godox.com/firmware-continuous-light/ | camera_imaging, lighting, audio, software_games | OFFICIAL_URL_SEED |
| `APUTURE` | Aputure | Aputure Imaging Industries, amaran | https://www.aputure.com/ | https://www.aputure.com/support/ | camera_imaging, lighting, software_games | OFFICIAL_URL_SEED |
| `NANLITE` | Nanlite | Nanlite Global | https://www.nanlite.com/ | https://www.nanlite.com/support | camera_imaging, lighting, software_games | OFFICIAL_URL_SEED |
| `SMALLRIG` | SmallRig | SmallRig Technology | https://www.smallrig.com/ | https://www.smallrig.com/de/support | camera_imaging, peripherals, lighting | OFFICIAL_SEARCH_CONFIRMED |
| `TILTA` | Tilta | Tilta Technology | https://www.tilta.com/ | https://www.tilta.com/support/ | camera_imaging, peripherals | OFFICIAL_URL_SEED |
| `MANFROTTO` | Manfrotto | Manfrotto Imaging, Videndum lineage | https://www.manfrotto.com/ | https://www.manfrotto.com/global-de/customer-service/kontakt/ | camera_imaging, peripherals, tripod_support | OFFICIAL_SEARCH_CONFIRMED |
| `JOBY` | JOBY | Joby, GorillaPod | https://joby.com/ | https://joby.com/global/customer-service/contact/ | camera_imaging, peripherals, tripod_support | OFFICIAL_URL_SEED |
| `ELINCHROM` | Elinchrom | Elinchrom SA | https://www.elinchrom.com/ | https://support.elinchrom.com/ | camera_imaging, lighting, software_games | OFFICIAL_URL_SEED |
| `PROFOTO` | Profoto | Profoto AB | https://profoto.com/ | https://profoto.com/support | camera_imaging, lighting, software_games | OFFICIAL_URL_SEED |
| `NISSIN_DIGITAL` | Nissin Digital | Nissin Japan, Nissin Flash | https://www.nissindigital.com/ | https://www.nissindigital.com/firmware | camera_imaging, lighting, software_games | OFFICIAL_URL_SEED |
| `ATOMOS` | Atomos | Atomos Global | https://www.atomos.com/ | https://www.atomos.com/support/ | video_capture, monitor_display, camera_imaging, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `FEELWORLD` | FEELWORLD | Feelworld Technology | https://feelworld.ltd/ | https://feelworld.ltd/pages/download | monitor_display, video_capture, camera_imaging, software_games | OFFICIAL_URL_SEED |
| `LOUPEDECK` | Loupedeck | Loupedeck Creative Tool | https://loupedeck.com/ | https://support.loupedeck.com/ | peripherals, video_capture, audio, software_games | OFFICIAL_URL_SEED |
| `CALDIGIT` | CalDigit | CalDigit Inc. | https://www.caldigit.com/ | https://www.caldigit.com/support/ | peripherals, docking, storage, networking, software_games | OFFICIAL_SEARCH_CONFIRMED |

## Per-candidate limitations

- `CREATIVE_TECHNOLOGY`, `AVERMEDIA`, `MAGEWELL`, `ATOMOS`, `FEELWORLD`, `LOUPEDECK` and `CALDIGIT`: vendor pages may contain drivers, firmware, SDKs, control apps or updater tools. Store link-only metadata until product/model/version scope is reviewed.
- `ZHIYUN`, `FEIYUTECH`, `GODOX`, `APUTURE`, `NANLITE`, `ELINCHROM`, `PROFOTO` and `NISSIN_DIGITAL`: lighting and gimbal pages may expose firmware/configuration utilities. Do not download or rehost binaries.
- `MANFROTTO`, `JOBY`, `SMALLRIG` and `TILTA`: mostly mechanical/creator accessories; do not invent software/firmware relevance unless official product-level evidence exists.
- `BANG_OLUFSEN`, `SONOS` and `FIIO`: audio ecosystems can involve region-specific apps, firmware and account-linked services. Store no user account or household data.
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
