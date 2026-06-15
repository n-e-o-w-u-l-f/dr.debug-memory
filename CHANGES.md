# DR. DEBUG CHANGES.md

Version: 0.2.9
Status: ACTIVE
Scope: Repository change history for Dr. Debug /MEMORY/

# 2026-06-15

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

## Suggested commit message

feat(memory): add ASRock device entries
