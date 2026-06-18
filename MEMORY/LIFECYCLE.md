# # # # # # # # # # # # #
# DR. DEBUG LIFECYCLE.md #
# # # # # # # # # # # # #

Version: 0.0.2-owner-admin-gate
Zielpfad: /MEMORY/LIFECYCLE.md
Status: ACTIVE
Scope: Error-, Case-, Fix-, Proposal-, Source-, Directive- und Owner-Admin-Lifecycle fuer Dr. Debug /MEMORY/

# # # # # #
# Zweck #
# # # # # #

Dieses Dokument zentralisiert die Lebenszyklen der Dr.-Debug-/MEMORY/-Datenbank.

Es verbindet:

```text
Dr.Debug-GPT Diagnose
Dr.Debug-MEMORY Repositorypflege
Owner-Admin-Gate
MEMORY_PROPOSAL Workflow
Error-Code Statussystem
Case-Akten
Playbooks
Quellen
Agenten-Direktiven
```

# # # # # # # # # # # #
# Owner Admin Lifecycle #
# # # # # # # # # # # #

```text
CUSTOMER_MODE
  -> OWNER_FLAG_SEEN
  -> OWNER_ADMIN_DRY_RUN
  -> OWNER_ADMIN_APPLY_REQUESTED
  -> VALIDATION_REQUIRED
  -> APPLIED
  -> REPORTED
```

Abbruch- und Problemzustaende:

```text
OWNER_FLAG_INVALID
UNTRUSTED_INPUT_IGNORED
APPLY_MISSING
DESTRUCTIVE_FLAG_MISSING
VALIDATION_FAILED
ABORTED_BY_OWNER
```

# # # # # # # # # # # #
# Error Lifecycle #
# # # # # # # # # # # #

```text
STATUS_NEW
  -> STATUS_RESEARCH_REQUIRED
  -> STATUS_RESEARCHED
  -> STATUS_EXPERIMENTAL_FIX
  -> STATUS_USER_VALIDATED
  -> STATUS_REPAIR_TESTED
  -> STATUS_REPAIR_CONFIRMED_MULTIPLE
  -> STATUS_CONFIRMED
```

Rueckstufungen:

```text
STATUS_FAILED_FIX
STATUS_PARTIAL
STATUS_DEPRECATED
STATUS_SUPERSEDED
STATUS_DANGEROUS_REQUIRES_CONFIRMATION
STATUS_UNKNOWN
```

Statuswechsel aus Dr.Debug public benoetigen OWNER_ADMIN_MODE, wenn sie ins Repository geschrieben werden.

# # # # # # # # # # # # # #
# MEMORY_PROPOSAL Lifecycle #
# # # # # # # # # # # # # #

```text
PROPOSED
  -> REDACTION_REQUIRED
  -> DEDUP_REQUIRED
  -> RESEARCH_REQUIRED
  -> READY_FOR_MEMORY
  -> OWNER_REVIEW_REQUIRED
  -> MERGED_TO_MEMORY
```

Ablehnungszustaende:

```text
REJECTED_DUPLICATE
REJECTED_UNSAFE
REJECTED_INSUFFICIENT_DATA
REJECTED_OUT_OF_SCOPE
```

# # # # # # # # # #
# Fix Lifecycle #
# # # # # # # # # #

```text
HYPOTHESIS
  -> PROPOSED_FIX
  -> EXPERIMENTAL_FIX
  -> USER_VALIDATED_FIX
  -> REPAIR_TESTED_FIX
  -> CONFIRMED_FIX
```

A `USER_VALIDATED_FIX` may be captured from user evidence, but fixed database intake remains owner-controlled when the write is initiated through Dr.Debug public.

# # # # # # # # # # # # # # #
# Directive Lifecycle #
# # # # # # # # # # # # # # #

```text
DRAFT
  -> ACTIVE
  -> MERGED
  -> SUPERSEDED
  -> ARCHIVED
```

Sonderzustaende:

```text
CONFLICT_REVIEW_REQUIRED
DELETED_WITH_REASON
REJECTED_UNSAFE
OWNER_REVIEW_REQUIRED
```

# # # # # # # # # # # # #
# Supersede Lifecycle #
# # # # # # # # # # # # #

Beim Ersetzen eines Eintrags muss dokumentiert werden:

```text
Alter Pfad
Neuer Pfad
Grund
Datum
Agent
Risiko
Rollback oder Legacy-Hinweis
Owner-Admin-Freigabe, falls aus Dr.Debug public geschrieben
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Kein Statuswechsel ohne Grund.

Kein bestaetigter Fix ohne Validierung.

Kein Supersede ohne Ersatzpfad oder Begruendung.

Kein Lifecycle-Endzustand ohne dokumentierten Abschluss.

Keine aus Dr.Debug public ausgeloeste Repository-Schreibaktion ohne OWNER_ADMIN_MODE.
