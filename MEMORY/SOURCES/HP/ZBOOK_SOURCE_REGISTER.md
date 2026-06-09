# # # # # # # # # # # # #
# HP ZBOOK SOURCE REGISTER #
# # # # # # # # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: source_register
Canonical-Path: /MEMORY/SOURCES/HP/ZBOOK_SOURCE_REGISTER.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true
Priority: 1

# # # # # # # #
# Purpose #
# # # # # # # #

HP ZBook is the first HP workstation pilot family.

This file prepares official-source routing for later ZBook-specific research.
It does not confirm model-specific driver, firmware, BIOS, lifecycle, repair or error-code facts.

# # # # # # # # # # # # #
# Official Entry Points #
# # # # # # # # # # # # #

```yaml
sources:
  - source_id: HP-SUPPORT-HOME-20260609
    title: HP Support Home
    url: https://support.hp.com/
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    scope: Generic HP support routing entrypoint.
    allowed_use: Entry-point discovery only.
    limitations:
      - Not model specific.
      - Do not infer ZBook model facts from this source alone.

  - source_id: HP-SUPPORT-LANDING-20260609
    title: HP Support Landing Page
    url: https://www.hp.com/us-en/support.html
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    scope: HP support landing entrypoint.
    allowed_use: Entry-point discovery only.
    limitations:
      - Region-specific page.
      - Global routing requires later review.
```

# # # # # # # # # # # # #
# Required ZBook Subsources #
# # # # # # # # # # # # #

```text
1. ZBook family support landing page, if public and stable.
2. ZBook manuals and documentation routing page.
3. ZBook drivers and downloads routing page.
4. ZBook diagnostics routing page.
5. ZBook security advisory source entries.
6. ZBook lifecycle or EOL/EOS source entries, only if official and model-specific.
```

# # # # # # # # # # #
# Safety Rules #
# # # # # # # # # # #

```text
- Do not store serial numbers.
- Do not store warranty lookup results.
- Do not store driver, firmware or BIOS binaries.
- Do not infer one ZBook model from another.
- Do not store customer-specific results.
```

# # # # # # # # # # # # #
# Next Research Tasks #
# # # # # # # # # # # # #

```text
1. Locate official ZBook family support page.
2. Locate official ZBook manuals path.
3. Locate official ZBook driver and firmware routing path.
4. Create model-agnostic source entries only after crawl-gate review.
5. Select first concrete ZBook model only after source structure is confirmed.
```
