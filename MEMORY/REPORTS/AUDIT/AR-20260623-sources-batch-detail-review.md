# Audit Report: SOURCES BATCH detail review

Date: 2026-06-23
Repository: n-e-o-w-u-l-f/dr.debug-memory
Status: PROPOSAL_ONLY
Validation: STATIC_CHECK
Evidence level: E3/E4 mixed; source file inspection plus repository directives
Scope: 10 SOURCES canonical-ish BATCH files
Branch target: drdebug/review/batch-sources-records

## Summary finding

The 10 SOURCES BATCH files are useful source-review material, but they are not uniform canonical source records yet.

Current status:

- KEEP as review/source lineage.
- DO NOT DELETE.
- DO NOT PROMOTE as canonical source registry records yet.
- DO NOT REHOST binaries or raw source dumps.
- Normalize before promotion into `MEMORY/SOURCES/SOURCE_REGISTRY.md` or a later canonical source-record path.

## Files reviewed

1. `MEMORY/SOURCES/source_registry_additions_batch4.jsonl`
2. `MEMORY/SOURCES/source_registry_additions_batch5.jsonl`
3. `MEMORY/SOURCES/source_registry_additions_batch7.jsonl`
4. `MEMORY/SOURCES/source_registry_additions_batch8.jsonl`
5. `MEMORY/SOURCES/source_registry_additions_batch9.jsonl`
6. `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json`
7. `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json`
8. `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json`
9. `MEMORY/SOURCES/user_requested_websites_second_pass_batch5.jsonl`
10. `MEMORY/SOURCES/user_requested_websites_technical_evaluation_batch4.jsonl`

## Detail findings by file

| File | Initial status | Main issue | Recommendation |
|---|---|---|---|
| `MEMORY/SOURCES/source_registry_additions_batch4.jsonl` | useful source seeds | Uses compact objects with fields such as `source_id`, `type`, `authority`, `import_policy`, `topics`, `url`; missing several canonical template fields such as `publisher`, `retrieved_at`, `claim_supported`, `limitations`, `crawl_allowed`. | Convert selected records into canonical source-record template before promotion. |
| `MEMORY/SOURCES/source_registry_additions_batch5.jsonl` | useful source seeds | Richer records with `title`, `authority_level`, `use_for`, `review_notes`; still not canonical template and requires strict JSONL validation because physical line/layout may not be one-object-per-line. | Parser-validate, normalize field names, dedupe against batch4/7/8/9 and registry. |
| `MEMORY/SOURCES/source_registry_additions_batch7.jsonl` | useful source seeds | Uses `id`, `name`, `source_type`, `trust_level`, `retrieved_date`; close to review record but not the active source-registry template. | Normalize `name` to `title`, `source_type/trust_level` to `source_class`, `retrieved_date` to `retrieved_at`; add limitations/crawl notes. |
| `MEMORY/SOURCES/source_registry_additions_batch8.jsonl` | proposal-only source records | Has explicit `schema`, `status`, `record_id`, `authority_class`, `technical_scope`, `use_policy`; strongest lifecycle signal among JSONL batches. | Best candidate for normalized source-record import after dedupe and strict schema validation. |
| `MEMORY/SOURCES/source_registry_additions_batch9.jsonl` | researched source records | Has `record_type`, `status`, `authority_level`, `technical_use`, `limitations`; compact and likely high-value for IANA/AOSP records. | Candidate for normalized import after dedupe against batch7/8 and canonical registry. |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json` | support article batch | Wrapper JSON style; file must be validated locally before field-level promotion. | Run local JSON parser; preserve as proposal lineage until fields are verified. |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json` | support article batch | Wrapper JSON style; file must be validated locally before field-level promotion. | Run local JSON parser; preserve as proposal lineage until fields are verified. |
| `MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json` | structured support article records | Batch wrapper includes `schema_version`, `batch_id`, `status`, `retrieved_at`, `canonical_promotion`, `raw_crawl_dumps`, `dedupe_policy`, and per-record `publisher`, `official_url`, `source_class`, `claim_supported`, `limitations`. | Good review lineage; before promotion, map `official_url` to `url`, preserve batch-level `retrieved_at` or add per-record `retrieved_at`, and dedupe by publisher/article_id/title/url. |
| `MEMORY/SOURCES/user_requested_websites_second_pass_batch5.jsonl` | discovery-only source classification | Contains URL-level `source_class`, `technical_memory_use`, `caution`; many entries are weak, retailer, marketplace, blog, archive or community sources. | Keep as discovery/review lineage; do not promote directly. Only elevate individual URLs after task-specific source validation. |
| `MEMORY/SOURCES/user_requested_websites_technical_evaluation_batch4.jsonl` | discovery/evaluation records | Contains `classification`, `include_policy`, `memory_targets`, `source_strength`, `useful_content`; explicitly identifies weak/secondary/archive-review sources. | Keep as source evaluation lineage; use `source_strength` and `include_policy` when deciding later promotions. |

## Cross-file dedupe notes

Likely duplicate or overlapping records exist across source batches:

