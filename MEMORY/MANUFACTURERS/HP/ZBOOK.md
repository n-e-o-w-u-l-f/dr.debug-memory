# # # # # # # #
# HP ZBOOK PILOT #
# # # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: manufacturer_product_family
Canonical-Path: /MEMORY/MANUFACTURERS/HP/ZBOOK.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true

# # # # # # # #
# Summary #
# # # # # # # #

```yaml
manufacturer: HP
product_family: ZBook
category: workstation
batch: BATCH-0001C_PC_WORKSTATION
pilot_role: HP workstation pilot
support_entrypoint: https://support.hp.com/
```

# # # # # # # # # # #
# Purpose #
# # # # # # # # # # #

ZBook is the first HP workstation pilot family for the Dr.Debug manufacturer memory structure.

# # # # # # # # # # #
# Allowed Claims #
# # # # # # # # # # #

```text
- ZBook is treated as an HP workstation product family for batch planning.
- This file does not confirm any model-specific driver, BIOS, firmware, lifecycle or repair fact.
- Product-specific facts require separate official HP product pages.
```

# # # # # # # # # # # # #
# Research Gates #
# # # # # # # # # # # # #

```text
GATE-HP-ZBOOK-01: Find official HP ZBook support routing page.
GATE-HP-ZBOOK-02: Separate mobile ZBook from desktop workstation families before storing model facts.
GATE-HP-ZBOOK-03: Select exactly one ZBook pilot model only after official page verification.
GATE-HP-ZBOOK-04: Create separate source entries for support overview, drivers, manuals, diagnostics and BIOS/firmware.
GATE-HP-ZBOOK-05: Do not generalize workstation GPU, dock, storage or BIOS issues across models.
```

# # # # # # # # # # # # #
# Candidate Sub-Areas #
# # # # # # # # # # # # #

```yaml
candidate_subareas:
  workstation_support: STATUS_RESEARCH_REQUIRED
  driver_downloads: STATUS_RESEARCH_REQUIRED
  manuals_documentation: STATUS_RESEARCH_REQUIRED
  diagnostics: STATUS_RESEARCH_REQUIRED
  bios_uefi: STATUS_RESEARCH_REQUIRED
  lifecycle: STATUS_RESEARCH_REQUIRED
```

# # # # # # # # # # #
# Safety Notes #
# # # # # # # # # # #

```text
- Do not store HP serial numbers or warranty lookup results.
- Do not store driver, BIOS or firmware binaries.
- Keep all ZBook facts model-specific and source-specific.
```
