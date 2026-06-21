# Batch 003 proposed source records split index

Status: PROPOSAL_INDEX_ONLY
Updated: 2026-06-21
Scope: navigation and transfer plan only; not canonical source registry truth.

## Purpose

This file closes the first source-record risk by defining a safe split plan for the 100 proposed source records generated from batch 003. The full generated JSONL exists in the local review package `batch003_risk_closure_package.zip` as `MEMORY/PROPOSALS/MANUFACTURERS/SOURCE_RECORDS_BATCH_003_PROPOSED.jsonl`.

Because large single-file writes can be fragile, the proposed source records should be written in resumable chunks before any source registry promotion.

## Split plan

| Part | Candidate range | Target file | Status |
|---|---:|---|---|
| 001 | 1-20 | `MEMORY/PROPOSALS/MANUFACTURERS/SOURCE_RECORDS_BATCH_003_PART_001.jsonl` | READY_FOR_TRANSFER |
| 002 | 21-40 | `MEMORY/PROPOSALS/MANUFACTURERS/SOURCE_RECORDS_BATCH_003_PART_002.jsonl` | QUEUED |
| 003 | 41-60 | `MEMORY/PROPOSALS/MANUFACTURERS/SOURCE_RECORDS_BATCH_003_PART_003.jsonl` | QUEUED |
| 004 | 61-80 | `MEMORY/PROPOSALS/MANUFACTURERS/SOURCE_RECORDS_BATCH_003_PART_004.jsonl` | QUEUED |
| 005 | 81-100 | `MEMORY/PROPOSALS/MANUFACTURERS/SOURCE_RECORDS_BATCH_003_PART_005.jsonl` | QUEUED |

## Required source-record defaults

- `source_class`: `A_PRIMARY_OFFICIAL_VENDOR`
- `retrieved_at`: `2026-06-19` for generated seed records; new review notes use `2026-06-21`
- `versions`: `not_applicable_seed_record`
- `hash_if_file`: `null`
- `crawl_allowed`: `not_checked_respect_robots_tos`
- `limitations`: seed URL only; no model-specific validation; no binary handling

## Transfer rule

Write one split part per safe apply batch, then validate JSONL parse count and duplicate IDs before proceeding to the next part.

## Safety confirmation

No binaries, firmware, drivers, installers, manuals, downloads, hashes, archive uploads, raw crawl dumps or rehosting actions are created by this source-record split plan.
