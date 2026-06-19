# DR. DEBUG CHANGES.md
Version: 0.3.9-storage-oem-peripheral-dedupe
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-19

## memory(manufacturers): dedupe remaining PC component seed candidates

- Added `MEMORY/PROPOSALS/MANUFACTURERS/MP-20260619-storage-oem-peripheral-dedupe.md` to classify remaining PC component seed candidates into storage, OEM/platform and peripheral/controller dedupe buckets.
- Added `MEMORY/REPORTS/DEDUP/MANUFACTURERS/DR-20260619-pc-component-batch-001-dedupe.md` with duplicate, alias-only, source-refresh, relationship-review, low-confidence, retry-required and no-action classifications.
- No manufacturer records were promoted by this dedupe pass.
- Classified existing verified/OEM/platform records such as ASUS, ASRock, MSI, GIGABYTE, Intel, AMD and NVIDIA as duplicate/no-action for this seed batch.
- Classified storage records such as Samsung Semiconductor Consumer Storage, Western Digital, Seagate and Kingston as source-refresh or alias/relationship-review work rather than new manufacturer records.
- Left SK hynix and be quiet! as retry-required candidates before any future canonical promotion.
- Left Kingston/HyperX/HP, Crucial/Micron, SK hynix/Solidigm, WD/SanDisk Professional and Samsung Semiconductor/Samsung SSD/Samsung Memory as relationship-review queues.
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

- Promoted Corsair and Crucial as individually reviewed manufacturer records from the manufacturer proposal batch.
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
