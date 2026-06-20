---
id: policy-rehosting-gate-software-controller-manuals-20260619
family: POLICIES
category: archive_rehosting
policy_id: REHOSTING-GATE-SOFTWARE-CONTROLLER-MANUALS-20260619
title: Rehosting gate for manuals, software, controllers and binaries
status: PROPOSAL_READY_FOR_REVIEW
confidence: HIGH
source_status: POLICY_DERIVED_FROM_REPOSITORY_RULES
validation_status: STATIC_CHECK
canonical_path: /MEMORY/POLICIES/REHOSTING-GATE-SOFTWARE-CONTROLLER-MANUALS-20260619.md
aliases: []
created_at: 2026-06-19
updated_at: 2026-06-19
review_required: true
sources:
  - repository-policy-archive-org-rehosting
  - repository-policy-firmware-driver-manual
  - repository-policy-manufacturer-ingest
---

# Rehosting gate for manuals, software, controllers and binaries

## Scope

This proposal defines when Dr.Debug may prepare rehosting metadata and when hosting/rehosting may occur for manufacturer downloads, software, controller utilities, firmware, BIOS, drivers, installers, manuals and documentation.

This file is a policy proposal. It does not authorize any upload, mirror, archive.org item, public rehost, binary download or manual rehost by itself.

## Default decisions

```yaml
default_decisions:
  official_source_online:
    manuals_documentation: REFERENCE_ONLY
    software_controller_utility: REFERENCE_ONLY_DO_NOT_REHOST
    firmware_bios_driver_installer: REFERENCE_ONLY_DO_NOT_REHOST
  official_source_missing:
    manuals_documentation: PREPARE_REHOSTING_REVIEW_PACKAGE
    software_controller_utility: OWNER_ADMIN_REVIEW_PACKAGE_ONLY
    firmware_bios_driver_installer: OWNER_ADMIN_REVIEW_PACKAGE_ONLY
  official_source_unstable_or_at_risk:
    manuals_documentation: ARCHIVE_PROPOSAL_OR_REHOSTING_REVIEW_PACKAGE
    software_controller_utility: REFERENCE_ONLY_OR_OWNER_ADMIN_REVIEW_PACKAGE
    firmware_bios_driver_installer: REFERENCE_ONLY_OR_OWNER_ADMIN_REVIEW_PACKAGE
```

## Reference-only rule

If the manufacturer still offers a file officially, Dr.Debug must not automatically rehost it. Store only minimal source metadata:

```yaml
reference_only_fields:
  source_url: required
  title: required_if_known
  publisher: required
  source_class: official_vendor
  retrieved_at: required
  product_or_model_scope: required_if_known
  version_or_date: required_if_visible
  file_type: manual | documentation | firmware | driver | bios | installer | utility | controller_software | software
  risk_note: required_for_binaries
  limitations: required
```

## Prepare rehosting review package

A rehosting review package may be prepared when one or more conditions are true:

```text
A. Official manufacturer source is gone, 404/410, removed or no longer directly discoverable.
B. Official source exists but is unstable, region/session/script dependent or repeatedly fails retrieval.
C. Product is EOL/legacy and documentation is diagnostically important.
D. Manual/documentation has documented preservation interest.
E. Source URL, retrieved_at, version/date, product/model scope and sha256 can be recorded for the reviewed file.
```

Required review-package metadata:

```yaml
review_package_required_fields:
  source_url: required
  retrieved_at: required
  sha256: required_if_file_downloaded_for_review
  file_name: required_if_file_downloaded_for_review
  publisher: required
  product_or_model_scope: required
  version_or_date: required_if_known
  file_type: required
  source_class: required
  license_or_terms_note: required
  takedown_contact: required_for_archive_or_public_rehost
  risk: LOW | MEDIUM | HIGH | IRREVERSIBLE
  rehosting_decision: PREPARE_ONLY
  review_required: true
```

## Hosting allowed for manuals/documentation

Manuals and documentation may be hosted/rehosted only after review when:

```text
1. The official source is missing, removed or unreachable; OR
2. The official source is clearly unstable/at-risk; OR
3. Preservation interest is documented for EOL/legacy documentation;
AND
4. source_url, retrieved_at, sha256, model/product scope, version/date if known and takedown contact are present;
AND
5. no login, paywall, credential, terms or robot bypass was used;
AND
6. no raw crawl dump is stored.
```

## Hosting prohibited by default for high-risk binaries

The following file types are not publicly rehosted by default:

```text
driver
firmware
BIOS
bootloader
installer
vendor_utility
controller_software
RGB_or_fan_control_software
firmware_update_tool
```

Default decision:

```yaml
binary_default:
  rehosting_decision: DO_NOT_REHOST
  allowed_action: REFERENCE_ONLY
  owner_admin_exception: REVIEW_PACKAGE_ONLY_UNLESS_EXPLICIT_POLICY_EXCEPTION
  public_auto_upload: false
```

## Owner/Admin exception boundary

Owner/Admin may create a review package for software/controller/binary artifacts only when source, version, model scope, risk note, checksum where available, license/terms note and rollback/removal plan are documented. This exception still does not authorize public hosting unless a separate explicit reviewed policy exception approves that exact artifact scope.

## Examples

```yaml
examples:
  Phanteks_NexLinq_online:
    decision: REFERENCE_ONLY_DO_NOT_REHOST
  Thermaltake_TT_RGB_PLUS_online:
    decision: REFERENCE_ONLY_DO_NOT_REHOST
  LIAN_LI_L_Connect3_online:
    decision: REFERENCE_ONLY_DO_NOT_REHOST
  LIAN_LI_firmware_update_tool:
    decision: REFERENCE_ONLY_OR_OWNER_ADMIN_REVIEW_PACKAGE_ONLY
  missing_EOF_manual_pdf:
    decision: PREPARE_REHOSTING_REVIEW_PACKAGE
  reviewed_missing_manual_with_hash_and_takedown_contact:
    decision: HOSTING_ALLOWED_AFTER_REVIEW
```

## Validation checklist

- Official source checked first.
- Dedupe search completed before creating second truth.
- No login/paywall/TOS bypass.
- No raw crawl dumps.
- No secrets, serials, emails, customer or account data.
- No binary or manual downloaded unless explicitly required for a review package.
- No hosting/rehosting claim without tool-confirmed upload output.

## Rollback

Remove this proposal file or mark it superseded if a stricter canonical policy replaces it.
