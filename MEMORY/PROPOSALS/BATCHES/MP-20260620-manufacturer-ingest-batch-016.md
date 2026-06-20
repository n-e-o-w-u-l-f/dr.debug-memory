# MP-20260620-manufacturer-ingest-batch-016

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

Fifteenth continued bounded manufacturer-ingest batch. This batch focuses on professional audio, music-production hardware, audio interfaces, mixers, recorders, synth/controller vendors and related driver/firmware ecosystems after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 015. Batch 016 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `TASCAM` | TASCAM | TEAC TASCAM | https://tascam.com/ | https://tascam.com/us/support/download | audio, audio_interface, recorder, mixer_control_surface, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ZOOM_CORPORATION` | Zoom Corporation | Zoom audio, Zoom Handy Recorder | https://zoomcorp.com/ | https://zoomcorp.com/en/us/support/ | audio, recorder, audio_interface, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `MOTU` | MOTU | Mark of the Unicorn | https://motu.com/ | https://motu.com/download | audio, audio_interface, midi_controller, software_games, driver_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `RME` | RME | RME Audio, Audio AG | https://rme-audio.de/ | https://rme-audio.de/downloads.html | audio, audio_interface, mixer_control_surface, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ALLEN_HEATH` | Allen & Heath | Allen Heath, A&H | https://www.allen-heath.com/ | https://www.allen-heath.com/support/ | audio, mixer_control_surface, room_control, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `BEHRINGER` | Behringer | Music Tribe Behringer | https://www.behringer.com/ | https://www.behringer.com/ | audio, mixer_control_surface, synth_controller, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_LIMITED |
| `MACKIE` | Mackie | Mackie Audio | https://mackie.com/ | https://mackie.com/en/support/drivers-downloads | audio, mixer_control_surface, audio_interface, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `UNIVERSAL_AUDIO` | Universal Audio | UA, UAD, Apollo | https://www.uaudio.com/ | https://www.uaudio.com/pages/downloads | audio, audio_interface, dsp_accelerator, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ANTELOPE_AUDIO` | Antelope Audio | Antelope | https://en.antelopeaudio.com/ | https://en.antelopeaudio.com/support/downloads/ | audio, audio_interface, clocking, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `APOGEE_ELECTRONICS` | Apogee Electronics | Apogee Digital | https://apogeedigital.com/ | https://apogeedigital.com/support | audio, audio_interface, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `AUDIENT` | Audient | Audient Audio | https://audient.com/ | https://audient.com/support/ | audio, audio_interface, mixer_control_surface, software_games, driver_metadata | OFFICIAL_URL_SEED |
| `SOLID_STATE_LOGIC` | Solid State Logic | SSL, SSL Audio | https://solidstatelogic.com/ | https://solidstatelogic.com/support | audio, mixer_control_surface, audio_interface, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `AVID` | Avid | Avid Pro Tools, Avid Audio | https://www.avid.com/ | https://www.avid.com/support | audio, video_capture, software_games, driver_metadata | OFFICIAL_URL_SEED |
| `KORG` | Korg | Korg Inc. | https://www.korg.com/ | https://www.korg.com/us/support/download/ | audio, synth_controller, midi_controller, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `BOSS` | BOSS | Roland BOSS, BOSS Effects | https://www.boss.info/ | https://www.boss.info/global/support/updates_drivers/ | audio, synth_controller, guitar_bass, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `CASIO` | Casio | Casio Music, Casiotone | https://www.casio.com/ | https://support.casio.com/ | audio, synth_controller, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `ARTURIA` | Arturia | Arturia Software Center | https://www.arturia.com/ | https://www.arturia.com/support/downloads-manuals | audio, synth_controller, midi_controller, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `NOVATION` | Novation | Focusrite Novation lineage | https://novationmusic.com/ | https://downloads.novationmusic.com/novation | audio, midi_controller, synth_controller, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `NEKTAR_TECHNOLOGY` | Nektar Technology | Nektar | https://nektartech.com/ | https://nektartech.com/support/ | audio, midi_controller, software_games, driver_metadata | OFFICIAL_URL_SEED |
| `ICONNECTIVITY` | iConnectivity | iConnectivity Audio/MIDI | https://www.iconnectivity.com/ | https://www.iconnectivity.com/support | audio, midi_controller, networking, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `IK_MULTIMEDIA` | IK Multimedia | iRig, IK | https://www.ikmultimedia.com/ | https://www.ikmultimedia.com/support/ | audio, audio_interface, midi_controller, software_games, driver_metadata | OFFICIAL_URL_SEED |
| `ELEKTRON` | Elektron | Elektron Music Machines | https://elektron.se/ | https://elektron.se/support-downloads | audio, synth_controller, sampler, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `TEENAGE_ENGINEERING` | Teenage Engineering | TE, OP-1, OP-Z | https://teenage.engineering/ | https://teenage.engineering/support | audio, synth_controller, recorder, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `MODAL_ELECTRONICS` | Modal Electronics | Modal | https://www.modalelectronics.com/ | https://www.modalelectronics.com/support/ | audio, synth_controller, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `WALDORF_MUSIC` | Waldorf Music | Waldorf | https://waldorfmusic.com/ | https://waldorfmusic.com/support/ | audio, synth_controller, software_games, firmware_metadata | OFFICIAL_URL_SEED |

## Per-candidate limitations

- Audio interfaces, mixers, recorders and synth/controllers often expose drivers, firmware, bootloaders, editor/librarian software, DSP plug-ins and licensing/account workflows. Store link-only metadata until exact product/model/version scope is reviewed.
- `TASCAM`, `ZOOM_CORPORATION`, `MOTU`, `RME`, `ALLEN_HEATH`, `MACKIE`, `UNIVERSAL_AUDIO`, `ANTELOPE_AUDIO`, `APOGEE_ELECTRONICS`, `AUDIENT`, `SOLID_STATE_LOGIC` and `IK_MULTIMEDIA`: driver and firmware compatibility depends on OS version, host architecture, interface bus, DAW and exact model revision.
- `BEHRINGER`: support and downloads may route through Music Tribe/community/portal infrastructure. Verify exact product-download URLs before promotion.
- `BOSS`: BOSS is treated here as a Roland brand scope, not merged with `ROLAND_DG` or any future Roland canonical record without explicit alias/lineage review.
- `NOVATION`: corporate lineage with Focusrite must be source-backed; do not merge with existing Focusrite proposal facts automatically.
- `AVID` and `UNIVERSAL_AUDIO`: account/licensing/activation workflows can be credential-sensitive. Store no account identifiers, license keys, sessions, dongle IDs or support tickets.
- `ELEKTRON`, `TEENAGE_ENGINEERING`, `MODAL_ELECTRONICS`, `WALDORF_MUSIC`, `ARTURIA`, `KORG`, `CASIO` and `NEKTAR_TECHNOLOGY`: firmware/update utilities and librarian/editor tools require exact model/version scope before canonical promotion.
- Entries marked `OFFICIAL_URL_SEED` or `OFFICIAL_SEARCH_CONFIRMED_LIMITED` need direct product-download verification before promotion.

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
- No secrets, serials, customer data, account pages, license keys, raw logs, raw crawl dumps, binaries, firmware, drivers, installers, PDFs, OS images or manual bodies stored.
- Data-loss classifier: LOW, additive proposal/status/index files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 016 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
