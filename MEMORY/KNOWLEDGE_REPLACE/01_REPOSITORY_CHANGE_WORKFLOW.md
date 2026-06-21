# 01_REPOSITORY_CHANGE_WORKFLOW.md
Version: 0.8.0-proposal
Scope: Repository workflow, update process, branch/merge/commit planning, structure migration, artifacts/scripts/patches
Replaces: 03_REPOSITORY_WORKFLOW.md, 04_BRANCH_MERGE_COMMIT.md, 05_STRUCTURE_REFERENCE_MIGRATION.md, 06_ARTIFACTS_SCRIPTS_PATCHES.md

## Repository reading protocol

For repository tasks, read in this order: `AGENTS.md`, `UPDATE_PROCESS.md`, `MEMORY/INDEX.md`, then task-relevant specialized files only. Do not read everything blindly. Use task scope, repository index, source registry, schema, category paths and recent relevant changes.

## Canonical-data rule

Search duplicates before adding records. Keep canonical data in one place. Indexes, menus, mirrors and aliases are navigation only and must not become second truths.

If the same fact appears in multiple files, define one canonical path, keep evidence lineage stable, convert other locations to aliases/summaries/navigation, and update README/INDEX/menu links.

## Evidence-incomplete rule

If evidence is incomplete, ambiguous, user-only, conflicting or not independently sourced, create/update a proposal; do not create a canonical record and do not promote status.

## Before apply

Before any apply action: verify branch, inspect unrelated changes, avoid overwriting work, generate intended diff, document affected paths, run redaction check, source/evidence check and status lifecycle check, update README knowledge matrix if MEMORY/Knowledge changes, and document rollback.

## Branch naming

Use branch names `drdebug/<type>/<short-topic>`, where type is one of `proposal`, `schema`, `source`, `archive`, `script`, `migration`, `policy`, `fix`.

## Commit format

Use `<type>(<scope>): <summary>`. Never claim push unless tool output confirms it.

## Before commit

Show intended files, summary, validation, redaction check, source/evidence check, status lifecycle check, README knowledge matrix check if applicable and rollback.

## Before merge

Before merge: branch current, conflicts resolved, validation passes, references updated, changelog updated and rollback documented. Stop on conflicts.

## Migration rule

If a file or folder is moved, renamed, split, merged, deprecated or replaced, update Markdown links, indexes, menus, aliases, schema references, source-registry scope fields, AGENTS/Knowledge references, README links, CHANGELOG/CHANGES links, UPDATE_PROCESS links, scripts, templates, manifests, validation paths and archive metadata.

Migration plan fields: migration_id, reason, old_path, new_path, canonical_id, affected_files, old_references, new_references, alias_or_tombstone, validation and rollback.

After migration: grep old path, check Markdown links, check index/menu resolution, check aliases, check canonical ID and check orphan items. Path is not identity; canonical ID and evidence lineage remain stable.

## Artifact rules

Every multi-file artifact should contain README.md, MANIFEST.json, SHA256SUMS.txt, VALIDATION.md, optional CHANGELOG.md and a clear dry-run/apply boundary. Patch bundles should contain plan.md, changes.diff, apply.sh, rollback.sh, validation.sh and affected_files.txt.

Reusable shell scripts need metadata: name, version, status, purpose, platform, shell, risk, root required, network required, destructive, backup, rollback, validation and source/context.

## Script safety

Prefer read-only diagnostics. Do not use blind sudo. Quote variables. Validate inputs. Avoid unbounded globs and recursive chmod/chown/rm on system paths. Never embed secrets. High-risk scripts start proposal-only.
