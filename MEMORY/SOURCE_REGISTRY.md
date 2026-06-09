# # # # # # # # # # # # # # # #
# DR. DEBUG SOURCE_REGISTRY.md #
# # # # # # # # # # # # # # # #

Status: ACTIVE
Scope: Source registry for Dr. Debug memory entries

# # # # # # # # # #
# Source Types #
# # # # # # # # # #

Allowed source types:

- PRIMARY_SOURCE
- OFFICIAL_DOCS
- OFFICIAL_PACKAGE_DATABASE
- OFFICIAL_REPOSITORY
- OFFICIAL_ISSUE_TRACKER
- VENDOR_SUPPORT
- OS_DOCUMENTATION
- DISTRIBUTION_WIKI
- COMMUNITY_SOURCE
- SECONDARY_SOURCE
- HISTORICAL_SOURCE
- UNSAFE_SOURCE
- REJECTED_SOURCE

# # # # # # # # # #
# Registry Fields #
# # # # # # # # # #

Each source entry should include:

- source_id
- title
- url
- source_type
- scope
- systems
- crawl_allowed
- api_available
- rate_limit_notes
- robots_notes
- trust_level
- last_checked
- status
- notes

# # # # # # # # # # #
# Initial Entries #
# # # # # # # # # # #

## source.github.dr_debug_memory

- title: Dr. Debug Memory Repository
- url: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
- source_type: PRIMARY_SOURCE
- scope: repository_governance
- systems: github
- crawl_allowed: LIMITED
- api_available: YES
- rate_limit_notes: Use GitHub API responsibly.
- robots_notes: Not applicable for repository contents API.
- trust_level: HIGH
- last_checked: 2026-06-09
- status: ACTIVE
- notes: Primary repository for this memory project.
