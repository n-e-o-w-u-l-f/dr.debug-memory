# # # # # # # # # # # #
# DR. DEBUG SCHEMA.md #
# # # # # # # # # # # #

Status: ACTIVE
Scope: Base schema rules for Dr. Debug memory entries

# # # # # # # # #
# Common Fields #
# # # # # # # # #

Every canonical knowledge entry should include frontmatter with:

- id
- title
- status
- confidence
- first_added
- last_verified
- sources
- related_entries
- review_required

# # # # # # # # # #
# Entry Families #
# # # # # # # # # #

Supported families:

- software
- error
- hardware
- source
- agent_directive
- index
- state

# # # # # # # # # #
# Source Rule #
# # # # # # # # # #

A canonical factual entry requires at least one registered source unless it is clearly marked as a template, state file, index file or repository governance file.
