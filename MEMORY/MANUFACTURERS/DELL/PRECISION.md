# # # # # # # # # # # #
# DELL PRECISION PILOT #
# # # # # # # # # # # #

Version: 0.0.2
Status: STATUS_RESEARCH_REQUIRED
Family: manufacturer_product_family
Canonical-Path: /MEMORY/MANUFACTURERS/DELL/PRECISION.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true

# # # # # # # #
# Summary #
# # # # # # # #

```yaml
manufacturer: Dell
product_family: Precision
category: workstation
batch: BATCH-0001C_PC_WORKSTATION
pilot_role: workstation pilot
support_entrypoint: https://www.dell.com/support/home
```

# # # # # # # # # # #
# Purpose #
# # # # # # # # # # #

Precision is the first Dell workstation pilot family for the Dr.Debug manufacturer memory structure.

# # # # # # # # # # #
# Allowed Claims #
# # # # # # # # # # #

```text
- Precision is treated as a Dell workstation product family for batch planning.
- This file does not confirm any model-specific driver, BIOS, firmware, lifecycle or repair fact.
- Mobile and desktop Precision systems must be separated during later product-specific research.
```

# # # # # # # # # # #
# Sources #
# # # # # # # # # # #

```yaml
sources:
  - source_id: DELL-SUPPORT-HOME-20260609
    url: https://www.dell.com/support/home
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    retrieved_or_checked_at: 2026-06-09
    limitation: General support entrypoint only.
```

# # # # # # # # # # # # #
# Research Gates #
# # # # # # # # # # # # #

```text
GATE-PRECISION-01: Find official Dell Precision routing page.
GATE-PRECISION-02: Separate Precision mobile workstations from desktop workstations before storing model facts.
GATE-PRECISION-03: Select exactly one mobile Precision and one desktop Precision pilot only after official page verification.
GATE-PRECISION-04: Create separate source records for support overview, drivers, manuals, diagnostics and BIOS/firmware.
GATE-PRECISION-05: Do not generalize workstation GPU, storage, BIOS or dock issues across models.
```

# # # # # # # # # # # # #
# Candidate Sub-Areas #
# # # # # # # # # # # # #

```yaml
candidate_subareas:
  mobile_workstation_support: STATUS_RESEARCH_REQUIRED
  desktop_workstation_support: STATUS_RESEARCH_REQUIRED
  driver_downloads: STATUS_RESEARCH_REQUIRED
  manuals_documentation: STATUS_RESEARCH_REQUIRED
  diagnostics: STATUS_RESEARCH_REQUIRED
  bios_uefi: STATUS_RESEARCH_REQUIRED
  gpu_certification_notes: STATUS_RESEARCH_REQUIRED
  lifecycle: STATUS_RESEARCH_REQUIRED
```

# # # # # # # # # # # #
# Next Research Tasks #
# # # # # # # # # # # #

```text
1. Locate official Dell Precision family support landing page.
2. Separate mobile Precision from desktop Precision before storing model facts.
3. Locate official Precision driver and download routing page.
4. Locate official Precision manuals and documentation routing page.
5. Identify model-specific subpages only after source-class and crawl-gate checks.
6. Prefer one mobile and one desktop Precision pilot before scaling.
```

# # # # # # # # # # #
# Safety Notes #
# # # # # # # # # # #

```text
- Do not store Service Tag values.
- Do not store driver or firmware binaries.
- Do not generalize workstation driver or BIOS facts across models.
- Keep workstation fixes model-specific, OS-specific and firmware-version-specific.
```
