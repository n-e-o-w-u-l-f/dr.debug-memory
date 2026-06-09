# # # # # # # # # # # # # # # # #
# DELL PRECISION SOURCE REGISTER #
# # # # # # # # # # # # # # # # #

Version: 0.0.2
Status: STATUS_RESEARCH_REQUIRED
Family: source_register
Canonical-Path: /MEMORY/SOURCES/DELL/PRECISION_SOURCE_REGISTER.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true
Priority: 1

# # # # # # # #
# Purpose #
# # # # # # # #

Dell Precision is the first Dell workstation pilot family.

This file prepares the official-source checklist for later product-specific Precision research.
It does not confirm model-specific driver, firmware, BIOS, lifecycle, repair or error-code facts.

# # # # # # # # # # # # #
# Official Entry Points #
# # # # # # # # # # # # #

```yaml
sources:
  - source_id: DELL-SUPPORT-HOME-20260609
    title: Dell Support Home
    url: https://www.dell.com/support/home
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    scope: Generic Dell support routing entrypoint.
    allowed_use: Entry-point discovery only.
    limitations:
      - Not model specific.
      - Do not infer Precision model facts from this source alone.

  - source_id: DELL-SUPPORT-SECURITY-20260609
    title: Dell Support Security
    url: https://www.dell.com/support/security/en-us
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SECURITY
    scope: Dell security support routing entrypoint.
    allowed_use: Security source discovery only.
    limitations:
      - Individual advisories require separate source entries.
      - Do not generalize advisory impact across Precision models.
```

# # # # # # # # # # # # #
# Required Precision Subsources #
# # # # # # # # # # # # #

Before creating model-specific Precision entries, create separate source files for:

```text
1. Precision family support landing page, if public and stable.
2. Precision mobile workstation routing page.
3. Precision desktop workstation routing page.
4. Precision manuals and documentation routing page.
5. Precision drivers and downloads routing page.
6. Precision diagnostics routing page.
7. Precision security advisory source entries.
8. Precision lifecycle or EOL/EOS source entries, only if official and model-specific.
```

# # # # # # # # # # # # #
# Source Creation Gates #
# # # # # # # # # # # # #

```text
SOURCE-GATE-PRECISION-01: Create a new source file only after the page is official, public and stable enough to cite.
SOURCE-GATE-PRECISION-02: Split mobile Precision and desktop Precision before storing model facts.
SOURCE-GATE-PRECISION-03: Store drivers, BIOS and firmware only as metadata references, never as binaries.
SOURCE-GATE-PRECISION-04: Keep GPU certification or workstation configuration notes model-specific.
SOURCE-GATE-PRECISION-05: If a page depends on Service Tag lookup, do not store lookup results.
```

# # # # # # # # # # # #
# Planned Source Files #
# # # # # # # # # # # #

```text
/MEMORY/SOURCES/DELL/PRECISION_FAMILY_SUPPORT.md
/MEMORY/SOURCES/DELL/PRECISION_MOBILE_SUPPORT.md
/MEMORY/SOURCES/DELL/PRECISION_DESKTOP_SUPPORT.md
/MEMORY/SOURCES/DELL/PRECISION_MANUALS.md
/MEMORY/SOURCES/DELL/PRECISION_DRIVERS_DOWNLOADS.md
/MEMORY/SOURCES/DELL/PRECISION_DIAGNOSTICS.md
/MEMORY/SOURCES/DELL/PRECISION_SECURITY.md
/MEMORY/SOURCES/DELL/PRECISION_LIFECYCLE.md
```

# # # # # # # # # # # # #
# Split Requirement #
# # # # # # # # # # # # #

```text
Mobile Precision and desktop Precision must be separated before storing any product-specific facts.
```

# # # # # # # # # # #
# Safety Rules #
# # # # # # # # # # #

```text
- Do not store Service Tag values.
- Do not store driver or firmware binaries.
- Do not store BIOS packages.
- Do not infer one Precision model from another.
- Do not store warranty lookups or customer-specific results.
- Mark all unverified entries as STATUS_RESEARCH_REQUIRED.
```
