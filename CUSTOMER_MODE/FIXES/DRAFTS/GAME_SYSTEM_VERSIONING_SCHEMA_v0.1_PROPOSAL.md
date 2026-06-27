# GAME_SYSTEM_VERSIONING_SCHEMA_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Schema for counting games per system/platform release instance.

## Counting principle

A game released on multiple systems must be counted once per system/platform release instance. This is versioning, not duplicate title counting.

## Entity model

```yaml
title_family:
  id:
  canonical_title:
  aliases:
  notes:

game_release_instance:
  id:
  title_family_id:
  title:
  system_platform:
  platform_family:
  release_instance_count: 1
  versioning_basis: SYSTEM_PLATFORM_RELEASE
  region:
  edition:
  revision:
  release_year:
  publisher:
  developer:
  source_status:
  validation_status:
  sources:
  notes:

edition_variant:
  id:
  game_release_instance_id:
  variant_type:
  variant_name:
  region:
  revision:
  source_status:
  validation_status:
```

## Required count outputs

```yaml
title_family_total:
system_version_total:
edition_variant_total:
```

## Dedupe key

Minimum dedupe key:

```text
normalized_title + system_platform + region + edition + revision
```

If region/edition/revision are unknown, store `unknown` instead of collapsing the record.

## Rule

Do not collapse two platform releases into one record merely because they share the same title family.
