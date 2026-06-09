# # # # # # # # # # # # # # # # # # # # #
# DEVICE_IDENTIFIER_ENTRY_TEMPLATE.md #
# # # # # # # # # # # # # # # # # # # # #

Version: 0.0.1
Status: ACTIVE
Family: template
Template-For: device_identifier_entry

# # # # # # # #
# Metadata #
# # # # # # # #

```yaml
id: DEVICE-ID-<TYPE>-<SLUG>
title: <identifier title>
family: device
status: STATUS_RESEARCH_REQUIRED
confidence: LOW
evidence_level: E0
first_added: YYYY-MM-DD
last_verified: UNKNOWN
canonical_path: /MEMORY/DEVICE_IDENTIFIERS/<MANUFACTURER>/<IDENTIFIER_TYPE>/<IDENTIFIER_SLUG>.md
sources: []
related_entries: []
review_required: true
version: 0.0.1
```

# # # # # # # # # # # # # #
# Identifier Record #
# # # # # # # # # # # # # #

```yaml
identifier: <identifier-or-pattern>
identifier_type: PCI_ID | USB_ID | ACPI_ID | PNP_ID | MODEL_IDENTIFIER | PRODUCT_NUMBER | SERVICE_TAG_TYPE | FIRMWARE_ID | BOARD_ID | VENDOR_ID | PRODUCT_ID | SUBSYSTEM_ID | PACKAGE_NAME | BUILD_ID | OTHER
manufacturer: <manufacturer>
product: <product-or-UNKNOWN>
model: <model-or-UNKNOWN>
hardware_revision: <revision-or-UNKNOWN>
meaning: <technical meaning>
individual_customer_identifier: false
safe_to_store: true | false | review_required
```

# # # # # # # # # # #
# Evidence #
# # # # # # # # # # #

```yaml
evidence:
  - source_id: <source-id>
    source_url: <url>
    claim_supported: <claim>
    source_class: <SOURCE_CLASS_*>
    retrieved_or_checked_at: YYYY-MM-DD
    evidence_level: E0 | E1 | E2 | E3 | E4 | E5
    limitations: []
```

# # # # # # # # #
# Links #
# # # # # # # # #

```yaml
related_manufacturer: <path>
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
- Store public identifier types and public vendor/product IDs.
- Do not store real individual service tags, serial numbers or customer-specific identifiers.
- If unsure whether an identifier is individual or generic, set safe_to_store: review_required.
- Device identifiers are used for recognition, diagnostics, deduplication and cross-linking, not for independent repair truth.
```

# # # # # # # # # # #
# Review Notes #
# # # # # # # # # # #

```text
- Is this a generic public identifier?
- Is it linked to a source?
- Could it identify an individual customer or device?
- Is the canonical manufacturer clear?
- Does an alias entry already exist?
```
