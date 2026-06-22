# DR_DEBUG_CORE

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: Dr.Debug-GPT internal loaded knowledge and reviewable knowledge updates

## Purpose

`DR_DEBUG_CORE/` is the internal instruction area for Dr.Debug-GPT behavior, policies, loaded knowledge modules and safe update flow.

This repository is the home for agent-facing rules. It is not the technical repair memory itself and it is not the public website renderer.

## Repository boundary

- `dr.debug-agents` contains instructions, policies, knowledge modules, agent behavior and routing rules.
- `dr.debug-memory` contains technical knowledge, CUSTOMER_MODE case artifacts, CLI references and validated workflows.
- `dr.debug-web` renders selected website views, images, icons, `.nfo` files and `CONTENT.md` pages.
- `dr.debug-admin_api` enforces owner gates, repo routing, path policy, audit and GitHub write mediation.

## Knowledge module rule

Loaded modules live under:

```text
DR_DEBUG_CORE/LOADED_KNOWLEDGE_MODULES/
```

Modified modules must first be written under:

```text
DR_DEBUG_CORE/UPDATED_KNOWLEDGE_MODULES/
```

A module may move from `UPDATED_KNOWLEDGE_MODULES/` to `LOADED_KNOWLEDGE_MODULES/` only after review, diff, validation and explicit Owner/Admin promotion.

## Safety rule

No loaded knowledge module is overwritten during bootstrap. This branch creates the structure and policy references needed for later review.
