# # # # # # # # # # # # # # # # # # # # # # # # # #
# PHP ERROR DATABASE VERSIONING EXTENSION #
# # # # # # # # # # # # # # # # # # # # # # # # # #

directive_id: AGENT-20260614-php-error-versioning-extension
title: PHP Error Database Versioning Extension
version: 0.0.1
status: ACTIVE
source: USER_DIRECTIVE
created: 2026-06-14
last_modified: 2026-06-14
target_path: /MEMORY/AGENTS/PHP_ERROR_DATABASE_VERSIONING_EXTENSION.md
extends:
  - /MEMORY/AGENTS/PHP_ERROR_DATABASE_INGEST_AGENT.md
  - /MEMORY/AGENTS/VERSIONED_ERROR_KNOWLEDGE_AGENT.md
security_relevance: HIGH
github_suitable: YES

# # # # # #
# Auftrag #
# # # # # #

Diese Zusatzdirektive erweitert den PHP Error Database Ingest Agent um verpflichtende Versionisierung.

Jede PHP-Version muss eigene Fehlercodes, Fehlermuster, Severity-Aenderungen, Ursachen, Diagnosewege, Fix-Hinweise, Regressionen und Upgrade-/Rollback-Hinweise im GitHub-Wissen erhalten.

Die Regel gilt auch fuer andere weiterentwickelte technische Komponenten, wenn sie im PHP-Kontext vorkommen, zum Beispiel Composer, TYPO3, Extensions, FPM, Webserver, Distribution-Pakete, Container-Images und Firmware-nahe Laufzeitumgebungen.

# # # # # # # # # # # # # # # # # # # #
# Harte PHP-Versionisierungsregel #
# # # # # # # # # # # # # # # # # # # #

Ein Fehler darf nicht pauschal gespeichert werden, wenn sich Verhalten oder Behebung je PHP-Version unterscheiden kann.

Jeder Eintrag muss eine Versionen-Matrix haben. Mindestens zu fuehren:

- PHP 7.4
- PHP 8.0
- PHP 8.1
- PHP 8.2
- PHP 8.3
- PHP 8.4
- PHP 8.5 als `future_tracking` oder `needs_review`, solange keine final belastbare Quelle vorliegt

# # # # # # # # # # # # #
# Pflichtfelder #
# # # # # # # # # # # # #

Jeder PHP-Fehlerdatensatz muss enthalten:

```yaml
version_scope:
  affected_versions:
  introduced_in:
  fixed_in:
  first_known_bad:
  last_known_bad:
  first_known_good:
  not_affected_versions:
  unknown_versions:
  eol_versions:
  prerelease_versions:

php_version_matrix:
  php-7.4:
    status:
    severity:
    message_pattern:
    behavior:
    diagnostic_notes:
    safe_fixes:
    sources:
  php-8.0:
  php-8.1:
  php-8.2:
  php-8.3:
  php-8.4:
  php-8.5:

fix_matrix:
  php-7.4:
    recommended_fix:
    safe_diagnostics:
    migration_notes:
    rollback_notes:
    verification_notes:
    source_url:
  php-8.0:
  php-8.1:
  php-8.2:
  php-8.3:
  php-8.4:
  php-8.5:
```

Wenn eine Version noch nicht sicher bewertet werden kann:

```yaml
status: needs_review
confidence: LOW
review_reason: "Version noch nicht durch offizielle Quelle bestaetigt."
```

# # # # # # # # # # # # # # # #
# Was je Version getrennt werden muss #
# # # # # # # # # # # # # # # #

Getrennt speichern:

- Error-Level-Werte und Severity.
- Throwable-/Exception-Klassen und Einfuehrungsversionen.
- Aenderungen von Notice zu Warning.
- Aenderungen von Warning zu Exception oder Fatal Error.
- Deprecated- und Removed-Verhalten.
- Extension-Verfuegbarkeit und Extension-spezifische Fehlermuster.
- PHP-Ini-Defaults und Runtime-Verhalten.
- Composer-Plattformanforderungen.
- Framework-Kompatibilitaet, besonders TYPO3/PHP-Kombinationen.
- FPM-, CLI-, Apache-Modul- und Nginx-Verhalten.
- Distribution-Paketversionen gegenueber Upstream-PHP.

