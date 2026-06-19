---
id: sources-phanteks-official-20260619
family: SOURCES
category: MANUFACTURERS
title: Phanteks official sources
status: CANONICAL
confidence: HIGH
source_status: OFFICIAL_SOURCE_REVIEWED_WITH_LIMITATIONS
validation_status: SOURCE_CONFIRMED
canonical_path: /MEMORY/SOURCES/PHANTEKS/PHANTEKS_OFFICIAL_SOURCES.md
aliases: []
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: false
sources: []
---

# Phanteks official source records

## Scope

Official-source records for Phanteks manufacturer identity and support-resource discovery. These records store facts and URLs only. They do not download, mirror, hash, validate or rehost any software, controller utility, firmware, installer, manual, PDF or binary file.

```yaml
source_records:
  - source_id: manufacturer-phanteks-home-20260619
    url: https://phanteks.com/
    title: Phanteks official website
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Phanteks
    retrieved_at: 2026-06-19
    scope: manufacturer identity and product/support navigation
    versions: n/a
    claim_supported: Official Phanteks site lists cases, cooling, custom cooling, power supplies, accessories and support links including EOL products, warranty and FAQ.
    limitations: Some support/download resources may be script-rendered or product-specific.
    license_or_terms_note: Facts and URLs only; no copied vendor text, accounts, credentials, PDFs or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a

  - source_id: manufacturer-phanteks-nexlinq-20260619
    url: https://phanteks.com/new-nexlinq-app-update/
    title: New NexLinq App Update
    source_class: A_PRIMARY_OFFICIAL_VENDOR
    publisher: Phanteks
    retrieved_at: 2026-06-19
    scope: NexLinq app/update and controller-software reference discovery
    versions: n/a
    claim_supported: Official Phanteks NexLinq page describes app update flow and directs users to release notes and support channels.
    limitations: Binary-specific NexLinq records require exact software version, OS/device scope and checksum where available. No installer was downloaded or rehosted.
    license_or_terms_note: Facts and URLs only; no copied vendor text or binaries.
    crawl_allowed: not recorded
    hash_if_file: n/a
```

## Redaction note

No account credentials, user emails, private customer data, serial numbers, invoices, warranty identifiers, tokens or raw crawl dumps are stored in this file.
