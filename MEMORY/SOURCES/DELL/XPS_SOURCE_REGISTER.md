# # # # # # # # # # # #
# DELL XPS SOURCE REGISTER #
# # # # # # # # # # # #

Version: 0.0.2
Status: STATUS_RESEARCH_REQUIRED
Family: source_register
Canonical-Path: /MEMORY/SOURCES/DELL/XPS_SOURCE_REGISTER.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true
Priority: 3

# # # # # # # #
# Purpose #
# # # # # # # #

Dell XPS is the Dell consumer-premium pilot family.

This file prepares official-source routing for later XPS-specific research.
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
      - Do not infer XPS model facts from this source alone.
```

# # # # # # # # # # # # #
# Required XPS Subsources #
# # # # # # # # # # # # #

```text
1. XPS family support landing page, if public and stable.
2. XPS manuals and documentation routing page.
3. XPS drivers and downloads routing page.
4. XPS diagnostics routing page.
5. XPS security advisory source entries.
6. XPS lifecycle or EOL/EOS source entries, only if official and model-specific.
```

# # # # # # # # # # # # #
# Source Creation Gates #
# # # # # # # # # # # # #

```text
SOURCE-GATE-XPS-01: Create a new source file only after the page is official, public and stable enough to cite.
SOURCE-GATE-XPS-02: Separate current XPS laptops from older or discontinued XPS forms before storing model facts.
SOURCE-GATE-XPS-03: Store drivers, BIOS and firmware only as metadata references, never as binaries.
SOURCE-GATE-XPS-04: Keep display, docking, sleep, GPU and BIOS findings model-specific.
SOURCE-GATE-XPS-05: If a page depends on Service Tag lookup, do not store lookup results.
```

# # # # # # # # # # # #
# Planned Source Files #
# # # # # # # # # # # #

```text
/MEMORY/SOURCES/DELL/XPS_FAMILY_SUPPORT.md
/MEMORY/SOURCES/DELL/XPS_MANUALS.md
/MEMORY/SOURCES/DELL/XPS_DRIVERS_DOWNLOADS.md
/MEMORY/SOURCES/DELL/XPS_DIAGNOSTICS.md
/MEMORY/SOURCES/DELL/XPS_SECURITY.md
/MEMORY/SOURCES/DELL/XPS_LIFECYCLE.md
```

# # # # # # # # # # #
# Safety Rules #
# # # # # # # # # # #

```text
- Do not store Service Tag values.
- Do not store driver, firmware or BIOS binaries.
- Do not infer one XPS model from another.
- Do not store warranty lookups or customer-specific results.
```
