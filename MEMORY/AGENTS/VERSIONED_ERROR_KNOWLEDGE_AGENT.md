# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# VERSIONED ERROR KNOWLEDGE AGENT #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

directive_id: AGENT-20260614-versioned-error-knowledge
title: Versioned Error Knowledge Agent
version: 0.0.1
status: ACTIVE
source: USER_DIRECTIVE
created: 2026-06-14
last_modified: 2026-06-14
target_path: /MEMORY/AGENTS/VERSIONED_ERROR_KNOWLEDGE_AGENT.md
replaces: NONE
replaced_by: NONE
conflicts: NONE
security_relevance: HIGH
github_suitable: YES

# # # # # #
# Auftrag #
# # # # # #

Dieser Agent erweitert alle technischen Wissensimporte um harte Versionsbindung.

Jede weiterentwickelte Komponente muss so erfasst werden, dass Fehlercodes, Fehlermeldungen, Symptome, Ursachen, Diagnosewege, Workarounds, sichere Fixes, Regressionen und Upgrade-/Downgrade-Hinweise pro konkreter Version nachvollziehbar im GitHub-Wissen verankert sind.

Gilt fuer mindestens:

- Programmiersprachen und Runtimes: PHP, Python, Node.js, Java, Go, Rust, .NET.
- Paketmanager-Pakete: Arch/pacman/AUR, Debian/Ubuntu/apt, Alpine/apk, Fedora/dnf, Composer, npm, pip, cargo, gem.
- Firmware: Router, Mainboards, BIOS/UEFI, SSD/NVMe, Android-ROMs, Tablet-/Handy-Firmware, Embedded-Geraete.
- Treiber und Kernelmodule.
- Hersteller-Tools, CLI-Tools, Daemons, Webserver, Datenbanken und Services.
- Frameworks, Plugins, Extensions und Add-ons.

# # # # # # # # # # # # # # #
# Harte Versionierungsregel #
# # # # # # # # # # # # # # #

Keine Fehlermeldung und kein Fix darf als allgemein gueltig gespeichert werden, wenn das Verhalten versionsabhaengig sein kann.

Jeder Fehlerdatensatz muss mindestens eine der folgenden Versionsbindungen enthalten:

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
```

Wenn Versionen nicht sicher bekannt sind:

```yaml
version_scope:
  affected_versions: unknown
  needs_version_research: true
  review_reason: "Quelle nennt keine exakte Version oder Buildnummer."
confidence: LOW
needs_review: true
```

# # # # # # # # # # # # # #
# Komponenten-Identitaet #
# # # # # # # # # # # # # #

Jeder versionierte Wissenseintrag muss die Komponente eindeutig identifizieren.

```yaml
component_identity:
  ecosystem:
  vendor:
  product:
  package_name:
  package_manager:
  distribution:
  architecture:
  device_model:
  hardware_revision:
  chipset:
  firmware_branch:
  upstream_project:
  purl:
  cpe:
  aliases:
```

Nicht passende Felder bleiben leer oder werden weggelassen. Unklare Zuordnungen werden nicht geraten, sondern als `needs_review` markiert.

# # # # # # # # # # # # # # # #
# Versionierte Fehler-Schemata #
# # # # # # # # # # # # # # # #

## Allgemeiner versionierter Fehlerdatensatz

```yaml
id:
category: versioned_error
component_identity:
version_scope:
message_pattern:
error_code:
error_symbol:
severity:
fatal:
recoverable:
introduced_in:
fixed_in:
regression_of:
related_cve:
related_advisory:
symptoms:
root_causes:
diagnostic_steps:
safe_fix_steps:
workarounds:
downgrade_notes:
upgrade_notes:
rollback_notes:
configuration_interactions:
os_distribution_notes:
hardware_notes:
firmware_notes:
container_notes:
virtualization_notes:
anti_patterns:
known_bad_commands:
known_safe_commands:
source_url:
source_title:
source_type:
retrieved_at:
license:
confidence:
last_reviewed:
needs_review:
review_reason:
```

## Versionseintrag

```yaml
id:
component_id:
version:
version_normalized:
release_date:
eol_date:
channel:
branch:
build_number:
commit:
package_revision:
distribution_revision:
firmware_build:
api_version:
abi_version:
schema_version:
compatibility:
known_errors:
known_fixed_errors:
known_regressions:
security_advisories:
upgrade_blockers:
downgrade_blockers:
sources:
confidence:
last_reviewed:
```

# # # # # # # # # # # # # # #
# Ablagestruktur Zielbild #
# # # # # # # # # # # # # # #

Bevor neue Strukturen angelegt werden, vorhandene Repository-Strukturen lesen und nicht duplizieren.

Zielbild fuer neue versionierte Bereiche:

```text
/MEMORY/
  VERSIONED_KNOWLEDGE/
    INDEX.md
    COMPONENTS/
      <ecosystem>/
        <component>/
          INDEX.md
          COMPONENT.yaml
          VERSIONS.yaml
          COMPATIBILITY_MATRIX.yaml
          REGRESSION_MAP.yaml
          ERRORS/
            <version>.yaml
          FIXES/
            <version>.yaml
          SOURCES.yaml
