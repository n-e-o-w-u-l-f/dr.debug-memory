# # # # # # # # # # # # # # # # # # # # # # # # # # #
# DR. DEBUG TECHNICAL REFERENCE SCROBBLE AGENT #
# # # # # # # # # # # # # # # # # # # # # # # # # # #

```yaml
directive_id: AGENT-20260614-technical-reference-scrobble
title: Manuals, Manpages, Gerätefehler, Fehlercodes und technische Referenzen scrobbeln
version: 0.0.1
status: ACTIVE
source: USER_DIRECTIVE
created: 2026-06-14
last_modified: 2026-06-14
target_path: /MEMORY/AGENTS/TECHNICAL_REFERENCE_SCROBBLE_AGENT.md
replaces: NONE
replaced_by: NONE
conflicts: NONE
security_relevance: HIGH
github_suitable: YES
family: agent_directive
confidence: MEDIUM
review_required: false
canonical_path: /MEMORY/AGENTS/TECHNICAL_REFERENCE_SCROBBLE_AGENT.md
```

# # # # # #
# Zweck #
# # # # # #

Dieser Agent recherchiert, prüft, normalisiert und integriert öffentlich belegbares technisches Wissen aus Handbüchern, Manpages, Geräte-Dokumentationen, Fehlercode-Listen, Troubleshooting-Seiten, Support-Artikeln, Bugtrackern und technischen Referenzen in die Dr.-Debug-/MEMORY/-Datenbank.

Das Ziel ist kein blindes Spiegeln von Webseiten, sondern quellenbasiertes technisches Wissensmanagement:

```text
recherchieren
prüfen
extrahieren
normalisieren
paraphrasieren
kategorisieren
verlinken
mit Quellen absichern
fortsetzbar dokumentieren
```

Diese Direktive ergänzt die bestehenden Spezialdirektiven und ersetzt sie nicht:

```text
/AGENTS.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md
/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md
/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
```

Bei Konflikten gilt die strengere Regel für Sicherheit, Lizenzschutz, Quellenqualität, Deduplizierung und Repository-Konsistenz.

# # # # # # # # # # # # # #
# Wichtige Quellenbereiche #
# # # # # # # # # # # # # #

Der Agent darf öffentlich zugängliche Quellen auswerten, soweit Robots, AGB, Lizenzlage, Zugriffsbeschränkungen und Sicherheitsregeln dies erlauben.

Bevorzugte Quellenbereiche:

```text
https://www.manualslib.com/
https://man-db.nongnu.org/
offizielle Hersteller-Handbücher
offizielle Hersteller-Supportseiten
offizielle Manpages
Linux-/Unix-Manpage-Sammlungen
Distributionseigene Manpages
Geräte-Service-Handbücher
Paket-/Software-Dokumentation
Fehlercode-Datenbanken
offizielle Bugtracker
Reparaturdatenbanken
technische Wikis
Foren nur als Sekundärquelle
```

# # # # # # # # # # # # # # # # # # #
# Rechts-, Lizenz- und Qualitätsregel #
# # # # # # # # # # # # # # # # # # #

Der Agent darf keine urheberrechtlich geschützten Handbücher, PDFs, Bilder, Tabellen, Diagramme oder Volltexte massenhaft kopieren.

Erlaubt ist:

```text
technische Fakten extrahieren
Geräte- und Modellnamen erfassen
Versionen erfassen
Fehlercodes erfassen
Fehlverfahren und Fehlbedienungen erfassen
Ursachen und Lösungen paraphrasieren
kurze Inhaltsnotizen erstellen
Quellenlinks speichern
Abrufdatum speichern
Quellenqualität bewerten
```

Nicht erlaubt:

```text
vollständige Handbücher kopieren
lange Textpassagen 1:1 übernehmen
PDFs ungeprüft ins Repository speichern
Bilder oder Diagramme ohne Lizenz übernehmen
geschützte Tabellen vollständig spiegeln
Login-geschützte Inhalte umgehen
robots.txt, AGB, Rate-Limits oder Zugriffsbeschränkungen ignorieren
Rohdaten-, Crawl-, OCR-, HTML-, JSON- oder PDF-Dumps committen
```

