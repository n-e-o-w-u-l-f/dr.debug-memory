# GAME_SYSTEM_VERSIONING_EVALS_v0.1_PROPOSAL

Status: PROPOSAL_ONLY  
Created: 2026-06-27  
Scope: Test cases for game system-version counting.

## Eval 1: one title, one platform

Input:

```text
{TITLE} released on {SYSTEM_A}
```

Expected:

```yaml
title_family_total: 1
system_version_total: 1
edition_variant_total: 0
```

## Eval 2: one title, three platforms

Input:

```text
{TITLE} released on {SYSTEM_A}, {SYSTEM_B}, {SYSTEM_C}
```

Expected:

```yaml
title_family_total: 1
system_version_total: 3
edition_variant_total: 0
```

## Eval 3: same title, same platform duplicate assertion

Input:

```text
{TITLE} on {SYSTEM_A}
{TITLE} on {SYSTEM_A}
```

Expected:

```yaml
title_family_total: 1
system_version_total: 1
note: duplicate assertion, not two platform releases
```

## Eval 4: same title, platform plus edition

Input:

```text
{TITLE} on {SYSTEM_A}
{TITLE} Special Edition on {SYSTEM_A}
```

Expected:

```yaml
title_family_total: 1
system_version_total: 1
edition_variant_total: 1
```

## Failure condition

Any report that shows only `title_family_total` while claiming to be a system-version count fails.
