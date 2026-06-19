# DR. DEBUG CHANGES.md
Version: 0.3.7-noctua-coolermaster-nzxt-fractal-promotions
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-19

## memory(manufacturers): promote Noctua, Cooler Master, NZXT and Fractal Design canonical records

- Promoted Noctua as an individually reviewed cooling manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/NOCTUA/PROFILE.md` and `MEMORY/SOURCES/NOCTUA/NOCTUA_OFFICIAL_SOURCES.md`.
- Promoted Cooler Master as an individually reviewed PC component and gaming-gear manufacturer.
- Added `MEMORY/MANUFACTURERS/COOLER_MASTER/PROFILE.md` and `MEMORY/SOURCES/COOLER_MASTER/COOLER_MASTER_OFFICIAL_SOURCES.md`.
- Promoted NZXT as an individually reviewed PC component, gaming-PC and CAM-software-reference manufacturer.
- Added `MEMORY/MANUFACTURERS/NZXT/PROFILE.md` and `MEMORY/SOURCES/NZXT/NZXT_OFFICIAL_SOURCES.md`.
- Promoted Fractal Design as an individually reviewed case, cooling, PSU and documentation-reference manufacturer.
- Added `MEMORY/MANUFACTURERS/FRACTAL_DESIGN/PROFILE.md` and `MEMORY/SOURCES/FRACTAL_DESIGN/FRACTAL_DESIGN_OFFICIAL_SOURCES.md`.
- Dedupe note: Noctua, Cooler Master, NZXT and Fractal Design were not visible in the checked canonical `MEMORY/MANUFACTURERS/manufacturers.jsonl`; already-visible records such as ASUS, ASRock, GIGABYTE, MSI, BIOSTAR, Intel, AMD, NVIDIA, Kingston Technology, Samsung Semiconductor, Western Digital, Seagate Technology, EVGA, Corsair, Crucial, G.SKILL and Seasonic were not duplicated.
- No driver, BIOS, firmware, installer, utility, manual, PDF, image or other binary file was downloaded or rehosted.

## memory(manufacturers): promote G.SKILL and Seasonic canonical manufacturer records

- Promoted G.SKILL as an individually reviewed PC component manufacturer from the manufacturer proposal batch after official-source retry.
- Added `MEMORY/MANUFACTURERS/GSKILL/PROFILE.md` and `MEMORY/SOURCES/GSKILL/GSKILL_OFFICIAL_SOURCES.md`.
- G.SKILL limitation: the direct `https://www.gskill.com/downloads` fetch returned an internal error in that tool run, so download/binary-specific records require a later retry.
- Promoted Seasonic as an individually reviewed PSU/accessory manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/SEASONIC/PROFILE.md` and `MEMORY/SOURCES/SEASONIC/SEASONIC_OFFICIAL_SOURCES.md`.
- No driver, BIOS, firmware, installer, utility, manual or other binary file was downloaded or rehosted.

## memory(manufacturers): promote Corsair and Crucial canonical manufacturer records

- Promoted Corsair and Crucial as individually reviewed manufacturer records from the manufacturer proposal batch.
- Added Corsair and Crucial manufacturer profiles and official source records.
- No driver, BIOS, firmware, installer, utility, manual or other binary file was downloaded or rehosted.

## memory(manufacturers): promote EVGA canonical manufacturer record

- Promoted EVGA as a reviewed PC component manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/EVGA/PROFILE.md` and `MEMORY/SOURCES/EVGA/EVGA_OFFICIAL_SOURCES.md`.
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
