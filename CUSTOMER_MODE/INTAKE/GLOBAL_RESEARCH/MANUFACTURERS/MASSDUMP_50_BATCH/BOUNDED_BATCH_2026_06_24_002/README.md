# Bounded manufacturer source-record batch 002

Date: 2026-06-24
Mode: OWNER_ADMIN_MODE
Status: PROPOSAL_ONLY
Canonical promotion: false
Binary downloads: false
Archive upload: false
Crawler execution: false
Depth applied: 0 actual crawl depth; official URL discovery only
Requested limit: max 10 manufacturers, max 6 URLs each, depth 1

## Scope

This batch records official-source metadata for 10 additional manufacturers from the requested manufacturer seed set. It does not download drivers, firmware, BIOS images, installers, service manuals, schematics, datasheets, or other binaries.

## Manufacturers in batch

1. IBM
2. ASUS
3. Acer
4. MSI
5. GIGABYTE
6. Hon Hai / Foxconn
7. LG
8. Philips
9. Seagate
10. Western Digital

## Files

- SOURCE_RECORDS.csv
- VALIDATION.md
- MANIFEST.json
- SHA256SUMS.txt

## Review outcome

Each row is proposal-only and marked canonical=false. Items with official-source support are marked SOURCE_CONFIRMED or RESEARCH_SEED depending on whether a public generic support/download portal was confirmed. Promotion remains blocked until dedupe, README matrix handling, source review, and Owner/Admin review are completed.

## Safety notes

- No raw crawl dump was stored.
- No binary file was downloaded, mirrored, hashed, or rehosted.
- No login, paywall, entitlement, or access-control boundary was crossed.
- No firmware/BIOS installation recommendation was made.
- No canonical MEMORY record was created or promoted.

## Rollback

Revert or delete this directory:

CUSTOMER_MODE/INTAKE/GLOBAL_RESEARCH/MANUFACTURERS/MASSDUMP_50_BATCH/BOUNDED_BATCH_2026_06_24_002/