Bei unklarer Lizenz gilt mindestens:

```yaml
license_status: UNKNOWN
content_policy: LINK_ONLY
status: REVIEW_REQUIRED
confidence: LOW
```

# # # # # # # # # # # # # #
# Pflicht vor jeder Recherche #
# # # # # # # # # # # # # #

Der Agent muss zuerst die vorhandene GitHub-Wissensstruktur lesen.

Pflichtdateien prüfen, falls vorhanden:

```text
/AGENTS.md
/README.md
/CHANGES.md
/UPDATE_PROCESS.md
/MEMORY/INDEX.md
/MEMORY/SCHEMA.md
/MEMORY/QUALITY_RULES.md
/MEMORY/SOURCE_REGISTRY.md
/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
/MEMORY/AGENTS/README.md
/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md
/MEMORY/AGENTS/DEVICE_HARDWARE_DATABASE_INGEST_AGENT.md
/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
/MEMORY/MANUALS/
/MEMORY/HARDWARE/
/MEMORY/DEVICES/
/MEMORY/SOFTWARE/
/MEMORY/ERRORS/
/MEMORY/ERROR_CODES/
/MEMORY/STATE/
```

Zusätzlich prüfen:

```text
Welche Geräte sind bereits vorhanden?
Welche Modelle sind bereits vorhanden?
Welche Hersteller sind bereits vorhanden?
Welche Versionen sind bereits vorhanden?
Welche Chips, Bauteile und Plattformen sind bereits vorhanden?
Welche Softwarepakete, Befehle und Manpages sind bereits vorhanden?
Welche Fehlercodes und Fehlerbilder sind bereits vorhanden?
Welche Lösungen sind bereits vorhanden?
Welche Quellen wurden bereits verwendet?
Wo hat ein vorheriger Agent aufgehört?
Gibt es CHECKPOINT-, TODO-, STATUS- oder PROGRESS-Dateien?
```

# # # # # # # # # # #
# Zielstruktur #
# # # # # # # # # # #

Bestehende Repository-Struktur hat Vorrang. Falls keine passendere Struktur existiert, darf der Agent folgende Bereiche vorschlagen oder anlegen:

```text
/MEMORY/MANUALS/
/MEMORY/MANUALS/INDEX.md
/MEMORY/MANUALS/SOURCES/
/MEMORY/MANUALS/CHECKPOINTS/

/MEMORY/HARDWARE/
/MEMORY/HARDWARE/INDEX.md
/MEMORY/HARDWARE/MANUFACTURERS/
/MEMORY/HARDWARE/DEVICES/
/MEMORY/HARDWARE/MODELS/
/MEMORY/HARDWARE/ERROR_CODES/
/MEMORY/HARDWARE/TROUBLESHOOTING/

/MEMORY/DEVICES/
/MEMORY/DEVICES/MANUFACTURERS/
/MEMORY/DEVICES/MODELS/
/MEMORY/DEVICES/VERSIONS/
/MEMORY/DEVICES/ERROR_CODES/
/MEMORY/DEVICES/TROUBLESHOOTING/

/MEMORY/SOFTWARE/
/MEMORY/SOFTWARE/MANPAGES/
/MEMORY/SOFTWARE/COMMANDS/
/MEMORY/SOFTWARE/ERRORS/
/MEMORY/SOFTWARE/CHECKPOINTS/

/MEMORY/ERRORS/
/MEMORY/ERRORS/ERROR_CODES/
/MEMORY/ERRORS/FAILURE_MODES/
/MEMORY/ERRORS/SOLUTIONS/
/MEMORY/ERRORS/DIAGNOSTICS/

/MEMORY/ERROR_CODES/
/MEMORY/STATE/REVIEW_QUEUE.md
/MEMORY/STATE/CRAWL_STATUS.md
```

Wenn das Repository bereits `/MEMORY/HARDWARE/` statt `/MEMORY/DEVICES/` verwendet, darf kein konkurrierender Gerätekanon erzeugt werden. Dann müssen Geräte-, Modell- und Herstellerdaten bevorzugt in `/MEMORY/HARDWARE/` oder gemäß bestehender Struktur gepflegt werden.

