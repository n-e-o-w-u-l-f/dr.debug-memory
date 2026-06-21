# Rollback: v0.8.1-master-pipeline foundation layer

Status: ACTIVE_ROLLBACK_PLAN
Date: 2026-06-21

## Rollback scope

Revert the files added or updated by the foundation-layer apply:

- MEMORY/VALIDATION/LINKCHECK_MASTER_PIPELINE_2026-06-21.md
- MEMORY/TOOLS/README_MATRIX_RENDERER_SPEC.md
- MEMORY/SCHEMA.md
- MEMORY/QUALITY_RULES.md
- MEMORY/SOURCES/SOURCE_REGISTRY.md
- MEMORY/PROPOSALS/TEMPLATE_*.md
- MEMORY/HARDWARE/RETRO_CONSOLE/**/README.md
- MEMORY/HARDWARE/RETRO_COMPUTER/README.md
- MEMORY/DIAGNOSE/README.md
- MEMORY/SOURCES/README.md
- MEMORY/PROPOSALS/README.md
- MEMORY/ALIASES/README.md
- MEMORY/INDEXES/README.md
- MEMORY/PROPOSALS/retro-gen*.md
- MEMORY/RELEASES/v0.8.1-master-pipeline/*.md
- README.md
- MEMORY/INDEX.md
- CHANGES.md

## Rule

Rollback must not delete unrelated user work. Inspect diffs before reverting.
