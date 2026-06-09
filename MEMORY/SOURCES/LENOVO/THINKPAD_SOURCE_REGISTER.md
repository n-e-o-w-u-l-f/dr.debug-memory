# # # # # # # # # # # # # # # #
# LENOVO THINKPAD SOURCE REGISTER #
# # # # # # # # # # # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: source_register
Canonical-Path: /MEMORY/SOURCES/LENOVO/THINKPAD_SOURCE_REGISTER.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true
Priority: 1

# # # # # # # #
# Purpose #
# # # # # # # #

Lenovo ThinkPad is the first Lenovo business pilot family.

This file prepares official-source routing for later ThinkPad-specific research.
It does not confirm model-specific driver, firmware, BIOS, lifecycle, repair or error-code facts.

# # # # # # # # # # # # #
# Official Entry Points #
# # # # # # # # # # # # #

```yaml
sources:
  - source_id: LENOVO-PCSUPPORT-20260609
    title: Lenovo PC Support
    url: https://pcsupport.lenovo.com/
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    scope: Generic Lenovo PC support routing entrypoint.
    allowed_use: Entry-point discovery only.
    limitations:
      - Not model specific.
      - Do not infer ThinkPad model facts from this source alone.

  - source_id: LENOVO-SUPPORT-20260609
    title: Lenovo Support
    url: https://support.lenovo.com/
    source_class: SOURCE_CLASS_A_PRIMARY
    source_type: VENDOR_SUPPORT
    scope: Generic Lenovo support routing entrypoint.
    allowed_use: Entry-point discovery only.
    limitations:
      - Region and product routing require later review.
```

# # # # # # # # # # # # #
# Required ThinkPad Subsources #
# # # # # # # # # # # # #

```text
1. ThinkPad family support landing page, if public and stable.
2. ThinkPad manuals and documentation routing page.
3. ThinkPad drivers and downloads routing page.
4. ThinkPad diagnostics routing page.
5. ThinkPad lifecycle or EOL/EOS source entries, only if official and model-specific.
```

# # # # # # # # # # #
# Safety Rules #
# # # # # # # # # # #

```text
- Do not store serial numbers.
- Do not store warranty lookup results.
- Do not store driver, firmware or BIOS binaries.
- Do not infer one ThinkPad model from another.
- Do not store customer-specific results.
```
