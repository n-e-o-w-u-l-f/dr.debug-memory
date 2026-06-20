# MP-20260619-manufacturer-ingest-batch-007

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

Sixth continued bounded manufacturer-ingest batch. This batch focuses on mobile, VR/XR and gaming-peripheral manufacturers after reading the active resume/dedupe state.

## Mandatory resume/dedupe inputs for this batch

Read before continuing:

1. `/AGENTS.md`
2. `/MEMORY/INDEX.md`
3. `/MEMORY/STATE/INDEX.md`
4. `/MEMORY/PROPOSALS/INDEX.md`
5. `/MEMORY/MANUFACTURERS/INDEX.md`
6. `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`

## Exclusions applied

Excluded all names listed as existing manufacturer-index entries and all proposal-only names from batches 002 through 006. Batch 007 is non-overlapping with that dedupe state unless a later reviewer finds alias/sub-brand overlap.

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
| `HUAWEI` | Huawei | Huawei Consumer, Huawei Technologies | https://consumer.huawei.com/ | https://consumer.huawei.com/en/support/ | smartphone_tablet, notebook_oems, wearables, networking, audio | OFFICIAL_SEARCH_CONFIRMED |
| `XIAOMI` | Xiaomi | Mi, Redmi, POCO | https://www.mi.com/ | https://www.mi.com/global/support/ | smartphone_tablet, smart_home, audio, wearables, tv_av | OFFICIAL_URL_SEED |
| `OPPO` | OPPO | OPPO Mobile | https://www.oppo.com/ | https://support.oppo.com/ | smartphone_tablet, wearables, audio | OFFICIAL_URL_SEED |
| `ONEPLUS` | OnePlus | OnePlus Technology | https://www.oneplus.com/ | https://service.oneplus.com/ | smartphone_tablet, audio, wearables | OFFICIAL_URL_SEED |
| `VIVO` | vivo | Vivo Mobile | https://www.vivo.com/ | https://www.vivo.com/en/support | smartphone_tablet, audio, wearables | OFFICIAL_URL_SEED |
| `MOTOROLA_MOBILITY` | Motorola Mobility | Motorola, Moto | https://www.motorola.com/ | https://en-us.support.motorola.com/ | smartphone_tablet, networking, audio | OFFICIAL_URL_SEED |
| `HMD_GLOBAL` | HMD Global | HMD, Nokia phones | https://www.hmd.com/ | https://www.hmd.com/en_int/support | smartphone_tablet | OFFICIAL_URL_SEED |
| `HONOR` | Honor | HONOR Device | https://www.honor.com/ | https://www.honor.com/global/support/ | smartphone_tablet, notebook_oems, wearables, audio | OFFICIAL_URL_SEED |
| `NOTHING` | Nothing | Nothing Technology, CMF by Nothing | https://nothing.tech/ | https://nothing.tech/pages/support-centre | smartphone_tablet, audio, wearables | OFFICIAL_URL_SEED |
| `GOOGLE` | Google | Pixel, Nest, Fitbit | https://store.google.com/ | https://support.google.com/ | smartphone_tablet, smart_home, wearables, software_games, networking | OFFICIAL_SEARCH_CONFIRMED |
| `META` | Meta | Meta Quest, Oculus | https://www.meta.com/ | https://www.meta.com/help/quest/ | vr_xr, camera_imaging, software_games, smart_home | OFFICIAL_URL_SEED |
| `HTC_VIVE` | HTC VIVE | VIVE, HTC Vive | https://www.vive.com/ | https://www.vive.com/eu/support/ | vr_xr, smartphone_tablet, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `VALVE` | Valve | Steam Deck, Valve Index, Steam Hardware | https://www.valvesoftware.com/ | https://help.steampowered.com/ | gaming_accessories, vr_xr, handheld_pc, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `PIMAX` | Pimax | Pimax VR | https://pimax.com/ | https://pimax.com/pages/support-center | vr_xr, gaming_accessories, software_games | OFFICIAL_URL_SEED |
| `VARJO` | Varjo | Varjo XR | https://varjo.com/ | https://support.varjo.com/ | vr_xr, industrial_pc, software_games | OFFICIAL_URL_SEED |
| `STEELSERIES` | SteelSeries | SteelSeries GG | https://steelseries.com/ | https://steelseries.com/gg/download | gaming_accessories, peripherals, audio, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `TURTLE_BEACH` | Turtle Beach | Turtle Beach Corporation | https://www.turtlebeach.com/ | https://support.turtlebeach.com/ | gaming_accessories, audio, peripherals | OFFICIAL_SEARCH_CONFIRMED |
| `THRUSTMASTER` | Thrustmaster | Guillemot Thrustmaster | https://www.thrustmaster.com/ | https://support.thrustmaster.com/ | gaming_accessories, peripherals, software_games | OFFICIAL_URL_SEED |
| `FANATEC` | Fanatec | Endor AG Fanatec, Corsair Fanatec | https://fanatec.com/ | https://fanatec.com/eu-en/support/ | gaming_accessories, peripherals, software_games | OFFICIAL_URL_SEED |
| `EIGHTBITDO` | 8BitDo | 8BitDo Controller | https://www.8bitdo.com/ | https://support.8bitdo.com/ | gaming_accessories, peripherals, software_games | OFFICIAL_URL_SEED |
| `KEYCHRON` | Keychron | Keychron Keyboard | https://www.keychron.com/ | https://www.keychron.com/pages/firmware | peripherals, gaming_accessories, software_games | OFFICIAL_SEARCH_CONFIRMED |
| `GLORIOUS` | Glorious | Glorious Gaming | https://www.gloriousgaming.com/ | https://www.gloriousgaming.com/pages/support | peripherals, gaming_accessories, software_games | OFFICIAL_URL_SEED |
| `CHERRY` | CHERRY | CHERRY XTRFY, Cherry Americas | https://www.cherry.de/ | https://www.cherry.de/en-us/service-support | peripherals, gaming_accessories, software_games | OFFICIAL_URL_SEED |
| `JABRA` | Jabra | GN Audio, GN | https://www.jabra.com/ | https://www.jabra.com/support | audio, peripherals, video_conferencing, software_games | OFFICIAL_URL_SEED |
| `RAPOO` | Rapoo | Rapoo Technology | https://www.rapoo.com/ | https://www.rapoo.com/support | peripherals, gaming_accessories, audio | OFFICIAL_URL_SEED |

