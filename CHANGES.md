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

## Review notes

- `/MEMORY/SOURCE_REGISTRY.md` still needs a small local follow-up edit for centralized ASUS source-class entries if the full-file replacement path is unavailable.
- Product-specific download URLs remain a later verification target for ASUS models that currently use the generic ASUS Download Center fallback.

## Suggested commit message

feat(memory): update firmware jsonl
