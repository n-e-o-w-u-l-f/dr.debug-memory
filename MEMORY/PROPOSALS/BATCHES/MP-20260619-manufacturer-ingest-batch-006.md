# MP-20260619-manufacturer-ingest-batch-006

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

Fifth continued bounded manufacturer-ingest batch. This batch extends the proposal-only manufacturer source-seed set after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002, 003, 004 and 005. Batch 006 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `PHILIPS` | Philips | Philips Consumer Care, Philips Hue | https://www.philips.com/ | https://www.philips.com/c-w/support-home.html | tv_av, monitor_display, audio, smart_home, medical_consumer_devices | OFFICIAL_URL_SEED |
| `TCL` | TCL | TCL Electronics | https://www.tcl.com/ | https://www.tcl.com/global/en/support | tv_av, smartphone_tablet, monitor_display, router_wifi, smart_home | OFFICIAL_URL_RETRIEVED |
| `HISENSE` | Hisense | Hisense USA, Hisense Global | https://www.hisense.com/ | https://www.hisense-usa.com/support | tv_av, smart_home, monitor_display | OFFICIAL_URL_RETRIEVED |
| `SHARP` | Sharp | Sharp Corporation | https://global.sharp/ | https://global.sharp/support/ | tv_av, printer_scanner, monitor_display, smart_home | OFFICIAL_URL_RETRIEVED |
| `DENON` | Denon | Denon Home, Sound United | https://www.denon.com/ | https://www.denon.com/en-us/support | audio, tv_av, smart_home | OFFICIAL_URL_SEED |
| `MARANTZ` | Marantz | Marantz Audio, Sound United | https://www.marantz.com/ | https://www.marantz.com/en-us/support | audio, tv_av | OFFICIAL_URL_SEED |
| `YAMAHA` | Yamaha | Yamaha Corporation, Yamaha Music | https://www.yamaha.com/ | https://usa.yamaha.com/support/ | audio, tv_av, software_games | OFFICIAL_URL_RETRIEVED |
| `SHURE` | Shure | Shure Incorporated | https://www.shure.com/ | https://service.shure.com/ | audio, peripherals, software_games | OFFICIAL_URL_SEED |
| `AUDIO_TECHNICA` | Audio-Technica | Audio-Technica Corporation | https://www.audio-technica.com/ | https://www.audio-technica.com/en-us/support | audio, peripherals | OFFICIAL_URL_RETRIEVED |
| `FOCUSRITE` | Focusrite | Focusrite Audio Engineering, Novation | https://focusrite.com/ | https://support.focusrite.com/ | audio, peripherals, software_games | OFFICIAL_URL_RETRIEVED |
| `PRESONUS` | PreSonus | PreSonus Audio Electronics, Fender Studio | https://www.presonus.com/ | https://support.presonus.com/ | audio, peripherals, software_games | OFFICIAL_URL_RETRIEVED |
| `STEINBERG` | Steinberg | Steinberg Media Technologies, Yamaha Steinberg | https://www.steinberg.net/ | https://help.steinberg.de/ | audio, software_games | OFFICIAL_URL_SEED |
| `NATIVE_INSTRUMENTS` | Native Instruments | NI, Native Instruments GmbH | https://www.native-instruments.com/ | https://support.native-instruments.com/ | audio, peripherals, software_games | OFFICIAL_URL_RETRIEVED |
| `AKAI_PROFESSIONAL` | Akai Professional | Akai Pro, inMusic | https://www.akaipro.com/ | https://www.akaipro.com/support | audio, peripherals, software_games | OFFICIAL_URL_SEED |
| `M_AUDIO` | M-Audio | M Audio, inMusic | https://www.m-audio.com/ | https://www.m-audio.com/support | audio, peripherals, software_games | OFFICIAL_URL_SEED |
| `RODE` | RODE | RØDE, RODE Microphones | https://rode.com/ | https://rode.com/en/support | audio, peripherals, camera_imaging, software_games | OFFICIAL_URL_RETRIEVED |
| `BLACKMAGIC_DESIGN` | Blackmagic Design | Blackmagic | https://www.blackmagicdesign.com/ | https://www.blackmagicdesign.com/support | camera_imaging, video_capture, software_games | OFFICIAL_URL_RETRIEVED |
| `DJI` | DJI | Da-Jiang Innovations | https://www.dji.com/ | https://www.dji.com/support | camera_imaging, radio_iot, drone, software_games | OFFICIAL_URL_RETRIEVED_REGIONAL_REDIRECT |
| `GOPRO` | GoPro | GoPro Inc. | https://gopro.com/ | https://gopro.com/en/us/help | camera_imaging, software_games | OFFICIAL_URL_SEED |
| `INSTA360` | Insta360 | Arashi Vision | https://www.insta360.com/ | https://www.insta360.com/support | camera_imaging, software_games | OFFICIAL_URL_RETRIEVED |
| `RING` | Ring | Ring LLC, Amazon Ring | https://ring.com/ | https://ring.com/support | smart_home, camera_imaging, security, networking | OFFICIAL_URL_RETRIEVED |
| `ARLO` | Arlo | Arlo Technologies | https://www.arlo.com/ | https://www.arlo.com/en-us/support | smart_home, camera_imaging, security, networking | OFFICIAL_URL_RETRIEVED_REGIONAL_REDIRECT |
| `BELKIN` | Belkin | Belkin International, Linksys history, Wemo | https://www.belkin.com/ | https://www.belkin.com/support/ | peripherals, networking, smart_home, cooling_power | OFFICIAL_URL_RETRIEVED |
| `KENSINGTON` | Kensington | ACCO Brands Kensington | https://www.kensington.com/ | https://www.kensington.com/software-and-drivers/ | peripherals, docking, security, software_games | OFFICIAL_URL_SEED |
| `POLAR` | Polar | Polar Electro | https://www.polar.com/ | https://support.polar.com/ | medical_consumer_devices, wearables, software_games | OFFICIAL_URL_RETRIEVED |

## Per-candidate limitations

- `PHILIPS`: Philips brand scope is fragmented across consumer products, monitors, Hue, TV/audio licensing and medical/healthcare. Split records by product line before promotion.
- `DENON` and `MARANTZ`: related Sound United/Masimo consumer audio properties; keep aliases scoped and do not merge brands automatically.
- `FOCUSRITE`: Novation is an alias/sub-brand candidate but may deserve a separate record if official support/source evidence shows separate product-line handling.
- `STEINBERG`: affiliated with Yamaha; keep separate unless a reviewer explicitly creates lineage/alias records.
- `AKAI_PROFESSIONAL` and `M_AUDIO`: inMusic brands; do not merge inMusic brands without explicit alias registry review.
- `DJI`: drone/radio products may have regulatory and safety implications. Do not store firmware facts without model, region and version validation.
- `RING`, `ARLO` and `BELKIN`: smart-home/security devices require privacy/security-sensitive handling and product/model scoping.
- `POLAR`: consumer health/wearable data may be sensitive. Store no user health data and avoid medical claims.
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
- Current web verification was performed for retrieved official support/download pages; seed-only entries are explicitly marked.
- No secrets, serials, customer data, account pages, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs or manual bodies stored.
- Data-loss classifier: LOW, additive proposal/status/index files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 006 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