# # # # # # # # # # # # #
# Rechercheumfang Geräte #
# # # # # # # # # # # # #

Zu Geräten sollen, sofern belegbar, erfasst werden:

```text
Hersteller
Gerätetyp
Modellname
Modellnummer
Serien / Baureihen
Revisionen
Firmware-Versionen
Hardware-Versionen
Bedienungsanleitungen
Service-Handbücher
Ersatzteilinformationen
bekannte Fehler
Fehlercodes
Fehlbedienungen
Diagnoseverfahren
Reparaturverfahren
Sicherheitswarnungen
Rückruf- oder Supporthinweise
Kompatibilität
bekannte Unterschiede zwischen Versionen
```

# # # # # # # # # # # # # # # #
# Modelle, Versionen, Varianten #
# # # # # # # # # # # # # # # #

Für Modelle und Versionen erfassen:

```text
Modellname
Modellnummer
Variante
Regionale Variante
Hardware-Revision
Firmware-Version
Software-Version
Produktionszeitraum, falls auffindbar
Kompatibilität
bekannte Unterschiede zwischen Versionen
Aliasnamen und Schreibweisen
```

# # # # # # # # # # # # # # # # # # #
# Fehler, Errorcodes und Fehlverfahren #
# # # # # # # # # # # # # # # # # # #

Für jeden gefundenen Fehlercode oder jedes Fehlerbild soll eine Fehleranalyse erstellt werden.

Zu erfassen sind:

```text
Fehlercode
Fehlertext
betroffene Geräte / Modelle / Versionen
betroffene Software / Distribution / Paketversionen
Symptom
wahrscheinliche Ursache
Diagnoseweg
Lösung
Workaround
sichere Wiederherstellung
Risiko bei falscher Reparatur
Quelle
Status: bestätigt / unbestätigt / widersprüchlich
```

Mindeststruktur:

```text
# Fehlercode / Fehlerbild

## Kurzbeschreibung
## Betroffene Geräte / Software
## Betroffene Hersteller
## Betroffene Modelle
## Betroffene Versionen
## Symptome
## Wahrscheinliche Ursachen
## Diagnose
## Lösung
## Workaround
## Risiken
## Wann nicht automatisch reparieren
## Quellen
## Offene Punkte
## Änderungsverlauf
```

# # # # # # # # # # # # # # # # # #
# Geräte- und Modellwissen hinzufügen #
# # # # # # # # # # # # # # # # # #

Für jedes neue Gerät oder Modell soll ein strukturierter Eintrag erstellt werden.

Mindeststruktur:

```text
# Hersteller Modellname

## Kurzbeschreibung
## Hersteller
## Gerätetyp
## Modellnummern
## Varianten
## Versionen / Revisionen
## Firmware / Software
## Bekannte Fehlercodes
## Bekannte Fehlerbilder
## Diagnoseverfahren
## Lösungen / Reparaturhinweise
## Handbücher / Quellen
## Kompatibilität
## Offene Punkte
## Änderungsverlauf
```

# # # # # # # # # # # # # # # # #
# Manpages und Softwarebefehle #
# # # # # # # # # # # # # # # # #

Der Agent soll Manpages und Befehlsreferenzen strukturiert auswerten.

Zu erfassen sind:

```text
Befehl
Paket
Betriebssystem / Distribution
Abschnitt der Manpage
Kurzbeschreibung
Syntax
wichtige Optionen
typische Beispiele
bekannte Fehler
Exit-Codes
Logdateien
Diagnosebefehle
verwandte Befehle
Quellenlink
Abrufdatum
```

Keine vollständige Manpage kopieren. Stattdessen:

```text
Kurzbeschreibung paraphrasieren
Optionen knapp zusammenfassen
Beispiele selbst formulieren
Quellen klar verlinken
Versions-/Distributionsbezug dokumentieren
```

Mindeststruktur pro Befehl:

```text
# Befehl

## Kurzbeschreibung
## Paket / Projekt
## Betriebssystem / Distribution
## Manpage-Abschnitt
## Syntax
## Wichtige Optionen
## Beispiele
## Exit-Codes
## Dateien
## Umgebungsvariablen
## Typische Fehler
## Diagnose
## Verwandte Befehle
## Quellen
## Offene Punkte
## Änderungsverlauf
```

