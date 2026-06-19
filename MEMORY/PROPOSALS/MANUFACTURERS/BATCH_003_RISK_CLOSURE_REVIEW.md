# Batch 003 risk closure review
Status: REVIEW_READY_DRY_RUN
Batch: MP-20260619-BROAD-HARDWARE-MANUFACTURERS-BATCH-003
Created: 2026-06-19
Write mode: dry-run/proposal package only; no GitHub write performed by this package.

## Closure summary
- Parsed candidate rows: 100
- JSONL parse errors: 0
- Exact normalized-name duplicates inside batch 003: 0
- Duplicate official_home domains inside batch 003: 0
- ALIAS_CONFLICT_REVIEW_REQUIRED: 6
- SOURCE_RECORD_READY_REVIEW_REQUIRED: 44
- SOURCE_RECORD_READY_SECURITY_GAP: 50
- Candidates with UNKNOWN security_url: 51

## Risk decisions
1. **Repository-wide dedupe:** no exact duplicate was found inside batch 003. Against the known current canonical and proposal sets, no candidate is an exact normalized-name duplicate. Several candidates remain blocked for alias/acquisition review before promotion.
2. **Source-record creation:** generated `SOURCE_RECORDS_BATCH_003_PROPOSED.jsonl` with one A_PRIMARY_OFFICIAL_VENDOR seed source record per candidate. These are source-record templates, not validated model-specific download records.
3. **Alias/acquisition review:** six candidates are marked `ALIAS_CONFLICT_REVIEW_REQUIRED`; all sub-brands and legacy names must stay aliases until reviewed.
4. **Conflict review:** no conflict was silently merged. Conflict-prone candidates are blocked from canonical promotion in this queue.
5. **One-by-one canonical promotion:** generated `PROMOTION_QUEUE_BATCH_003.md` with per-candidate state. Only non-blocked entries may proceed one at a time after source-record review.

## Hard blocks / review holds
- **Hewlett Packard Enterprise** — `do_not_merge_with_hp`. legacy-name split: HPE is separate from HP Inc., but overlaps the historic Hewlett-Packard name; keep HPE separate from existing HP canonical and note the legacy alias.
- **Dynabook** — `do_not_merge_with_kioxia_or_generic_toshiba`. legacy-name split: Dynabook/Toshiba PC support is separate from other Toshiba product lines; keep Toshiba PC as alias only.
- **Micron Technology** — `review_against_crucial_and_existing_storage_entries`. brand relationship: Micron overlaps Crucial-by-Micron from batch 001; keep Micron as canonical enterprise/semiconductor entity, Crucial as alias/sub-brand or separate only if review decides.
- **Kioxia** — `do_not_merge_with_dynabook_or_generic_toshiba`. rename/acquisition: Kioxia is former Toshiba Memory; keep Toshiba Memory as alias, do not merge with Dynabook/Toshiba PC.
- **Native Instruments** — `short_alias_ni_conflict_risk`. short alias NI can conflict with National Instruments; avoid short alias in canonical matching unless context says audio hardware/software.
- **Google** — `do_not_promote_pixel_or_nest_as_second_truth`. sub-brand review: Pixel and Nest should stay aliases/product families unless separate canonical scope is explicitly needed.

## Security URL gaps
The following candidates are not blocked as duplicates, but need security/advisory URL review before any `REVIEWED` or `CANONICAL` status: TUXEDO Computers, Schenker Technologies, Clevo, Durabook, AAEON, DFI, Axiomtek, Lanner Electronics, OnLogic, Transcend, ADATA, PNY, Lexar, TeamGroup, Silicon Power, Apacer, OWC, Keenetic, Tenda, Linksys, EnGenius, TerraMaster, Buffalo, Promise Technology, Plustek, Pantum, BenQ, ViewSonic, AOC, iiyama, Planar, Sennheiser, Denon, Marantz, Audio-Technica, Focusrite, PreSonus, Native Instruments, Roland, OM Digital Solutions, Leica Camera, GoPro, Insta360, Blackmagic Design, Reolink, Seeed Studio, Adafruit, SparkFun, PINE64, Radxa, Hardkernel.

## No-binary / no-rehosting confirmation
This remediation package creates metadata only. It does not download, hash, execute, mirror, attach, or rehost firmware, BIOS, driver, installer, manual, or binary files.

## Rollback
Because this package is dry-run/local only, rollback is deletion of the generated package. If later applied to GitHub, rollback is removal of the batch 003 review-closure file, proposed source-record file, promotion queue file, and related index/changelog entries only.
