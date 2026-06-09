# # # # # # # # # # # # # # # # # #
# SOURCE_TRUST_ENTRY_TEMPLATE.md #
# # # # # # # # # # # # # # # # # #

Version: 0.0.1
Status: ACTIVE
Family: template
Template-For: source_trust_entry

# # # # # # # #
# Metadata #
# # # # # # # #

```yaml
id: SOURCE-TRUST-<DOMAIN-SLUG>
title: <domain trust entry>
family: source
status: STATUS_RESEARCH_REQUIRED
confidence: LOW
evidence_level: E0
first_added: YYYY-MM-DD
last_verified: UNKNOWN
canonical_path: /MEMORY/SOURCE_TRUST/<DOMAIN_SLUG>.md
sources: []
related_entries: []
review_required: true
version: 0.0.1
```

# # # # # # # # # #
# Trust Entry #
# # # # # # # # # #

```yaml
domain: <domain>
owner_or_operator: <organization-or-UNKNOWN>
trust_level: TRUST_UNVERIFIED
source_class: SOURCE_CLASS_REJECTED | SOURCE_CLASS_F_WEAK | SOURCE_CLASS_E_COMMUNITY | SOURCE_CLASS_D_VALIDATED_CASE | SOURCE_CLASS_C_TRACKER | SOURCE_CLASS_B_PROJECT | SOURCE_CLASS_A_PRIMARY
source_type: <allowed-source-type>
primary_use: <manufacturer-support | documentation | advisory | download-metadata | community | other>
retrieved_or_checked_at: YYYY-MM-DD
limitations: []
```

# # # # # # # # # # #
# Evaluation #
# # # # # # # # # # #

```yaml
evaluation:
  official_source: true | false | unknown
  public_access: true | false | unknown
  login_required: true | false | unknown
  stable_urls: true | false | unknown
  has_docs: true | false | unknown
  has_release_notes: true | false | unknown
  has_security_advisories: true | false | unknown
  has_binary_downloads: true | false | unknown
  binary_downloads_stored: false
  crawl_allowed: true | false | limited | unknown
  license_or_usage_notes: <summary>
```

# # # # # # # #
# Claims #
# # # # # # # #

```yaml
claims_supported:
  - claim: <claim>
    source_url: <url>
    source_class: <SOURCE_CLASS_*>
    evidence_level: E0 | E1 | E2 | E3 | E4 | E5
    checked_at: YYYY-MM-DD
```

# # # # # # # #
# Risk #
# # # # # # # #

```yaml
risk:
  legal_or_license: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  data_quality: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  privacy: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
  security: LOW | MEDIUM | HIGH | CRITICAL | UNKNOWN
```

# # # # # # # # # # #
# Review Notes #
# # # # # # # # # # #

```text
- Is this an official source?
- Was access public?
- Were terms or crawl limits checked?
- Are supported claims specific and narrow?
- Are binaries excluded from repository storage?
- Is source_class consistent with /MEMORY/SOURCE_REGISTRY.md?
```
