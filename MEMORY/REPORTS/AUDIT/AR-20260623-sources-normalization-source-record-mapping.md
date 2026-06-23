# Audit Report: SOURCES normalization and source-record mapping

Date: 2026-06-23
Repository: n-e-o-w-u-l-f/dr.debug-memory
Status: STAGING_ONLY_NOT_CANONICAL
Validation: LOCAL_PARSE_AND_FIELD_MAPPING
Scope: 10 SOURCES canonical-ish BATCH files

## Summary finding

A source-record mapping was generated from the 10 SOURCES BATCH files.

This pass does not write to `MEMORY/SOURCES/SOURCE_REGISTRY.md`, does not promote records, and does not delete files.

## Generated mapping

- `MEMORY/REPORTS/AUDIT/DATA/2026-06-23_sources_batch_source_record_mapping.jsonl`

## Parse result

- input files: 10
- mapped records: 191
- parse errors: 0

## Records by file

| File | Records |
|---|---:|
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json` | 11 |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json` | 15 |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json` | 15 |
| `MEMORY/SOURCES/source_registry_additions_batch4.jsonl` | 11 |
| `MEMORY/SOURCES/source_registry_additions_batch5.jsonl` | 33 |
| `MEMORY/SOURCES/source_registry_additions_batch7.jsonl` | 21 |
| `MEMORY/SOURCES/source_registry_additions_batch8.jsonl` | 8 |
| `MEMORY/SOURCES/source_registry_additions_batch9.jsonl` | 5 |
| `MEMORY/SOURCES/user_requested_websites_second_pass_batch5.jsonl` | 36 |
| `MEMORY/SOURCES/user_requested_websites_technical_evaluation_batch4.jsonl` | 36 |

## Registry readiness

| Status | Count |
|---|---:|
| `DISCOVERY_ONLY_RETAIN_AS_LINEAGE` | 72 |
| `NEEDS_CANONICAL_FIELD_COMPLETION` | 119 |

## Missing canonical field counts

| Field | Missing count |
|---|---:|
| `claim_supported` | 101 |
| `crawl_allowed` | 191 |
| `id` | 191 |
| `limitations` | 137 |
| `publisher` | 139 |
| `retrieved_at` | 170 |
| `scope` | 103 |
| `title` | 72 |

## Decision

- `SAFE_DELETE_CANDIDATE`: 0
- `PROMOTION_READY`: 0
- `SOURCE_REGISTRY_WRITE`: 0

All mapped records remain staging-only until dedupe, source-quality review and canonical-field completion are done.

## Recommended next action

Review the generated JSONL mapping, group records by dedupe key, then create a later PR for only complete, source-backed canonical source records.

## Rollback

This change is additive. Rollback is deletion of the report and generated mapping file from the review branch before merge or revert after merge.