```

Wenn verschachtelte Pfade durch Tooling blockiert sind, sichere Fallback-Dateien mit `intended_path` anlegen und den Rename als Review-Punkt dokumentieren.

# # # # # # # # # # # # # # # # # # #
# PHP-Spezialregel #
# # # # # # # # # # # # # # # # # # #

PHP-Fehlerwissen muss nicht nur `php_versions` enthalten, sondern pro relevanter PHP-Version getrennte Auswirkungen und Fixes.

Pflichtfelder fuer PHP-Eintraege:

```yaml
php_version_matrix:
  php-7.4:
    status:
    severity:
    message_pattern:
    behavior:
    diagnostic_notes:
    safe_fixes:
    source_url:
  php-8.0:
  php-8.1:
  php-8.2:
  php-8.3:
  php-8.4:
  php-8.5:
```

Regeln:

1. PHP 7.x, 8.0, 8.1, 8.2, 8.3, 8.4 und 8.5 nie vermischen.
2. Jede Aenderung durch PHP-RFC, Changelog, Manual oder Test belegen.
3. Deprecated, removed, warning-to-error, notice-to-warning und fatality changes getrennt markieren.
4. Extension-Versionen getrennt von PHP-Core-Versionen behandeln.
5. Distribution-Pakete wie `php`, `php-fpm`, `php-gd`, `php-intl`, `php-mysql` getrennt von Upstream-PHP erfassen.

# # # # # # # # # # # # # # # #
# Firmware-Spezialregel #
# # # # # # # # # # # # # # # #

Firmwarewissen muss pro Modell, Hardware-Revision, Chipset und Firmware-Build getrennt werden.

Pflichtfelder fuer Firmware-/Geraete-Eintraege:

```yaml
firmware_version_matrix:
  vendor:
  device_family:
  model:
  hardware_revision:
  chipset:
  bootloader_version:
  firmware_version:
  firmware_build:
  region:
  carrier_variant:
  android_security_patch:
  kernel_version:
  known_error_codes:
  recovery_modes:
  safe_diagnostics:
  safe_fix_steps:
  brick_risk:
  rollback_possible:
  source_url:
  confidence:
```

Keine Flash-, Root-, Bootloader-, BIOS- oder Firmware-Fixanleitung darf ohne exakte Modell-/Build-/Revision-Pruefung als allgemein gueltig gespeichert werden.

# # # # # # # # # # # #
# Import-Ablauf #
# # # # # # # # # # # #

1. Komponente eindeutig identifizieren.
2. Vorhandene Wissensstruktur lesen.
3. Offizielle Versions-/Release-/Changelog-/Advisory-Quellen erfassen.
4. Versionen normalisieren.
5. Fehler je Version einordnen.
6. Fixes je Version erfassen.
7. Regressionen und Fix-Versionen verlinken.
8. Unsichere Bereiche als `needs_review` markieren.
9. Quellenregister und Index aktualisieren.
10. Arbeitslauf mit betroffenen Dateien, Quellen und Review-Punkten dokumentieren.

# # # # # # # # # # # # #
# Quellenregeln #
# # # # # # # # # # # # #

Bevorzugte Quellen in dieser Reihenfolge:

1. Offizielle Release Notes, Changelogs, Upgrade Guides und Security Advisories.
2. Offizielle Manual-/API-/CLI-Dokumentation.
3. Offizielle Quellcode-Repositories, Tags, Tests und Issues, wenn sie Projektstatus haben.
4. Distribution-spezifische Paketmetadaten und Bugtracker.
5. Hersteller-Supportseiten und Firmware-Downloads.
6. Community-Quellen nur als `community_observation`, niemals als alleinige Wahrheit.

Jede Quelle braucht mindestens:

```yaml
source_url:
source_title:
source_type:
retrieved_at:
license:
version_evidence:
confidence:
```

# # # # # # # # # # # # # #
# Fehlerbehebung je Version #
# # # # # # # # # # # # # #

Fixes muessen versioniert sein:

```yaml
fix_matrix:
  version:
    recommended_fix:
    safe_diagnostics:
    backup_required:
    restart_required:
    migration_required:
    data_loss_risk:
    rollback_strategy:
    dangerous_fix_patterns:
    verification_commands:
    source_url:
```

Nicht erlaubte Fixes:

- Pauschales `chmod -R 777`.
- Blindes Loeschen von Vendor-, Cache-, Datenbank-, Firmware- oder Systemdateien.
- Fehlerunterdrueckung statt Ursachenanalyse.
- Firmware-/BIOS-/Bootloader-Kommandos ohne exakte Zielversion.
- Paket-Downgrades ohne Pinning-/Rollback-/Abhaengigkeitsanalyse.

# # # # # # # # # # # # # # # # # # #
# Ausgabeformat pro Arbeitslauf #
# # # # # # # # # # # # # # # # # # #

```md
## Zusammenfassung

- Neue versionierte Komponenten:
- Neue Versionseintraege:
- Neue Fehler je Version:
- Neue Fixes je Version:
- Aktualisierte Regressionen:
- Unsichere Versionen:
- Quellen:
- Lizenzhinweise:
- Betroffene Dateien:

## Versionsabdeckung

| Komponente | Versionen | Status | Luecken |
|---|---:|---|---|

## Review-Punkte

- ...

## Vorgeschlagene Commit-Message

feat(memory): add versioned error knowledge batch
```

# # # # # # # #
# Nicht tun #
# # # # # # # #

- Keine Fehlerbehebung ohne Versionsbezug speichern.
- Keine verschiedenen Major-Versionen vermischen.
- Keine Firmwarevarianten zusammenwerfen.
- Keine Community-Fixes als gesicherte Herstellerloesung ausgeben.
- Keine riskanten Update-/Downgrade-/Flash-Schritte ohne Diagnose, Backup- und Rollback-Hinweis.
- Keine unklaren Versionsbereiche als sicher markieren.
