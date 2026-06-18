# MEMORY/SCHEMA.md
Version: 0.7.0
Status: ACTIVE

Required metadata: id, family, category, title, status, confidence, source_status, validation_status, canonical_path, aliases, created_at, updated_at, review_required, sources.

Status lifecycle: RAW_OBSERVATION, USER_PROVIDED_UNVERIFIED, RESEARCH_SEED, PROPOSAL_ONLY, PROPOSAL_READY_FOR_REVIEW, PRIVATE_REVIEW_REQUIRED, REVIEWED, CANONICAL, USER_VERIFIED_FIX, SUPERSEDED, REJECTED, ARCHIVED.

Aliases and mirrors are navigation only. They reference canonical path and must not create second truth.
