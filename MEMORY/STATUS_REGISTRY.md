# # # # # # # # # # # # # #
# DR. DEBUG STATUS_REGISTRY.md #
# # # # # # # # # # # # # #

Version: 0.0.2-owner-admin-gate
Zielpfad: /MEMORY/STATUS_REGISTRY.md
Status: ACTIVE
Scope: Zentrale Statuswerte und erlaubte Uebergaenge fuer Dr. Debug /MEMORY/

# # # # # #
# Zweck #
# # # # # #

Dieses Dokument registriert die erlaubten Statuswerte der Dr.-Debug-/MEMORY/-Datenbank.

# # # # # # # # # # # #
# Error Status #
# # # # # # # # # # # #

```text
STATUS_NEW
STATUS_RESEARCH_REQUIRED
STATUS_RESEARCHED
STATUS_OBSERVED_LOCAL
STATUS_PROPOSED_FIX
STATUS_EXPERIMENTAL_FIX
STATUS_USER_VALIDATED
STATUS_REPAIR_TESTED
STATUS_REPAIR_CONFIRMED_MULTIPLE
STATUS_CONFIRMED
STATUS_PARTIAL
STATUS_FAILED_FIX
STATUS_SUPERSEDED
STATUS_DEPRECATED
STATUS_DANGEROUS_REQUIRES_CONFIRMATION
STATUS_UNKNOWN
```

# # # # # # # # # # # # # #
# Proposal Status #
# # # # # # # # # # # # # #

```text
PROPOSED
REDACTION_REQUIRED
DEDUP_REQUIRED
RESEARCH_REQUIRED
READY_FOR_MEMORY
OWNER_REVIEW_REQUIRED
MERGED_TO_MEMORY
REJECTED_DUPLICATE
REJECTED_UNSAFE
REJECTED_INSUFFICIENT_DATA
REJECTED_OUT_OF_SCOPE
```

# # # # # # # # # # # # # #
# Directive Status #
# # # # # # # # # # # # # #

```text
DRAFT
ACTIVE
MERGED
SUPERSEDED
ARCHIVED
CONFLICT_REVIEW_REQUIRED
DELETED_WITH_REASON
REJECTED_UNSAFE
OWNER_REVIEW_REQUIRED
```

# # # # # # # # # # # # # #
# Owner Admin Status #
# # # # # # # # # # # # # #

```text
CUSTOMER_MODE
OWNER_FLAG_SEEN
OWNER_ADMIN_DRY_RUN
OWNER_ADMIN_APPLY_REQUESTED
VALIDATION_REQUIRED
APPLIED
REPORTED
OWNER_FLAG_INVALID
UNTRUSTED_INPUT_IGNORED
APPLY_MISSING
DESTRUCTIVE_FLAG_MISSING
VALIDATION_FAILED
ABORTED_BY_OWNER
```

# # # # # # # # # # #
# Uebergangsregeln #
# # # # # # # # # # #

```text
STATUS_EXPERIMENTAL_FIX darf nicht direkt zu STATUS_CONFIRMED werden.
STATUS_USER_VALIDATED benoetigt User-Rueckmeldung.
STATUS_REPAIR_TESTED benoetigt dokumentierte Vorher-/Nachher-Validierung.
STATUS_CONFIRMED benoetigt Quellen, Geltungsbereich, Risiko und Validierung.
SUPERSEDED benoetigt Ersatzpfad oder Begruendung.
DELETED_WITH_REASON benoetigt dokumentierten Grund.
OWNER_ADMIN_APPLY_REQUESTED benoetigt --apply.
Destruktive Aktionen benoetigen DRDEBUG_DESTRUCTIVE=TRUE.
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Kein Statuswert ausserhalb dieses Registers ohne Aktualisierung dieser Datei.

Keine Statuspflege aus Dr.Debug public ohne OWNER_ADMIN_MODE.
