# # # # # # # # # # # # # # # # #
# DELL SERVICE TAG IDENTIFIER TYPE #
# # # # # # # # # # # # # # # # #

Version: 0.0.1
Status: STATUS_RESEARCH_REQUIRED
Family: device
Canonical-Path: /MEMORY/DEVICE_IDENTIFIERS/DELL/SERVICE_TAG_TYPE.md
First-Added: 2026-06-09
Last-Verified: 2026-06-09
Confidence: LOW
Evidence-Level: E1
Review-Required: true

# # # # # # # # # # # # # #
# Identifier Record #
# # # # # # # # # # # # # #

```yaml
identifier: Dell Service Tag
identifier_type: SERVICE_TAG_TYPE
manufacturer: Dell
product: UNKNOWN
model: UNKNOWN
hardware_revision: UNKNOWN
meaning: Dell support identifier type used to route device-specific support.
individual_customer_identifier: true
safe_to_store: false
```

# # # # # # # # # # #
# Evidence #
# # # # # # # # # # #

```yaml
evidence:
  - source_id: DELL-SERVICE-TAG-20260609
    source_url: https://www.dell.com/support/contents/en-us/category/product-support/self-support-knowledgebase/locate-service-tag
    claim_supported: Dell provides official guidance for locating a Service Tag.
    source_class: SOURCE_CLASS_A_PRIMARY
    retrieved_or_checked_at: 2026-06-09
    evidence_level: E1
    limitations:
      - This entry records the identifier type only.
      - Real service tag values must never be stored in the repository.
```

# # # # # # # # #
# Links #
# # # # # # # # #

```yaml
related_manufacturer: /MEMORY/MANUFACTURERS/DELL/PROFILE.md
related_aliases: []
related_drivers: []
related_firmware: []
related_security: []
related_lifecycle: []
related_playbooks: []
```

# # # # # # # #
# Rules #
# # # # # # # #

```text
- This file documents only the public identifier type.
- Never store real Dell Service Tag values.
- Never store customer-specific Dell identifiers.
- If a user provides a real Service Tag in a case, redact it before any repository storage.
```

# # # # # # # # # # #
# Review Notes #
# # # # # # # # # # #

```text
- Confirm whether Dell Express Service Code needs a separate identifier-type entry.
- Confirm regional support URL variants before expanding source entries.
```
