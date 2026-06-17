# DR. DEBUG CHANGES.md

Version: 0.3.1
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-17

## fix(memory): correct Puzzle & Survival C9 row prefix rule

- Updated `/MEMORY/TEMPLATES/PUZZLE_AND_SURVIVAL_ASCII_CHAT_TEMPLATE.md` to document that the leading `[#C9]` marker is required once at the beginning of the complete text input.
- Corrected follow-up rows to use split color blocks without repeating a leading `[#C9]` prefix.

## feat(memory): add Puzzle & Survival ASCII template

- Added `/MEMORY/TEMPLATES/PUZZLE_AND_SURVIVAL_ASCII_CHAT_TEMPLATE.md` as a reusable Puzzle & Survival ASCII/color-format template.
- Added the new template to `/MEMORY/TEMPLATES/README.md`.

# 2026-06-15

## chore(memory): merge recovered uncommitted ChatGPT follow-ups

- Added combined follow-up patch notes under `/MEMORY/STATE/chatgpt_uncommitted_merge_20260615.md`.
- Completed manufacturer navigation sidecars for the 16 already committed verified manufacturers.
- Left the existing operating-system starter area untouched; local files already existed during patch application.
- Added Archive.org bootstrap recovery notes because the prior branch/PR state could not be fetched directly here.
- Added source sidecars instead of replacing the large root source registry.

## docs(memory): complete manufacturer navigation follow-up

- Added `/MEMORY/MANUFACTURERS/manufacturers_by_category.md`.
- Added `/MEMORY/MANUFACTURERS/manufacturers_by_country.md`.
- Expanded `/MEMORY/MANUFACTURERS/INDEX.md` and `manufacturers_aliases.md` for all 16 verified manufacturers already present in `manufacturers.jsonl`.
- Added Seagate to manufacturer review candidates pending a stable official support/download source check.

## feat(memory): update firmware jsonl

- Updated `/MEMORY/FIRMWARE/firmware.jsonl` with verified source-backed entries and checksums.
- Refreshed minimal firmware navigation files.

## feat(memory): add package metadata areas

- Added new package metadata starter areas.
- Added first ASUS TUF GAMING Z890-PRO WIFI package metadata lines from official ASUS support source.
- Updated `/MEMORY/INDEX.md` with the new areas.
- Concrete ASUS support packages not visible in static source remain in review.

## docs(memory): cleanup ASUS device indexes

- Added `/MEMORY/HARDWARE/DEVICES/devices_by_year.md`.
- Documented the four ASUS starter-batch devices under a release-year-not-yet-imported section until explicit release-year evidence is verified.
- Updated `/MEMORY/HARDWARE/DEVICES/device_research_log.md` with the ASUS cleanup pass.
- Confirmed that each ASUS verified device has direct official ASUS URLs in `devices.jsonl` and Markdown navigation.

## feat(memory): add ASRock device entries

- Added five verified ASRock records to `/MEMORY/HARDWARE/DEVICES/devices.jsonl` from official ASRock product pages.
- Added Z890 Taichi AQUA, Z890 Taichi, X870E Taichi, B850 Steel Legend WiFi and DeskMini X600 Series.
- Release years were intentionally left empty pending explicit release-year evidence.
- Markdown navigation updates for ASRock require a follow-up because connector safety checks blocked the Markdown index replacements in this run.

## Review notes

- Product-specific download URLs remain a later verification target for ASUS and ASRock models using generic support fallbacks.
