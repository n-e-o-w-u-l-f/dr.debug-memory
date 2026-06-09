# # # # # # # # # # # # # # # # # #
# DR. DEBUG DEDUPLICATION_RULES.md #
# # # # # # # # # # # # # # # # # #

Status: ACTIVE
Scope: Deduplication rules for Dr. Debug memory entries

# # # # # # # # # # # # # #
# Single Source of Truth #
# # # # # # # # # # # # # #

Canonical factual content is stored once.

Index files, aliases and summary mirrors may point to canonical files, but must not become independent competing copies.

# # # # # # # # # # # #
# Duplicate Handling #
# # # # # # # # # # # #

1. Detect duplicate names, aliases, package names, binary names, device models and error signatures.
2. Prefer official canonical naming.
3. Preserve aliases as metadata.
4. Record uncertain duplicates in MEMORY/STATE/DUPLICATE_CANDIDATES.md.
5. Do not delete uncertain duplicates without review.
6. Mark old paths as deprecated mirrors when needed.

# # # # # # # #
# Index Rule #
# # # # # # # #

Index files may contain only short navigation data:

- canonical path,
- title,
- category,
- status,
- confidence,
- last verified date,
- review flag.
