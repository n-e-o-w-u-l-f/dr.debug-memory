# DR. DEBUG CHANGES.md
Version: 0.3.8-phanteks-thermaltake-lianli-policy-proposal
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-19

## memory(manufacturers): promote Phanteks, Thermaltake and LIAN LI canonical records

- Promoted Phanteks as an individually reviewed PC component manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/PHANTEKS/PROFILE.md` and `MEMORY/SOURCES/PHANTEKS/PHANTEKS_OFFICIAL_SOURCES.md`.
- Promoted Thermaltake as an individually reviewed PC component, gaming-gear and TT RGB PLUS software-reference manufacturer.
- Added `MEMORY/MANUFACTURERS/THERMALTAKE/PROFILE.md` and `MEMORY/SOURCES/THERMALTAKE/THERMALTAKE_OFFICIAL_SOURCES.md`.
- Promoted LIAN LI as an individually reviewed PC component, L-Connect 3 and firmware-update-reference manufacturer.
- Added `MEMORY/MANUFACTURERS/LIAN_LI/PROFILE.md` and `MEMORY/SOURCES/LIAN_LI/LIAN_LI_OFFICIAL_SOURCES.md`.
- Added `MEMORY/POLICIES/REHOSTING-GATE-SOFTWARE-CONTROLLER-MANUALS-20260619.md` as a policy proposal defining when manuals/documentation may be prepared or hosted and when software/controller/binary artifacts remain reference-only or review-package-only.
- Dedupe note: Phanteks, Thermaltake and LIAN LI were not visible in the checked canonical `MEMORY/MANUFACTURERS/manufacturers.jsonl`; already-visible and separately promoted manufacturer records were not duplicated.
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
