# Batch 003 alias and conflict notes

Status: REVIEW_REQUIRED

## Exact duplicate findings

- Batch 003 internal normalized-name duplicates: none.
- Batch 003 internal official_home domain duplicates: none.
- Exact normalized-name matches against known canonical/batch001/batch002 sets: none.

## Conflict-prone candidates

- **Hewlett Packard Enterprise**: legacy-name split: HPE is separate from HP Inc., but overlaps the historic Hewlett-Packard name; keep HPE separate from existing HP canonical and note the legacy alias.
- **Dynabook**: legacy-name split: Dynabook/Toshiba PC support is separate from other Toshiba product lines; keep Toshiba PC as alias only.
- **Kioxia**: rename/acquisition: Kioxia is former Toshiba Memory; keep Toshiba Memory as alias, do not merge with Dynabook/Toshiba PC.
- **Micron Technology**: brand relationship: Micron overlaps Crucial-by-Micron from batch 001; keep Micron as canonical enterprise/semiconductor entity, Crucial as alias/sub-brand or separate only if review decides.
- **ADATA**: sub-brand review: XPG should be alias unless promoted separately by product-scope evidence.
- **Linksys**: ownership/history review: keep as independent network-device canonical candidate unless existing Belkin/Foxconn canonical appears.
- **Fortinet**: product-line alias: FortiGate should be alias/product line, not separate canonical manufacturer.
- **Kyocera Document Solutions**: corporate/product-line split: distinguish from broader Kyocera corporate/device entities.
- **Google**: sub-brand review: Pixel and Nest should stay aliases/product families unless separate canonical scope is explicitly needed.
- **Xiaomi**: sub-brand review: Mi, Redmi and POCO should stay aliases/product families.
- **Nothing**: brand/company match appears straightforward, but audio alias scope should remain product-family only.
- **PINE64**: store/project naming review: Pine Store should be alias only.
- **Hardkernel**: product-line alias: ODROID should be alias/product line.
- **Native Instruments**: short alias NI can conflict with National Instruments; avoid short alias in canonical matching unless context says audio hardware/software.

## Canonical alias rule

Aliases, product-line names, former company names, regional names and acquisition labels must point to a single canonical record and must not create second truths.
