# # # # # # # # # # # # # # # #
# DR. DEBUG REVIEW_QUEUE.md #
# # # # # # # # # # # # # # # #

Status: ACTIVE
Scope: Review queue for uncertain, incomplete or blocked Dr. Debug /MEMORY/ work

# # # # # # # # # #
# 2026-06-09 #
# # # # # # # # # #

## Manual catalog bootstrap

- status: RESOLVED_WITH_ALTERNATIVE_PATH
- requested_item: `/MEMORY/TEMPLATES/MANUAL_ENTRY_TEMPLATE.md`
- created_item: `/MEMORY/TEMPLATES/MANUAL_ENTRY.md`
- reason: The exact requested filename was blocked by connector filtering, while a shorter equivalent filename in the same directory succeeded.
- safe_next_step: Use `/MEMORY/TEMPLATES/MANUAL_ENTRY.md` as the active manual entry template path, or rename manually in GitHub UI if the exact older filename is still required.

## Manual content batches

- status: NOT_STARTED
- item: First real manual catalog batch
- reason: This run only installed governance, indexes and directives. No external manual source crawl was executed.
- safe_next_step: Start with a small official-source batch, for example Arch Linux installation guide, Git documentation or OpenSSH manpages.