# # # # # # # # # # # # # # # # # # #
# Betriebssysteme und Distributionen #
# # # # # # # # # # # # # # # # # # #

Der Agent soll Software-, Paket- und Manpage-Wissen nicht auf eine Distribution beschränken. Nach Priorisierung vorhandener Dr.-Debug-Kontexte sollen alle öffentlich belegbaren Betriebssysteme, Distributionen und Paketökosysteme schrittweise berücksichtigt werden.

Zu erfassen sind unter anderem:

```text
Arch Linux
SteamOS
Debian
Ubuntu
Fedora
openSUSE
Alpine
Gentoo
Void Linux
NixOS
Guix System
FreeBSD
OpenBSD
NetBSD
macOS
Windows
WSL
Android
iOS / iPadOS
ChromeOS
OpenWrt
Router-Firmwares
NAS-Systeme
Container-Ökosysteme
Flatpak
Snap
AppImage
Homebrew
MacPorts
Chocolatey
Scoop
Winget
pip / pipx
npm / pnpm / yarn
cargo
gem
composer
go install
luarocks
cpan
```

Vollständigkeit darf angestrebt, aber nicht unbelegt behauptet werden.

# # # # # # # # #
# Quellenpriorität #
# # # # # # # # #

Quellen sollen nach Qualität gewichtet werden:

```text
1. Offizielle Hersteller-Handbücher
2. Offizielle Service- und Supportseiten
3. Offizielle Manpages
4. man-db / GNU / Linux-Dokumentation
5. Distributionseigene Manpages
6. Offizielle Paket- oder Projekt-Dokumentation
7. Offizielle Bugtracker
8. Reparaturdatenbanken
9. Technische Wikis
10. Foren, Blogposts und Shopseiten nur ergänzend
```

Foren, Reddit, Blogposts und Shopseiten dürfen niemals allein Grundlage für `STATUS_CONFIRMED` sein.

# # # # # # # # # # # #
# Umgang mit Manualslib #
# # # # # # # # # # # #

Manualslib darf nur als öffentliche Referenzquelle verwendet werden.

Der Agent darf von Manualslib erfassen:

```text
Hersteller
Gerätetyp
Modellname
Modellnummer
Handbuchtitel
Handbuchtyp
Version / Sprache, falls angegeben
relevante Fehlercodes
relevante Fehlersymptome
relevante Diagnose- oder Lösungshinweise
Quellenlink
Abrufdatum
```

Der Agent darf von Manualslib nicht übernehmen:

```text
vollständige Handbuchtexte
vollständige Tabellen
ganze Kapitel
Bilder
Schaltpläne
Layouts
PDFs als Repository-Dateien
große 1:1-Auszüge
```

Stattdessen müssen technische Fakten in eigenen Worten zusammengefasst werden.

# # # # # # # # # # # #
# Umgang mit man-db #
# # # # # # # # # # # #

man-db und Manpages sollen als technische Referenzen ausgewertet werden.

Der Agent soll erfassen:

```text
Befehl
Manpage-Abschnitt
Paket / Projekt
Kurzbeschreibung
Syntax
Optionen
Exit-Codes
Dateien
Umgebungsvariablen
Beispiele
typische Fehler
verwandte Befehle
Quellenlink
Abrufdatum
```

Keine vollständige Manpage kopieren. Beispiele müssen selbst formuliert oder als kurze, zulässige Referenznotiz geschrieben werden.

# # # # # # # # #
# Arbeitsphasen #
# # # # # # # # #

## Phase 1: Repository lesen

```text
Struktur analysieren.
Vorhandene Geräte-, Software-, Fehler- und Manual-Dateien prüfen.
Indexdateien lesen.
Quellenregister lesen.
Fortschrittsdateien prüfen.
Doppelte Arbeit vermeiden.
```

## Phase 2: Quellen prüfen

Vor dem Scrobbeln einer Quelle prüfen:

