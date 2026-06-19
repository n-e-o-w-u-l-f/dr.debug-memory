# DR. DEBUG CHANGES.md

Version: 0.4.3-post-apply-catchup-report Status: ACTIVE Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-19
## audit(repo): add post-apply catch-up validation reports
- Added `MEMORY/REPORTS/VALIDATION/VR-20260619-post-apply-catchup.md` for post-apply catch-up classification.
- Added `MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-full-repository-duplicate-search.md` as a duplicate-search catch-up report.
- Added `MEMORY/REPORTS/CI/CI-20260619-local-clone-validation.md` as a local-clone/CI catch-up report.
- Classified local clone grep, CI, full repository duplicate search and canonical promotion validation as `REQUIRES_OWNER_LOCAL` or `NOT_TESTED` where they could not be executed by the available tools.
- No canonical promotion, deletion, reclassification, binary download, manual rehosting or archive rehosting was performed.
- Rollback: revert this changelog entry and the three added report files.

## proposal(manufacturers): add initial seed all-manufacturers batch 001
- Added `MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-initial-seed-all-manufacturers-batch-001.md` as the first resumable broad manufacturer seed batch.
- Stored 25 official-source manufacturer candidates across networking, NAS/storage, print/scan, mobile, SBC/embedded, IoT, AV and smart-home categories.
- Kept all records as `RESEARCH_SEED` / `MEMORY_PROPOSAL`.
- No canonical promotion, binary download, firmware download, manual download, installer download or rehosting was performed.
- No project directive rewrite was needed for this batch.

## memory(manufacturers): split manufacturer relationship review into five proposals
- Added `MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-kingston-hyperx-hp.md` for Kingston / HyperX / HP split relationship handling.
- Added `MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-crucial-micron.md` for Crucial / Micron parent-brand and transition handling.
- Added `MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-wd-sandisk-professional-gdrive.md` for Western Digital / SanDisk Professional / G-DRIVE brand-transition handling.
- Added `MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-samsung-consumer-storage.md` for Samsung Semiconductor / Samsung SSD / Samsung Memory alias-scope handling.
- Added `MEMORY/PROPOSALS/MANUFACTURERS/RELATIONSHIPS/MP-20260619-relationship-skhynix-solidigm.md` for SK hynix / Solidigm subsidiary relationship handling.
- No manufacturer records were promoted by this split relationship pass.
- No driver, BIOS, firmware, installer, controller utility, manual, PDF, image or other binary file was downloaded or rehosted.

## memory(manufacturers): record SK hynix and be quiet! source retry plus relationship review
- Added `MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-source-retry-skhynix-bequiet.md` with official-source retry results for SK hynix and be quiet!.
- Added `MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-manufacturer-relationship-review.md` for Kingston/HyperX/HP, Crucial/Micron, WD/SanDisk Professional/G-DRIVE, Samsung Semiconductor/Samsung SSD/Samsung Memory and SK hynix/Solidigm.
- No manufacturer records were promoted by that review pass.
- No driver, BIOS, firmware, installer, controller utility, manual, PDF, image or other binary file was downloaded or rehosted.

## memory(manufacturers): dedupe remaining PC component seed candidates
- Added `MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-storage-oem-peripheral-dedupe.md` and `MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-pc-component-batch-001-dedupe.md`.
- No manufacturer records were promoted by that dedupe pass.
- No driver, BIOS, firmware, installer, controller utility, manual, PDF, image or other binary file was downloaded or rehosted.

## memory(manufacturers): promote Phanteks, Thermaltake and LIAN LI canonical records
- Promoted Phanteks, Thermaltake and LIAN LI as individually reviewed manufacturer records from the manufacturer proposal batch.
- Added their manufacturer profiles and official source records.
- Added a rehosting gate policy proposal for manuals, software, controllers and binaries.
- No driver, BIOS, firmware, installer, controller utility, manual, PDF, image or other binary file was downloaded or rehosted.

## memory(manufacturers): promote Noctua, Cooler Master, NZXT and Fractal Design canonical records
- Promoted Noctua, Cooler Master, NZXT and Fractal Design as individually reviewed manufacturer records from the manufacturer proposal batch.
- Added their manufacturer profiles and official source records.
- No driver, BIOS, firmware, installer, utility, manual, PDF, image or other binary file was downloaded or rehosted.

## memory(manufacturers): promote G.SKILL and Seasonic canonical manufacturer records
- Promoted G.SKILL and Seasonic as individually reviewed manufacturer records from the manufacturer proposal batch.
- Added their manufacturer profiles and official source records.
- No driver, BIOS, firmware, installer, utility, manual or other binary file was downloaded or rehosted.

## memory(manufacturers): promote Corsair and Crucial canonical manufacturer records
- Promoted Corsair and Crucial canonical manufacturer records.
- Added Corsair and Crucial manufacturer profiles and official source records.
- No driver, BIOS, firmware, installer, utility, manual or other binary file was downloaded or rehosted.

## memory(manufacturers): promote EVGA canonical manufacturer record
- Promoted EVGA as a reviewed PC component manufacturer from the manufacturer proposal batch.
- Added EVGA manufacturer profile and official source records.
- No driver, BIOS, firmware, installer, utility, manual or other binary file was downloaded or rehosted.

## proposal(manufacturers): add PC component manufacturer seed batch
- Added `MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-pc-component-manufacturers-batch-001.md` as proposal-only official-source seed batch.
- Stored 25 manufacturer candidates with minimal source URLs and limitations for later review.
- No canonical promotion, binary download or rehosting was performed by the proposal.

# 2026-06-18
## docs(agents): add owner-gated public GitHub write model
- Updated repository governance drafts so Dr.Debug public may use GitHub write tools only in OWNER_ADMIN_MODE.
- Added the required owner flag: `DRDEBUG_OWNER_ADMIN=TRUE`.
- Added the admin command prefix: `!dd`.
- Added dry-run default; real write actions require `--apply`.
- Added destructive action gate: `DRDEBUG_DESTRUCTIVE=TRUE`.
