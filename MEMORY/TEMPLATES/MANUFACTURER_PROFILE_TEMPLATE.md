# # # # # # # # # # # # # # # # # #
# MANUFACTURER_PROFILE_TEMPLATE.md #
# # # # # # # # # # # # # # # # # #

Version: 0.0.1
Status: ACTIVE
Family: template
Template-For: manufacturer_profile

# # # # # # # #
# Metadata #
# # # # # # # #

```yaml
id: MANUFACTURER-<SLUG>
title: <Manufacturer Name>
family: manufacturer
status: STATUS_RESEARCH_REQUIRED
confidence: LOW
evidence_level: E0
first_added: YYYY-MM-DD
last_verified: UNKNOWN
canonical_path: /MEMORY/MANUFACTURERS/<MANUFACTURER>/PROFILE.md
sources: []
related_entries: []
review_required: true
version: 0.0.1
```

# # # # # # # #
# Summary #
# # # # # # # #

```yaml
manufacturer_name: <name>
canonical_name: <canonical-name>
known_aliases: []
manufacturer_type: <pc | laptop | workstation | component | software | platform | other>
primary_regions: []
official_websites: []
official_support_entrypoints: []
```

# # # # # # # # # # # # # #
# Product Families #
# # # # # # # # # # # # # #

```yaml
product_families:
  - name: <family-name>
    category: <consumer | business | workstation | server | component | other>
    status: STATUS_RESEARCH_REQUIRED
    source: <source-id-or-url>
    notes: []
```

# # # # # # # # # # #
# Support Areas #
# # # # # # # # # # #

```yaml
support_areas:
  drivers_downloads: UNKNOWN
  manuals_documentation: UNKNOWN
  diagnostics: UNKNOWN
  warranty_support: UNKNOWN
  repair_parts: UNKNOWN
  security_advisories: UNKNOWN
  firmware_updates: UNKNOWN
  lifecycle_eol_eos: UNKNOWN
```

# # # # # # # # # # #
# Evidence #
# # # # # # # # # # #

```yaml
evidence:
  - source_id: <source-id>
    claim_supported: <claim>
    source_class: <SOURCE_CLASS_*>
    retrieved_or_checked_at: YYYY-MM-DD
    limitation: <limitation-or-none>
```

# # # # # # # # #
# Risks #
# # # # # # # # #

```yaml
risks:
  data_quality: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  legal_or_license: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  security: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  firmware: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  lifecycle: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
```

# # # # # # # # #
# Links #
# # # # # # # # #

```yaml
related_sources: []
related_aliases: []
related_device_identifiers: []
related_firmware: []
related_security: []
related_lifecycle: []
related_manuals: []
related_playbooks: []
```

# # # # # # # # # # #
# Review Notes #
# # # # # # # # # # #

```text
- Source coverage checked?
- Canonical naming checked?
- Aliases checked?
- Device identifiers checked?
- Index entry needed?
- CHANGES.md updated?
```
