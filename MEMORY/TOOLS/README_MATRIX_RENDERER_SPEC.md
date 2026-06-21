# README Matrix Renderer Specification

Version: 0.1.0
Status: SPECIFICATION
Scope: Deterministic rendering of the README database status matrix.

## Purpose

The README matrix must remain readable, stable and machine-checkable. Manual spacing is fragile, especially with emoji display widths. The renderer must generate the complete block between:

```text
DRDEBUG_DATABASE_STATUS_START
DRDEBUG_DATABASE_STATUS_END
```

## Inputs

A future renderer should accept structured rows with:

```yaml
label: string
level: integer
count_total: integer
wanted: integer
present: integer
missing: integer
orphan: integer
canonical: integer
unverified: integer
user_evidence: integer
confirmed: integer
```

## Rendering rules

- Keep the tree in a single `<pre>` block.
- Use fixed logical column positions.
- Pad labels to the first numeric column using a display-width aware function.
- Keep all numeric columns right-aligned or fixed-width.
- Preserve the same column order as README.
- Never make the README matrix a canonical source of facts; it is a status mirror.

## Validation rules

- Start and end markers exist exactly once.
- Header and all rows contain the same number of metric columns.
- All metric values are integers >= 0.
- Parent totals must be equal to or greater than child totals where totals are aggregated.
- Unknown or unlinked rows must be counted as orphan candidates.

## Non-goals

- No external crawling.
- No automatic canonical promotion.
- No deletion of legacy data.
- No binary handling.
