# # # # # # # # # # # #
# DELL XPS SOURCE REGISTER #
# # # # # # # # # # # #

Version: 0.0.1
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

# # # # # # # # # # #
# Safety Rules #
# # # # # # # # # # #

```text
- Do not store Service Tag values.
- Do not store driver, firmware or BIOS binaries.
- Do not infer one XPS model from another.
- Do not store warranty lookups or customer-specific results.
```
