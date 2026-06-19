---
id: sources-corsair-official-20260619
family: SOURCES
category: MANUFACTURERS
title: Corsair official sources
status: CANONICAL
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED
validation_status: SOURCE_CONFIRMED
canonical_path: /MEMORY/SOURCES/CORSAIR/CORSAIR_OFFICIAL_SOURCES.md
aliases: []
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: false
sources: []
---

# Corsair official source records

## Scope

Official-source records for Corsair manufacturer identity and support-resource discovery. These records store facts and URLs only. They do not download, mirror, hash, validate or rehost any driver, firmware, installer, utility, software package or manual file.

## Records

```yaml
source_records:
  - source_id: manufacturer-corsair-home-20260619
    url: https://www.corsair.com/
    title: Corsair official website
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Corsair
    retrieved_at: 2026-06-19
    scope: Corsair manufacturer identity and official product-category navigation
    versions: n/a
    claim_supported: Official Corsair home page lists product categories including cases, gaming PCs, memory, keyboards, headsets, power supplies, coolers, mice and fans.
    limitations: Locale redirects may occur; product availability and support routing may vary by region.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a

  - source_id: manufacturer-corsair-support-20260619
    url: https://help.corsair.com/
    title: Corsair support home
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Corsair
    retrieved_at: 2026-06-19
    scope: Corsair knowledge base and product support landing page
    versions: n/a
    claim_supported: Corsair support page lists knowledge-base and support areas including software support, gaming gear, PC components, customer service and gaming PCs/laptops/monitors.
    limitations: Support workflows may request account, order, email or warranty information; such values must be redacted or omitted from Dr.Debug memory unless essential.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a

  - source_id: manufacturer-corsair-downloads-20260619
    url: https://www.corsair.com/us/en/s/downloads
    title: Corsair Downloads
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Corsair
    retrieved_at: 2026-06-19
    scope: Corsair software, driver and firmware update landing page
    versions: n/a
    claim_supported: Corsair downloads page identifies software, drivers and firmware updates for Corsair devices and gaming PCs.
    limitations: Binary-specific records require exact product family, model, operating system, version and checksum where available. No binaries were downloaded or rehosted by this source record.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a
```

## Redaction note

No account credentials, user emails, private customer data, serial numbers, invoices, warranty identifiers, tokens or raw crawl dumps are stored in this file.
