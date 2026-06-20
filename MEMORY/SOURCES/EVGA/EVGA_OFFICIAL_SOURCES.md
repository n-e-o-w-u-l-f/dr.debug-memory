---
id: sources-evga-official-20260619
family: SOURCES
category: MANUFACTURERS
title: EVGA official sources
status: CANONICAL
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: SOURCE_CONFIRMED
canonical_path: /MEMORY/SOURCES/EVGA/EVGA_OFFICIAL_SOURCES.md
aliases: []
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: false
sources: []
---

# EVGA official source records

## Scope

Official-source records for EVGA manufacturer identity and support-resource discovery. These records store facts and URLs only. They do not download, mirror, hash, validate or rehost any driver, BIOS, firmware, installer, utility or manual file.

## Records

```yaml
source_records:
  - source_id: manufacturer-evga-home-20260619
    url: https://www.evga.com/
    title: EVGA - Intelligent Innovation - Official Website
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: EVGA Corporation
    retrieved_at: 2026-06-19
    scope: EVGA manufacturer identity and official product/service navigation
    versions: n/a
    claim_supported: Official EVGA home page identifies EVGA and links product, support, Drivers and BIOS, product manuals and service resources.
    limitations: Region-specific EVGA sites exist; locale and product availability may vary.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a

  - source_id: manufacturer-evga-support-20260619
    url: https://www.evga.com/support/
    title: EVGA - Support - Home
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: EVGA Corporation
    retrieved_at: 2026-06-19
    scope: EVGA technical and warranty support landing page
    versions: n/a
    claim_supported: EVGA support page provides technical support and warranty support information for EVGA products.
    limitations: Support workflows may request serial numbers, contact information, invoice details or other personal data; such values must be redacted or omitted from Dr.Debug memory unless essential.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a

  - source_id: manufacturer-evga-download-center-20260619
    url: https://www.evga.com/support/download/
    title: EVGA - Download Center
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: EVGA Corporation
    retrieved_at: 2026-06-19
    scope: EVGA Drivers and BIOS lookup landing page
    versions: n/a
    claim_supported: EVGA Download Center provides Drivers and BIOS lookup categories for graphics cards, motherboards and other products.
    limitations: Binary-specific records require exact product family, part number, operating system, version and checksum where available. No binaries were downloaded or rehosted by this source record.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a

  - source_id: manufacturer-evga-manuals-20260619
    url: https://www.evga.com/support/manuals/
    title: EVGA - Support - Product Manuals
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: EVGA Corporation
    retrieved_at: 2026-06-19
    scope: EVGA product manuals landing page
    versions: n/a
    claim_supported: EVGA manuals page lists graphics card, motherboard and other product manual categories.
    limitations: Manual preservation or rehosting requires a separate archive gate, source URL, retrieved_at, hash, model scope, preservation rationale and takedown contact.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a
```

## Redaction note

No account credentials, user emails, private customer data, serial numbers, invoices, warranty identifiers, tokens or raw crawl dumps are stored in this file.
