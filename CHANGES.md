# DR. DEBUG CHANGES.md
Version: 0.3.5-corsair-crucial-manufacturer-promotions
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-19

## memory(manufacturers): promote Corsair and Crucial canonical manufacturer records

- Promoted Corsair as an individually reviewed PC component manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/CORSAIR/PROFILE.md` as the Corsair canonical manufacturer profile.
- Added `MEMORY/SOURCES/CORSAIR/CORSAIR_OFFICIAL_SOURCES.md` with official Corsair source records for home, support and downloads pages.
- Promoted Crucial as an individually reviewed memory/storage manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/CRUCIAL/PROFILE.md` as the Crucial canonical manufacturer profile.
- Added `MEMORY/SOURCES/CRUCIAL/CRUCIAL_OFFICIAL_SOURCES.md` with official Crucial source records for home, support and SSD firmware/support pages.
- Dedupe note: Corsair and Crucial were not visible in the checked canonical `MEMORY/MANUFACTURERS/manufacturers.jsonl`; already-visible records such as ASUS, ASRock, GIGABYTE, MSI, Intel, AMD, NVIDIA, Kingston Technology, Samsung Semiconductor, Western Digital, Seagate Technology and EVGA were not duplicated.
- G.SKILL remains review-only in this pass because direct support/download page fetches returned internal errors; the official G.SKILL home page still shows Support and Download navigation and should be retried later.
- No driver, BIOS, firmware, installer, utility, manual or other binary file was downloaded or rehosted.

## memory(manufacturers): promote EVGA canonical manufacturer record

- Promoted EVGA as a reviewed PC component manufacturer from the manufacturer proposal batch.
- Added `MEMORY/MANUFACTURERS/EVGA/PROFILE.md` as the EVGA canonical manufacturer profile.
- Added `MEMORY/SOURCES/EVGA/EVGA_OFFICIAL_SOURCES.md` with official EVGA source records for home, support, Download Center and product manuals.
- Dedupe note: EVGA was not visible in `MEMORY/MANUFACTURERS/manufacturers.jsonl`; already-visible records such as ASUS, ASRock, GIGABYTE, MSI, Intel, AMD, NVIDIA, Kingston Technology, Samsung Semiconductor, Western Digital and Seagate Technology were not duplicated.
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
- Preserved that repository maintenance, merge, commit, push, status maintenance and fixed database intake belong exclusively to the owner in the chat.
- Replaced unconditional public-write bans in Public proposal policy files with owner-gated write rules.
- Added admin help command requirements.

## Affected repository override files in this ZIP

- `/AGENTS.md`
- `/AGENTS/ACTIVE/DR_DEBUG.md`
- `/AGENTS/ACTIVE/DR_DEBUG_MEMORY.md`
- `/AGENTS/PROPOSALS/dr_debug_public_unknown_entity_permission_policy_BATCH6_PROPOSAL_ONLY.md`
- `/AGENTS/PROPOSALS/dr_debug_public_unknown_entity_policy_BUILD4_SAFE_PROPOSAL_ONLY.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/README.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/LIFECYCLE.md`
- `/MEMORY/STATUS_REGISTRY.md`
- `/UPDATE_PROCESS.md`
- `/CHANGES.md`
