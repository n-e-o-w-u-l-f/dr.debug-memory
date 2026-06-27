# GAME_SYSTEM_VERSION_COUNTING_DIRECTIVE_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Forward-planning directive for counting games released on multiple systems.

## User rule captured

Games must be counted once per system/platform release instance when the same game was released on multiple systems. This is not duplicate counting of one game title; it is versioning by system.

User intent:

```text
If a game was released on several systems, each system release counts as +1 because it is a separate versioning instance.
```

## Counting rule

Use these levels:

1. `title_family` — the broad title identity, e.g. one conceptual game name.
2. `game_release_instance` — one concrete released game instance on one system/platform.
3. `edition_variant` — optional subversion such as region, special edition, remaster, revision or bundle when relevant.

Default counting unit:

```text
game_release_instance = title_family + system/platform
```

Therefore:

```text
one title on one system = 1
same title on three systems = 3
```

## Required record fields

Every game/version record should include:

```yaml
id:
title_family_id:
title:
system_platform:
platform_family:
release_instance_count: 1
versioning_basis: SYSTEM_PLATFORM_RELEASE
region:
edition:
release_year:
publisher:
developer:
source_status:
validation_status:
sources:
notes:
```

## Dedupe rule

Do not collapse platform releases into one count merely because they share the same title.

Duplicates are only duplicates when all relevant identity fields match:

- title or normalized title
- system/platform
- region where region is tracked
- edition/version where edition is tracked
- release identifier/source where available

## Aggregation examples

Title-family view:

```text
{TITLE}: 1 conceptual title family
```

System-version view:

```text
{TITLE} on {SYSTEM_A}: +1
{TITLE} on {SYSTEM_B}: +1
{TITLE} on {SYSTEM_C}: +1
Total system-version count: 3
```

## Reporting rule

Reports must label which count is being shown:

- `title_family_total`
- `system_version_total`
- `edition_variant_total`

Never present `title_family_total` as if it were the system/version count.

## Future planning impact

Any future game database, ROM/archive inventory, compatibility matrix, installer/support list or collection report should preserve both:

1. title-family identity for dedupe/search;
2. system-version identity for counts, compatibility and versioning.

## Evidence rule

If a system release is asserted by the user but not sourced, store it as proposal/user-provided until confirmed. Promotion requires source/evidence and dedupe.

## Rollback

If this rule conflicts with a future canonical game schema, keep this file as user-intent evidence and create a migration/override proposal rather than silently changing historical counts.
