# MP-20260620-manufacturer-ingest-batch-012

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

Eleventh continued bounded manufacturer-ingest batch. This batch focuses on laser/CNC/prototyping machines, cutting/plotting devices, 3D scanning and 3D printer manufacturers after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 011. Batch 012 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `TROTEC_LASER` | Trotec Laser | Trotec Laser GmbH | https://www.troteclaser.com/ | https://www.troteclaser.com/en/support | laser_cutter, cnc_maker, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `EPILOG_LASER` | Epilog Laser | Epilog | https://www.epiloglaser.com/ | https://www.epiloglaser.com/tech-support/ | laser_cutter, cnc_maker, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `GLOWFORGE` | Glowforge | Glowforge Inc. | https://glowforge.com/ | https://support.glowforge.com/ | laser_cutter, cnc_maker, software_games | OFFICIAL_URL_SEED |
| `XTOOL` | xTool | Makeblock xTool | https://www.xtool.com/ | https://support.xtool.com/ | laser_cutter, cnc_maker, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `SNAPMAKER` | Snapmaker | Snapmaker Luban | https://www.snapmaker.com/ | https://support.snapmaker.com/ | 3d_printer, laser_cutter, cnc_maker, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `SHAPER_TOOLS` | Shaper Tools | Shaper Origin | https://www.shapertools.com/ | https://support.shapertools.com/ | cnc_maker, peripherals, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `CARBIDE_3D` | Carbide 3D | Shapeoko, Nomad | https://carbide3d.com/ | https://carbide3d.com/support/ | cnc_maker, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `BANTAM_TOOLS` | Bantam Tools | Bantam Tools Desktop CNC | https://www.bantamtools.com/ | https://support.bantamtools.com/ | cnc_maker, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `OPENBUILDS` | OpenBuilds | OpenBuilds Part Store, OpenBuilds CONTROL | https://openbuilds.com/ | https://docs.openbuilds.com/ | cnc_maker, embedded_sbc, software_games | OFFICIAL_URL_SEED |
| `INVENTABLES` | Inventables | X-Carve, Easel | https://www.inventables.com/ | https://inventables.zendesk.com/hc/en-us | cnc_maker, software_games | OFFICIAL_URL_SEED |
| `ROLAND_DG` | Roland DG | Roland DG Corporation | https://www.rolanddg.com/ | https://www.rolanddg.com/en/support | printer_scanner, cnc_maker, cutter_plotter, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `MIMAKI` | Mimaki | Mimaki Engineering | https://mimaki.com/ | https://mimaki.com/support/ | printer_scanner, cutter_plotter, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `GRAPHTEC` | Graphtec | Graphtec Corporation | https://www.graphteccorp.com/ | https://www.graphteccorp.com/support/ | cutter_plotter, printer_scanner, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `CRICUT` | Cricut | Cricut Design Space | https://cricut.com/ | https://help.cricut.com/hc/en-us | cutter_plotter, peripherals, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `SILHOUETTE_AMERICA` | Silhouette America | Silhouette | https://www.silhouetteamerica.com/ | https://support.silhouetteamerica.com/ | cutter_plotter, peripherals, software_games | OFFICIAL_URL_SEED |
| `REVOPOINT` | Revopoint | Revopoint 3D | https://www.revopoint3d.com/ | https://support.revopoint3d.com/ | scanner_imaging, 3d_scanner, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_EMPTY_BODY |
| `SHINING_3D` | Shining 3D | SHINING 3D | https://www.shining3d.com/ | https://support.shining3d.com/portal/en/home | scanner_imaging, 3d_scanner, 3d_printer, software_games | OFFICIAL_URL_SEED |
| `CREAFORM` | Creaform | Creaform 3D | https://www.creaform3d.com/ | https://www.creaform3d.com/en/customer-support | scanner_imaging, 3d_scanner, software_games | OFFICIAL_URL_SEED |
| `FARO` | FARO | FARO Technologies | https://www.faro.com/ | https://support.faro.com/ | scanner_imaging, 3d_scanner, industrial_pc, software_games | OFFICIAL_URL_SEED_TOOL_INTERNAL_ERROR |
| `HEXAGON` | Hexagon | Hexagon Manufacturing Intelligence | https://hexagon.com/ | https://support.hexagon.com/ | scanner_imaging, 3d_scanner, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `ARTEC_3D` | Artec 3D | Artec | https://www.artec3d.com/ | https://support.artec3d.com/ | scanner_imaging, 3d_scanner, software_games | OFFICIAL_URL_SEED |
| `FLASHFORGE` | Flashforge | Flashforge 3D Printer | https://www.flashforge.com/ | https://flashforge.com/pages/download | 3d_printer, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `RAISE3D` | Raise3D | Raise 3D | https://www.raise3d.com/ | https://support.raise3d.com/ | 3d_printer, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED_EMPTY_BODY |
| `LULZBOT` | LulzBot | LulzBot 3D Printers | https://lulzbot.com/ | https://lulzbot.com/support/ | 3d_printer, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `QIDI_TECH` | QIDI Tech | QIDI, QIDI 3D | https://qidi3d.com/ | https://qidi3d.com/pages/software-firmware | 3d_printer, software_games, firmware_metadata | OFFICIAL_URL_SEED |

## Per-candidate limitations

- Laser/CNC devices can cause physical injury, fire risk, eye hazards, dust/fume exposure and material-damage risk. Do not promote operating procedures without product/manual review and safety context.
- `XTOOL`, `SNAPMAKER`, `TROTEC_LASER`, `EPILOG_LASER`, `GLOWFORGE`, `SHAPER_TOOLS`, `CARBIDE_3D`, `BANTAM_TOOLS` and related CNC/laser vendors may publish firmware, controller software or calibration utilities. Store link-only metadata until exact model/version scope is reviewed.
- `ROLAND_DG`, `MIMAKI`, `GRAPHTEC`, `CRICUT` and `SILHOUETTE_AMERICA`: cutter/plotter/printer software and drivers require OS/model/version scope before driver facts are stored.
- `REVOPOINT`, `SHINING_3D`, `CREAFORM`, `FARO`, `HEXAGON` and `ARTEC_3D`: 3D scanner ecosystems often include proprietary software, calibration targets and model-specific firmware. Do not generalize one support page to all devices.
- `FLASHFORGE`, `RAISE3D`, `LULZBOT` and `QIDI_TECH`: printer firmware/slicer/toolchain facts require exact model, hardware revision and version validation.
- `FARO`: official support URL was seeded but the retrieval tool returned an internal error. Re-check with a browser or vendor page before promotion.
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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 012 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
