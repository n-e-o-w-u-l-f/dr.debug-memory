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

Tenth continued bounded manufacturer-ingest batch. This batch focuses on imaging, photo/video equipment, lenses, lighting, stabilizers, production monitors/recorders and camera-accessory vendors after reading the active resume/dedupe state.

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
| `FUJIFILM` | Fujifilm | FUJIFILM X Series, GFX | https://www.fujifilm.com/ | https://www.fujifilm-x.com/global/support/download/ | camera_imaging, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `NIKON` | Nikon | Nikon Imaging | https://www.nikon.com/ | https://downloadcenter.nikonimglib.com/ | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `LEICA_CAMERA` | Leica Camera | Leica | https://leica-camera.com/ | https://leica-camera.com/en-int/downloads | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `OM_DIGITAL_SOLUTIONS` | OM Digital Solutions | OM System, Olympus camera lineage | https://explore.omsystem.com/ | https://support.jp.omsystem.com/en/support/ | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `SIGMA` | Sigma | Sigma Corporation | https://www.sigma-global.com/ | https://www.sigma-global.com/en/support/ | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `TAMRON` | Tamron | Tamron Co., Ltd. | https://www.tamron.com/ | https://www.tamron.com/global/consumer/support/ | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `TOKINA` | Tokina | Tokina Lens | https://tokinalens.com/ | https://tokinalens.com/support/ | camera_imaging, optics | OFFICIAL_URL_SEED |
| `SAMYANG_OPTICS` | Samyang Optics | Rokinon, Samyang | https://www.samyanglens.com/ | https://www.samyanglens.com/en/support/support.php | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `VILTROX` | Viltrox | Shenzhen Jueying Technology | https://www.viltrox.com/ | https://www.viltrox.com/support | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `ZHIYUN` | Zhiyun | ZHIYUN-Tech, Guilin Zhishen | https://www.zhiyun-tech.com/ | https://www.zhiyun-tech.com/en/support | camera_imaging, peripherals, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `FEIYUTECH` | FeiyuTech | Feiyu Technology | https://www.feiyu-tech.com/ | https://www.feiyu-tech.com/support | camera_imaging, peripherals, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `GODOX` | Godox | Godox Photo Equipment | https://www.godox.com/ | https://www.godox.com/support/ | camera_imaging, lighting, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `APUTURE` | Aputure | Aputure Imaging Industries, amaran | https://www.aputure.com/ | https://www.aputure.com/support/ | camera_imaging, lighting, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `NANLITE` | Nanlite | Nanlite Global | https://www.nanlite.com/ | https://www.nanlite.com/support | camera_imaging, lighting, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `SMALLRIG` | SmallRig | SmallRig Global | https://www.smallrig.com/ | https://www.smallrig.com/support | camera_imaging, peripherals | OFFICIAL_URL_SEED |
| `TILTA` | Tilta | Tilta Technology | https://tilta.com/ | https://tilta.com/support/ | camera_imaging, peripherals, power_accessories | OFFICIAL_URL_SEED |
| `ATOMOS` | Atomos | Atomos Ninja, AtomOS | https://www.atomos.com/ | https://www.atomos.com/product-support/ | camera_imaging, video_capture, software_games, firmware_metadata | OFFICIAL_SEARCH_CONFIRMED |
| `ELINCHROM` | Elinchrom | Elinchrom LTD | https://www.elinchrom.com/ | https://support.elinchrom.com/ | camera_imaging, lighting, software_games | OFFICIAL_URL_SEED |
| `PROFOTO` | Profoto | Profoto AB | https://profoto.com/ | https://profoto.com/support | camera_imaging, lighting, software_games, firmware_metadata | OFFICIAL_URL_SEED |
| `MANFROTTO` | Manfrotto | Manfrotto Imaging | https://www.manfrotto.com/ | https://www.manfrotto.com/global/customer-service/ | camera_imaging, peripherals | OFFICIAL_URL_SEED |
| `GITZO` | Gitzo | Gitzo tripods | https://www.gitzo.com/ | https://www.gitzo.com/global/customer-service/ | camera_imaging, peripherals | OFFICIAL_URL_SEED |
| `JOBY` | JOBY | Joby GorillaPod | https://joby.com/ | https://joby.com/global/customer-service/ | camera_imaging, peripherals | OFFICIAL_URL_SEED |
| `PEAK_DESIGN` | Peak Design | Peak Design Travel Tripod | https://www.peakdesign.com/ | https://support.peakdesign.com/ | camera_imaging, peripherals | OFFICIAL_URL_SEED |
| `VENUS_OPTICS` | Venus Optics | Laowa | https://www.venuslens.net/ | https://www.venuslens.net/contact-us/ | camera_imaging, optics | OFFICIAL_URL_SEED |
| `HASSELBLAD` | Hasselblad | Hasselblad AB, DJI lineage | https://www.hasselblad.com/ | https://www.hasselblad.com/support/ | camera_imaging, optics, software_games, firmware_metadata | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `FUJIFILM`, `NIKON`, `LEICA_CAMERA`, `OM_DIGITAL_SOLUTIONS`, `SIGMA`, `TAMRON`, `SAMYANG_OPTICS`, `VILTROX`, `ZHIYUN`, `FEIYUTECH`, `GODOX`, `APUTURE`, `NANLITE`, `ATOMOS`, `PROFOTO` and `HASSELBLAD`: support pages may include firmware, camera software, lens firmware, LUTs or update utilities. Store link-only metadata until exact model/version scope is reviewed.
- `OM_DIGITAL_SOLUTIONS`: Olympus camera lineage must be source-backed and should not create a second truth.
- `SAMYANG_OPTICS`: Rokinon branding/region must be scoped as alias or separate regional brand only after review.
- `ATOMOS`: monitor/recorder firmware update workflows may require formatted media and can affect devices. Do not store instructions as canonical facts without model and version validation.
- `MANFROTTO`, `GITZO` and `JOBY`: related imaging accessory brands may share customer-service infrastructure; do not merge brands without alias registry review.
- `HASSELBLAD`: DJI ownership/lineage requires scoped alias notes; do not merge with DJI canonical facts automatically.
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
