# # # # # # # # # # # #
# HP MANUFACTURER PROFILE #
# # # # # # # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: manufacturer
Canonical-Path: /MEMORY/MANUFACTURERS/HP/PROFILE.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true

# # # # # # # #
# Summary #
# # # # # # # #

```yaml
manufacturer_name: HP
canonical_name: HP
known_aliases:
  - Hewlett-Packard
  - HP Inc.
manufacturer_type: pc_laptop_workstation_vendor
primary_regions:
  - global
official_websites:
  - https://www.hp.com/
official_support_entrypoints:
  - https://support.hp.com/
  - https://www.hp.com/us-en/support.html
```

# # # # # # # # # # # # #
# Product Families #
# # # # # # # # # # # # #

Initial pilot families for BATCH-0001:

```yaml
product_families:
  - name: ZBook
    category: workstation
    status: STATUS_RESEARCH_REQUIRED
    notes:
      - Workstation pilot family.
  - name: EliteBook
    category: business
    status: STATUS_RESEARCH_REQUIRED
    notes:
      - Business premium pilot family.
  - name: ProBook
    category: business
    status: STATUS_RESEARCH_REQUIRED
    notes:
      - Business mainstream pilot family.
  - name: Spectre
    category: consumer
    status: STATUS_RESEARCH_REQUIRED
    notes:
      - Consumer premium pilot family.
  - name: Envy
    category: consumer
    status: STATUS_RESEARCH_REQUIRED
    notes:
      - Consumer premium/mainstream pilot family.
  - name: Pavilion
    category: consumer
    status: STATUS_RESEARCH_REQUIRED
    notes:
      - Consumer mainstream pilot family.
```

# # # # # # # # # # #
# Support Areas #
# # # # # # # # # # #

Planning-level public support entrypoints:

```yaml
support_areas:
  support_home: PUBLIC_ENTRYPOINT_PLANNED
  drivers_downloads: REVIEW_REQUIRED
  manuals_documentation: REVIEW_REQUIRED
  diagnostics: REVIEW_REQUIRED
  warranty_support: REVIEW_REQUIRED
  repair_parts: REVIEW_REQUIRED
  security_advisories: REVIEW_REQUIRED
  firmware_updates: REVIEW_REQUIRED
  lifecycle_eol_eos: REVIEW_REQUIRED
```

# # # # # # # # # # #
# Sources #
# # # # # # # # # # #

```yaml
sources:
  - source_id: HP-SUPPORT-HOME-20260609
    url: https://support.hp.com/
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    retrieved_or_checked_at: 2026-06-09
    claim_supported: HP has a public support entrypoint.
    limitations:
      - Entry point only; product-specific pages still require separate review.
  - source_id: HP-SUPPORT-LANDING-20260609
    url: https://www.hp.com/us-en/support.html
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    retrieved_or_checked_at: 2026-06-09
    claim_supported: HP has a public support landing page.
    limitations:
      - Region-specific page; global routing requires later review.
```

# # # # # # # #
# Risks #
# # # # # # # #

```yaml
risks:
  data_quality: MEDIUM
  legal_or_license: LOW
  security: MEDIUM
  firmware: MEDIUM
  lifecycle: UNKNOWN
```

# # # # # # # # # # # # #
# Next Research Tasks #
# # # # # # # # # # # # #

```text
1. Create HP source register index.
2. Create ZBook source register as workstation pilot.
3. Create EliteBook and ProBook source registers as business pilots.
4. Create Spectre, Envy and Pavilion source registers as consumer pilots.
5. Do not add model-specific claims before official product pages are reviewed.
```
