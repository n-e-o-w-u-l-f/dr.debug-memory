# UPDATE_PROCESS.md
Version: 0.7.0-repository-clean
Status: ACTIVE

Update workflow: read AGENTS.md; inspect repository status and branch; load relevant active directives; use MEMORY/INDEX.md for navigation; use MEMORY/SCHEMA.md, QUALITY_RULES.md and SOURCE_REGISTRY.md for factual records; search duplicates; plan affected files; generate diff; validate; update changelog; commit/push only in authenticated write-enabled workflow.

Structure migration: if a path changes, update links, indexes, menus, aliases, schema references, source registry scope fields, scripts, templates, manifests and validation paths.

Stop on unclear authority, dirty unrelated working tree, missing rollback for risky change, unresolved source conflict, suspected secret, validation failure or missing evidence for canonical promotion.
