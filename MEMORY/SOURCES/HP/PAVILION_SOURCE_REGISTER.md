# # # # # # # # # # # # # #
# HP PAVILION SOURCE REGISTER #
# # # # # # # # # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: source_register
Canonical-Path: /MEMORY/SOURCES/HP/PAVILION_SOURCE_REGISTER.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true
Priority: 6

# # # # # # # #
# Purpose #
# # # # # # # #

HP Pavilion is the HP consumer-mainstream pilot family.

This register prepares official-source routing only. It does not confirm model-specific technical facts.

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
      - Direct automated fetch may be blocked.
      - Not model specific.
      - Do not infer Pavilion model facts from this source alone.
```

# # # # # # # # # # # # #
# Required Pavilion Subsources #
# # # # # # # # # # # # #

```text
1. Pavilion family support landing page, if public and stable.
2. Pavilion manuals and documentation routing page.
3. Pavilion downloads routing page.
4. Pavilion diagnostics routing page.
5. Pavilion advisory source entries.
6. Pavilion lifecycle source entries, only if official and model-specific.
```

# # # # # # # # # # #
# Safety Rules #
# # # # # # # # # # #

```text
- Do not store personal device identifiers.
- Do not store lookup results or customer-specific records.
- Do not mirror vendor files.
- Do not infer one Pavilion model from another.
```