- IANA service names / ports appear across batch4, batch5, batch7, batch8 and batch9.
- IANA protocol numbers appear across batch5, batch7 and batch9.
- IANA DNS/TLS/DHCP/ICMP parameters appear across batch7/batch8/batch9 and related networking batches.
- AOSP build numbers appear across batch4, batch5, batch7, batch8 and batch9.
- TWRP, LineageOS, Samsung Open Source and LVFS/fwupd appear in multiple batches.
- User-requested website evaluation batches include many secondary/weak sources that should remain discovery-only unless a later task elevates a specific record.

## Source-record field coverage assessment

| Field | Coverage in reviewed batches | Assessment |
|---|---|---|
| `id` / `source_id` / `record_id` | present with inconsistent names | Normalize to canonical ID. |
| `url` | mostly present | Good base field; validate final URL and crawl/terms constraints before canonical promotion. |
| `title` / `name` | mostly present | Normalize `name` to `title`. |
| `source_class` | present inconsistently as `source_class`, `source_type`, `authority_level`, `authority_class`, `classification`, `source_strength` | Needs controlled vocabulary mapping. |
| `publisher` | missing in many registry batches; present in support article records | Add where known or infer only from source domain with review. |
| `retrieved_at` | inconsistent as `retrieved_date`, `last_seen`, batch-level `retrieved_at` | Normalize to `retrieved_at`; preserve `last_seen_updated` separately where useful. |
| `scope` / technical use | present as `topics`, `use_for`, `memory_use`, `technical_scope`, `technical_use`, `technical_memory_use` | Normalize to `scope`. |
| `claim_supported` | strong in support article batch; weak/missing in several registry batches | Required before canonical promotion. |
| `limitations` | present in some records; many use `caution` or `review_notes` instead | Normalize to limitations. |
| `crawl_allowed` | mostly missing | Add null/unknown or explicit value after review. |
| `license_or_terms_note` | mostly missing | Add before promotion when source terms matter. |
| `hash_if_file` | not applicable for most web source records | Keep empty/null unless a file was downloaded by owner. |

## Classification outcome

| Review class | Files | Count |
|---|---|---:|
| `NEEDS_SOURCE_RECORD_NORMALIZATION` | source_registry_additions_batch4/5/7/8/9 | 5 |
| `NEEDS_JSON_VALIDATION_AND_SUPPORT_ARTICLE_MAPPING` | support article batches 001/002/003 | 3 |
| `DISCOVERY_ONLY_RETAIN_AS_LINEAGE` | user-requested websites batch4/batch5 | 2 |
| `SAFE_DELETE_CANDIDATE` | none | 0 |
| `PROMOTION_READY` | none | 0 |

## Required local validation commands

    python3 - <<'PY'
    import json
    from pathlib import Path

    files = [
      'MEMORY/SOURCES/source_registry_additions_batch4.jsonl',
      'MEMORY/SOURCES/source_registry_additions_batch5.jsonl',
      'MEMORY/SOURCES/source_registry_additions_batch7.jsonl',
      'MEMORY/SOURCES/source_registry_additions_batch8.jsonl',
      'MEMORY/SOURCES/source_registry_additions_batch9.jsonl',
      'MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260620_BATCH_001.json',
      'MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_002.json',
      'MEMORY/SOURCES/SUPPORT_ARTICLES/SOURCE_RECORDS_20260621_BATCH_003.json',
      'MEMORY/SOURCES/user_requested_websites_second_pass_batch5.jsonl',
      'MEMORY/SOURCES/user_requested_websites_technical_evaluation_batch4.jsonl',
    ]

    for file in files:
        p = Path(file)
        text = p.read_text(encoding='utf-8')
        print(f'== {file} ==')
        if p.suffix == '.json':
            try:
                data = json.loads(text)
                print('json_valid: YES')
                if isinstance(data, dict):
                    print('top_keys:', ','.join(sorted(data.keys())[:20]))
            except Exception as exc:
                print('json_valid: NO', exc)
        else:
            ok = True
            count = 0
            for lineno, line in enumerate(text.splitlines(), 1):
                line = line.strip()
                if not line:
                    continue
                try:
                    json.loads(line)
                    count += 1
                except Exception as exc:
                    ok = False
                    print(f'jsonl_line_valid: NO line={lineno} error={exc}')
            print('jsonl_strict_valid:', 'YES' if ok else 'NO')
            print('strict_jsonl_records:', count)
    PY

## README / MEMORY index handling

No README database-status update is required for this report because the existing README BATCH matrix already records:

- 162 BATCH artifacts.
- BATCH indexed review required.
- No safe delete candidates.

No `MEMORY/INDEX.md` update is required because BATCH audit navigation already points to audit reports and the SOURCES category.

## Recommended next action

Create a later normalization proposal for source batches, not a direct canonical promotion:

1. Parser-validate the 10 files locally.
2. Dedupe by normalized URL + title/name + source_id/record_id + publisher + claim scope.
3. Create a normalized staging file or proposal report mapping old fields to canonical source-registry fields.
4. Promote only reviewed records with complete fields and no unresolved conflicts.
5. Keep weak/discovery website lists as review lineage unless individual URLs are elevated by a task-specific source review.

## Safe-delete candidates

None.

## Promotion candidates

None in this pass.

Potential future candidates after normalization and dedupe:

- Batch8 and batch9 IANA/AOSP records.
- Batch003 support article records with official vendor publisher, official URL, claim_supported and limitations fields.

## Rollback

This report is additive. Rollback is deletion of this audit report from the review branch before merge or revert of the commit after merge.