## Per-candidate limitations

- `GOOGLE`: Pixel, Nest and Fitbit may require separate source records and product-line scopes. Do not merge all device facts into one generic support claim.
- `HMD_GLOBAL`: Nokia phone branding is licensed/lineage-sensitive. Keep Nokia aliases scoped and source-backed.
- `MOTOROLA_MOBILITY`: Motorola consumer devices and enterprise/radio Motorola Solutions must remain separate unless explicitly reviewed.
- `META` and `HTC_VIVE`: VR/XR support includes software stacks, controllers, headsets and regional warranty data; product/version scope is required before device facts.
- `VALVE`: Steam Deck, Valve Index and other Steam hardware need model-specific support and warranty references. Do not generalize SteamOS notes to all hardware.
- `FANATEC`: ownership/brand lineage may involve Corsair; treat as separate proposal pending official alias review.
- `KEYCHRON`: official firmware pages are high-risk download metadata. Store link-only references and do not download/rehost firmware.
- `JABRA`: enterprise/consumer support and GN group lineage require product-line scoping.
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

Next safe loop must re-read `/MEMORY/INDEXES/MANUFACTURER_DEDUPE_STATE_20260619.md`, confirm batch 007 names are present, then continue with a non-overlapping `MP-YYYYMMDD-manufacturer-ingest-batch-NNN.md`.
