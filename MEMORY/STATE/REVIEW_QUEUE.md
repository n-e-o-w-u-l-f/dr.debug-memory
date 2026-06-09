# # # # # # # # # # # # # # # #
# DR. DEBUG REVIEW_QUEUE.md #
# # # # # # # # # # # # # # # #

Status: ACTIVE
Scope: Review queue for uncertain, unsafe, incomplete or blocked Dr. Debug /MEMORY/ work

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

## Manual catalog bootstrap

- status: REVIEW_REQUIRED
- item: `/MEMORY/TEMPLATES/MANUAL_ENTRY_TEMPLATE.md`
- reason: Template creation was blocked by connector safety filtering during the manual catalog bootstrap run.
- safe_next_step: Re-create the template in a small follow-up commit using the fields defined in `/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md`.

## Manual content batches

- status: NOT_STARTED
- item: First real manual catalog batch
- reason: This run only installed governance, indexes and directives. No external manual source crawl was executed.
- safe_next_step: Start with a small official-source batch, for example Arch Linux installation guide, Git documentation or OpenSSH manpages.