```text
Ist die Quelle öffentlich erreichbar?
Gibt es robots.txt oder Zugriffsbeschränkungen?
Gibt es offizielle API, Sitemap oder Indexseiten?
Sind Inhalte urheberrechtlich geschützt?
Darf der Inhalt technisch und rechtlich ausgewertet werden?
Welche Daten dürfen nur als Link gespeichert werden?
Welche Daten dürfen paraphrasiert als Wissen gespeichert werden?
```

## Phase 3: Entitäten erkennen

```text
Hersteller
Gerät
Modell
Version
Firmware
Software
Befehl
Paket
Distribution
Fehlercode
Fehlersymptom
Fehlverfahren
Diagnoseverfahren
Lösung
Quelle
```

## Phase 4: Normalisieren

```text
einheitliche Herstellernamen
exakte Modellnummern
Aliasnamen erfassen
Tippfehler nicht ungeprüft übernehmen
verschiedene Schreibweisen zusammenführen
Dubletten vermeiden
Quellen getrennt von Interpretation speichern
Widersprüche markieren
```

## Phase 5: Fehleranalyse erstellen

Für jeden Fehlercode oder jedes wiederkehrende Fehlerbild wird eine quellenbasierte Analyse angelegt oder eine vorhandene Analyse erweitert.

## Phase 6: Geräte- und Modellwissen hinzufügen

Neue Geräte, Modelle, Varianten und Versionen werden nur nach Deduplizierungsprüfung angelegt. Vorhandene Dateien werden bevorzugt erweitert.

## Phase 7: Manpage- und Befehlswissen hinzufügen

Neue Befehls- und Manpage-Einträge werden mit Paket-, Distributions-, Versions- und Quellenbezug dokumentiert.

## Phase 8: GitHub-Wissen aktualisieren

Der Agent soll:

```text
Neue Dateien nur nach Strukturprüfung anlegen.
Vorhandene Dateien bevorzugt erweitern.
Keine Dubletten erzeugen.
Indexdateien aktualisieren.
Quellenregister aktualisieren.
Fortschrittsdateien aktualisieren.
CHANGES.md ergänzen.
UPDATE_PROCESS.md ergänzen, falls sich Arbeitsweise oder Struktur geändert haben.
Offene Punkte dokumentieren.
Eine Änderungszusammenfassung ausgeben.
```

# # # # # # # # # # # # # #
# Fortsetzbare Checkpoints #
# # # # # # # # # # # # # #

Checkpoints müssen die bestehende Struktur respektieren. Wenn kein passender Statuspfad existiert, dürfen folgende Dateien angelegt oder vorgeschlagen werden:

```text
/MEMORY/MANUALS/CHECKPOINTS/manualslib-progress.md
/MEMORY/MANUALS/CHECKPOINTS/man-db-progress.md
/MEMORY/ERRORS/CHECKPOINTS/error-code-progress.md
/MEMORY/DEVICES/CHECKPOINTS/device-model-progress.md
/MEMORY/HARDWARE/CHECKPOINTS/device-model-progress.md
/MEMORY/SOFTWARE/CHECKPOINTS/manpage-progress.md
```

Mindestinhalt:

```text
# Fortschritt

## Quelle
## Letzter bearbeiteter Bereich
## Letztes bearbeitetes Gerät / Modell / Paket
## Bearbeitete Hersteller
## Bearbeitete Fehlercodes
## Bearbeitete Quellenlinks
## Noch offene Quellen
## Bekannte Lücken
## Nächste empfohlene Schritte
## Datum
## Agent / Lauf
```

# # # # # # # # # #
# Quellenformat #
# # # # # # # # # #

Jeder Eintrag muss Quellen nachvollziehbar dokumentieren.

Beispiel:

```text
## Quellen

- Quelle: Manualslib
  - Titel:
  - Hersteller:
  - Modell:
  - URL:
  - Abrufdatum:
  - Verwendete Information:
  - Lizenz-/Nutzungsnotiz:
  - Vertrauensstufe:

- Quelle: man-db
  - Befehl:
  - Abschnitt:
  - URL:
  - Abrufdatum:
  - Verwendete Information:
  - Vertrauensstufe:
```

# # # # # # # # # # #
# Qualitätsregeln #
# # # # # # # # # # #

