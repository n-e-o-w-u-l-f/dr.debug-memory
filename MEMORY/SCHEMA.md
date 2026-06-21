# MEMORY Schema

Version: 0.1.0
Status: ACTIVE_SCHEMA_DRAFT
Scope: Required schema for Dr.Debug-MEMORY records.

## Required frontmatter

Every factual record should begin with YAML frontmatter:

```yaml
id: "DDB-AREA-SYSTEM-0001"
family: "hardware|software|diagnose|source|proposal|alias|release"
category: "README matrix category path"
title: "Human-readable title"
status: "PROPOSAL_ONLY"
confidence: "LOW|MEDIUM|HIGH|CONFIRMED"
source_status: "USER_ASSERTED|USER_EVIDENCED|SOURCE_CONFIRMED|REVIEWED"
validation_status: "NOT_TESTED|USER_EVIDENCE_ONLY|SOURCE_CONFIRMED|REVIEWED"
canonical_path: "MEMORY/..."
aliases: []
created_at: "YYYY-MM-DD"
updated_at: "YYYY-MM-DD"
review_required: true
canonical: false
sources: []
```

## Required body sections

1. Summary
2. Scope
3. Symptoms or object description
4. Technical analysis
5. Safe diagnostic steps
6. Fixes, workarounds or handling rules
7. Validation
8. Rollback or risk
9. Sources
10. Related records

## Status rule

Customer-mode or unreviewed additions must remain proposal-only unless Owner/Admin review and evidence status support promotion.

## Canonical rule

Canonical factual content lives in one place. Index, alias and mirror files are navigation only.
