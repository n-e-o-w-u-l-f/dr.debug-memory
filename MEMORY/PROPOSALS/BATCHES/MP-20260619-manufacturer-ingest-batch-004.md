# MP-20260619-manufacturer-ingest-batch-004

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

Third continued bounded manufacturer-ingest batch. This batch was created after adding `/MEMORY/*/INDEX.md` navigation coverage and `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 and 003. Batch 004 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `SUPERMICRO` | Supermicro | Super Micro Computer, Inc. | https://www.supermicro.com/ | https://www.supermicro.com/en/support | server_oems, storage, networking, embedded_sbc, industrial_pc | OFFICIAL_URL_SEED |
| `HPE` | Hewlett Packard Enterprise | HPE, Aruba Networking | https://www.hpe.com/ | https://support.hpe.com/ | server_oems, storage, networking, software_games | OFFICIAL_URL_SEED |
| `IBM` | IBM | International Business Machines | https://www.ibm.com/ | https://www.ibm.com/support | server_oems, storage, software_games, networking | OFFICIAL_URL_SEED |
| `ORACLE` | Oracle | Oracle Corporation, Oracle Hardware | https://www.oracle.com/ | https://www.oracle.com/support/ | server_oems, storage, software_games | OFFICIAL_URL_SEED |
| `FUJITSU` | Fujitsu | Fujitsu Technology Solutions | https://www.fujitsu.com/ | https://support.ts.fujitsu.com/ | notebook_oems, desktop_oems, server_oems, scanner_printer | OFFICIAL_URL_SEED |
| `NEC` | NEC | NEC Corporation | https://www.nec.com/ | https://www.nec.com/en/global/support/ | desktop_oems, server_oems, monitor_display, networking | OFFICIAL_URL_SEED |
| `DYNABOOK` | Dynabook | Dynabook Inc., Toshiba Client Solutions | https://dynabook.com/ | https://support.dynabook.com/ | notebook_oems, desktop_oems | OFFICIAL_URL_SEED |
| `PNY` | PNY | PNY Technologies | https://www.pny.com/ | https://www.pny.com/support | storage, pc_components, gpu, peripherals | OFFICIAL_URL_SEED |
| `ZOTAC` | ZOTAC | ZOTAC Technology | https://www.zotac.com/ | https://www.zotac.com/support | pc_components, gpu, mini_pc, desktop_oems | OFFICIAL_URL_SEED |
| `EVGA` | EVGA | EVGA Corporation | https://www.evga.com/ | https://www.evga.com/support/ | pc_components, gpu, cooling_power | OFFICIAL_URL_SEED |
| `BE_QUIET` | be quiet! | Listan, be quiet | https://www.bequiet.com/ | https://www.bequiet.com/en/contact | cooling_power, pc_components | OFFICIAL_URL_SEED |
| `NOCTUA` | Noctua | Noctua.at | https://noctua.at/ | https://noctua.at/en/support | cooling_power, pc_components | OFFICIAL_URL_SEED |
| `ARCTIC` | ARCTIC | ARCTIC GmbH | https://www.arctic.de/ | https://support.arctic.de/ | cooling_power, pc_components | OFFICIAL_URL_SEED |
| `SILVERSTONE` | SilverStone | SilverStone Technology | https://www.silverstonetek.com/ | https://www.silverstonetek.com/en/support | cooling_power, pc_components, storage, peripherals | OFFICIAL_URL_SEED |
| `THERMALTAKE` | Thermaltake | Thermaltake Technology | https://www.thermaltake.com/ | https://www.thermaltake.com/support | cooling_power, pc_components, peripherals, gaming_accessories | OFFICIAL_URL_SEED |
| `FRACTAL_DESIGN` | Fractal Design | Fractal | https://www.fractal-design.com/ | https://support.fractal-design.com/ | pc_components, cooling_power | OFFICIAL_URL_SEED |
| `NZXT` | NZXT | NZXT Inc. | https://nzxt.com/ | https://support.nzxt.com/ | pc_components, cooling_power, desktop_oems, software_games | OFFICIAL_URL_SEED |
| `LIAN_LI` | Lian Li | Lian Li Industrial | https://lian-li.com/ | https://lian-li.com/faq/ | pc_components, cooling_power | OFFICIAL_URL_SEED |
| `VIEWSONIC` | ViewSonic | ViewSonic Corporation | https://www.viewsonic.com/ | https://www.viewsonic.com/global/support | monitor_display, projector_display, tv_av | OFFICIAL_URL_SEED |
| `BENQ` | BenQ | BenQ Corporation | https://www.benq.com/ | https://www.benq.com/en-us/support.html | monitor_display, projector_display, peripherals | OFFICIAL_URL_SEED |
| `AOC` | AOC | AOC Monitors | https://aoc.com/ | https://aoc.com/us/support | monitor_display | OFFICIAL_URL_SEED |
| `WACOM` | Wacom | Wacom Co., Ltd. | https://www.wacom.com/ | https://support.wacom.com/hc/en-us | peripherals, tablet_digitizer, software_games | OFFICIAL_URL_RETRIEVED |
| `HUION` | Huion | Shenzhen Huion Animation Technology | https://www.huion.com/ | https://www.huion.com/support | peripherals, tablet_digitizer | OFFICIAL_URL_RETRIEVED |
| `XP_PEN` | XPPen | XP-Pen, XPPen | https://www.xp-pen.com/ | https://www.xp-pen.com/support | peripherals, tablet_digitizer | OFFICIAL_URL_RETRIEVED |
| `ELEGOO` | ELEGOO | Elegoo | https://www.elegoo.com/ | https://www.elegoo.com/pages/support-center | 3d_printer, embedded_sbc, software_games | OFFICIAL_URL_RETRIEVED |

## Per-candidate limitations

- HPE/Aruba and HP Inc. must remain separate unless a reviewer explicitly links alias/history records; do not merge with HP automatically.
- Dynabook inherits Toshiba PC lineage; keep `Toshiba` as an alias only after official source review.
- PNY, ZOTAC and EVGA may have legacy/discontinued product trees; product-level support evidence is required before driver/firmware facts.
- Cooling/power vendors often provide manuals and compatibility lists rather than driver support. Do not invent driver/firmware relevance.
- Wacom, Huion and XPPen driver pages require OS/version-specific records before creating driver facts.
- ELEGOO support may reference printer downloads, firmware and slicer tools. Store link-only metadata; do not download or rehost binaries.

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
- Data-loss classifier: LOW, additive proposal files only.

## Resume pointer

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, update it with batch 004 names, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