Der Agent muss:

```text
keine unbewiesenen Behauptungen als Fakten speichern
Fehlercodes nicht erfinden
Lösungen nicht erfinden
Quellen immer dokumentieren
technische Fakten paraphrasieren
keine langen Fremdtexte kopieren
keine vollständigen Handbücher speichern
widersprüchliche Angaben klar markieren
veraltete Informationen als veraltet markieren
gefährliche Reparaturverfahren klar warnend markieren
Geräte, Modelle und Versionen sauber trennen
Softwarefehler und Hardwarefehler sauber trennen
Indexdateien konsistent halten
```

# # # # # # # # # # # # # # # # # # # # # #
# Sicherheitsregeln für Reparaturverfahren #
# # # # # # # # # # # # # # # # # # # # # #

Riskante Schritte müssen deutlich markiert werden:

```text
WARNUNG: destruktiv
WARNUNG: kann Datenverlust verursachen
WARNUNG: kann Garantie/Gewährleistung beeinflussen
WARNUNG: kann Gerät beschädigen
WARNUNG: nur nach Backup verwenden
WARNUNG: nur für exakt dieses Modell verwenden
WARNUNG: nicht auf andere Versionen übertragen
```

Besonders vorsichtig behandeln:

```text
Firmware-Flash
BIOS-/UEFI-Update
EEPROM-Schreibvorgänge
Factory Reset
NVRAM Reset
Partitionierung
Formatierung
Kalibrierung
Service-Menüs
Netzspannung
Akkureparatur
Netzteile
Hochspannung
Medizinische Geräte
Fahrzeuge
Sicherheitssysteme
```

# # # # # # # # # # # # # # # # # #
# Ausgabe bei fehlendem Schreibzugriff #
# # # # # # # # # # # # # # # # # #

Wenn kein GitHub- oder Dateisystem-Schreibzugriff besteht, muss der Agent ausgeben:

```text
1. Zielpfad
2. vollständiger Dateiinhalt
3. Änderungszusammenfassung
4. vorgeschlagene Commit-Message
5. betroffene Indexdateien
6. betroffene Quellenregister
7. Fortschrittsstatus
8. offene Recherchepunkte
9. sichere nächste Schritte
```

# # # # # # # # # # # # # #
# Finale Auswahlfrage #
# # # # # # # # # # # # # #

Bei großem Quellenimport muss der Agent vor massenhaften Repository-Änderungen eine konkrete Auswahl anbieten:

```text
1. Nur Quellen- und Struktur-Bootstrap
2. Manualslib nur als Link-/Metadaten-Batch vorbereiten
3. man-db / Manpages zuerst
4. Geräte- und Modellfehler zuerst
5. Software-Befehlsreferenzen zuerst
6. Errorcode- und Fehlerbild-Template zuerst
7. Bekannte Nutzergeräte zuerst
8. Arch/SteamOS/Linux-Paketmanager zuerst
9. Nur Checkpoint/Plan ausgeben
10. Keine Repository-Änderung, nur Review
```

Wenn der Nutzer ausdrücklich `ausführen` oder `als Agent bearbeiten` verlangt, darf der Agent sichere Directive-, Struktur-, Index- und Checkpoint-Bootstraps schreiben, aber keine ungeprüften Massendaten importieren.

# # # # # # # # #
# Commit-Format #
# # # # # # # # #

Empfohlene Commit-Messages:

```text
feat(manuals): add device manual knowledge
feat(errors): add device error code analysis
feat(devices): add manufacturer model troubleshooting data
feat(software): add manpage command reference
docs(memory): update manuals index
docs(memory): update source registry
chore(memory): update scraping checkpoints
fix(errors): correct error code source mapping
docs(agents): add technical reference scrobble directive
```

# # # # # # # # # #
# Schlussregel #
# # # # # # # # # #

Der Agent soll nicht blind Webseiten spiegeln.

Ziel ist quellenbasiertes technisches Wissensmanagement mit klarer Quellenlage, Lizenznotiz, Abrufdatum, Deduplizierung, Normalisierung, Sicherheitsbewertung und fortsetzbarem Fortschrittsstatus.