# # # # # # # # # # # # # # #
# Quellenregeln je Version #
# # # # # # # # # # # # # # #

Bevorzugte Quellen:

1. PHP Manual.
2. PHP Changelog und Upgrade Guide.
3. PHP RFC, wenn Verhalten geaendert wurde.
4. PHP Source Tags und Tests, wenn noetig.
5. Composer- oder Framework-Dokumentation nur fuer Composer-/Framework-Verhalten.
6. Distribution-Paketquellen fuer Distribution-spezifische Abweichungen.
7. Community-Quellen nur als `community_observation`.

Jede Quelle muss mit Versionsevidenz gespeichert werden:

```yaml
source_url:
source_title:
source_type:
retrieved_at:
license:
version_evidence:
confidence:
```

# # # # # # # # # # # # # # # # #
# Ablagestruktur Zielbild #
# # # # # # # # # # # # # # # # #

Zielstruktur fuer PHP:

```text
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-7.4.md
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-8.0.md
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-8.1.md
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-8.2.md
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-8.3.md
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-8.4.md
/MEMORY/PHP/ERRORS/VERSION_NOTES/php-8.5.md
/MEMORY/PHP/ERRORS/VERSION_MATRIX/ERROR_BEHAVIOR.yaml
/MEMORY/PHP/ERRORS/VERSION_MATRIX/FIX_MATRIX.yaml
/MEMORY/PHP/ERRORS/VERSION_MATRIX/REGRESSION_MAP.yaml
```

Wenn verschachtelte Pfade durch das Tooling nicht geschrieben werden koennen, muessen Fallback-Dateien direkt unter `/MEMORY/` mit `intended_path` erstellt und als Review-Punkt markiert werden.

# # # # # # # # # # # # # # #
# Importprioritaet #
# # # # # # # # # # # # # # #

1. Error-Level-Konstanten je PHP-Version.
2. Throwable-/Exception-Hierarchie je PHP-Version.
3. haeufige Fatal Errors je PHP-Version.
4. haeufige Warnings je PHP-Version.
5. Notices und Deprecated-Meldungen je PHP-Version.
6. Extension-Missing-Fehler je PHP- und Distribution-Version.
7. PHP-Ini-Konfigurationsfehler je PHP-Version.
8. Composer-/Autoload-Fehler je Composer-/PHP-/Paketversion.
9. FPM-/Webserver-Schnittstellenfehler je SAPI-/Paketversion.
10. TYPO3-spezifische PHP-Fehler getrennt je TYPO3- und PHP-Version.

# # # # # # # # # # # # #
# Ausgabeformat pro Lauf #
# # # # # # # # # # # # #

```md
## Zusammenfassung

- Neue PHP-Versionen-Matrizen:
- Neue Fix-Matrizen:
- Neue Regressionseintraege:
- Unsichere Versionen:
- Quellen:
- Lizenzhinweise:
- Betroffene Dateien:

## Versionsabdeckung

| Bereich | Versionen | Status | Luecken |
|---|---:|---|---|

## Review-Punkte

- ...

## Vorgeschlagene Commit-Message

feat(memory): add PHP versioned error knowledge batch
```

# # # # # # # #
# Nicht tun #
# # # # # # # #

- Keine PHP-Versionen vermischen.
- Keine Fix-Hinweise ohne Versionsbezug speichern.
- Keine Framework-Sonderfaelle als PHP-Core-Fakten speichern.
- Keine Distribution-Paketversionen mit Upstream-PHP-Versionen gleichsetzen.
- Keine unsicheren Versionen als gesichert markieren.
