# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# DR. DEBUG SOFTWARE PACKAGE KNOWLEDGE AGENT #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

```yaml
directive_id: AGENT-20260614-software-package-knowledge
title: Software-, Paket-, Betriebssystem- und Distributionswissen
version: 0.0.1
status: ACTIVE
source: USER_DIRECTIVE
created: 2026-06-14
last_modified: 2026-06-14
target_path: /MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
replaces: NONE
replaced_by: NONE
conflicts: NONE
security_relevance: HIGH
github_suitable: YES
family: agent_directive
confidence: MEDIUM
review_required: false
canonical_path: /MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
```

# # # # # #
# Zweck #
# # # # # #

Dieser Agent baut fortsetzbares, quellenbasiertes Wissen zu Softwarepaketen, Paketmanagern, Betriebssystemen, Distributionen, Paketquellen, Paketformaten, Befehlslisten und Fehleranalysen in der Dr.-Debug-/MEMORY/-Datenbank auf.

Der Schwerpunkt beginnt bei Arch Linux und wird danach auf weitere Distributionen, BSD-/Unix-Systeme, mobile Betriebssysteme, kommerzielle Betriebssysteme, Container-Plattformen und alternative Paketökosysteme erweitert.

Diese Direktive ergänzt die globalen Repository-Regeln. Sie ersetzt `/AGENTS.md`, `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`, `/MEMORY/SCHEMA.md`, `/MEMORY/QUALITY_RULES.md` und `/MEMORY/SOURCE_REGISTRY.md` nicht.

# # # # # # # # # # # # # #
# Vor jeder Änderung lesen #
# # # # # # # # # # # # # #

Vor jeder Software-/Paketwissen-Änderung muss der Agent zuerst prüfen, sofern vorhanden:

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
/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
/MEMORY/SOFTWARE/
/MEMORY/SOFTWARE/INDEX.md
/MEMORY/SOFTWARE/CHECKPOINTS/
/MEMORY/STATE/REVIEW_QUEUE.md
```

Zusätzlich muss geprüft werden:

- Welche Software-Pakete sind bereits dokumentiert?
- Welche Distributionen und Betriebssysteme sind bereits dokumentiert?
- Welche Paketmanager, Paketformate und Repositories sind bereits dokumentiert?
- Welche Fehleranalysen existieren bereits?
- Welche Quellen wurden bereits klassifiziert?
- Wo hat ein vorheriger Agent aufgehört?
- Gibt es offene TODO-, STATUS-, CHECKPOINT-, PROGRESS- oder REVIEW-Dateien?

# # # # # # # # # # # #
# Canonical-Pfade #
# # # # # # # # # # # #

Wenn keine passendere bestehende Struktur existiert, gilt diese Zielstruktur:

```text
/MEMORY/SOFTWARE/
/MEMORY/SOFTWARE/INDEX.md
/MEMORY/SOFTWARE/PACKAGES/
/MEMORY/SOFTWARE/PACKAGES/ARCHLINUX/
/MEMORY/SOFTWARE/PACKAGES/AUR/
/MEMORY/SOFTWARE/PACKAGES/DEBIAN/
/MEMORY/SOFTWARE/PACKAGES/UBUNTU/
/MEMORY/SOFTWARE/PACKAGES/FEDORA/
/MEMORY/SOFTWARE/PACKAGES/OPENSUSE/
/MEMORY/SOFTWARE/PACKAGES/ALPINE/
/MEMORY/SOFTWARE/PACKAGES/GENTOO/
/MEMORY/SOFTWARE/PACKAGES/NIXOS/
/MEMORY/SOFTWARE/PACKAGES/FREEBSD/
/MEMORY/SOFTWARE/PACKAGES/OPENBSD/
/MEMORY/SOFTWARE/PACKAGES/NETBSD/
/MEMORY/SOFTWARE/PACKAGE_MANAGERS/
/MEMORY/SOFTWARE/OPERATING_SYSTEMS/
/MEMORY/SOFTWARE/DISTRIBUTIONS/
/MEMORY/SOFTWARE/COMMANDS/
/MEMORY/SOFTWARE/ERRORS/
/MEMORY/SOFTWARE/SOURCES/
/MEMORY/SOFTWARE/CHECKPOINTS/
/MEMORY/TEMPLATES/SOFTWARE_PACKAGE_ENTRY_TEMPLATE.md
```

Bestehende Repository-Struktur hat Vorrang. Neue Dateien dürfen keine zweite Wahrheit neben vorhandenen kanonischen Dateien erzeugen.

# # # # # # # # # # #
# Rechercheumfang #
# # # # # # # # # # #

## Arch Linux zuerst

Für Arch Linux muss der Agent mindestens prüfen:

- offizielle Arch Linux Package Search,
- offizielle Arch-Repositories `core`, `extra`, `multilib`,
- Arch Linux Wiki,
- Arch Linux man pages,
- Arch Linux GitLab / Packaging-Repositories,
- Pacman-Dokumentation,
- systemd-Dokumentation, falls paketbezogen relevant,
- AUR getrennt und eindeutig als AUR markiert,
- Upstream-Projektseiten,
- GitHub/GitLab des jeweiligen Projekts,
- offizielle Dokumentation des jeweiligen Programms.

## Danach weitere Systeme

Nach Arch Linux sollen systematisch weitere öffentlich auffindbare Plattformen ergänzt werden, darunter Linux-Distributionen, BSD-/Unix-Systeme, Windows, macOS, iOS, iPadOS, Android, ChromeOS, WSL, Container-Ökosysteme, Flatpak, Snap, AppImage, Homebrew, MacPorts, Chocolatey, Scoop, Winget, SteamOS, Android ROMs, Embedded Linux, Router-Firmwares und NAS-Systeme.

Der Agent darf Vollständigkeit anstreben, aber niemals behaupten, globale Vollständigkeit erreicht zu haben, solange dies nicht überprüfbar belegt ist.

# # # # # # # # # # # # # #
# Paketmanager erfassen #
# # # # # # # # # # # # # #

Zu dokumentierende Paketmanager und Ökosysteme umfassen mindestens:

```text
pacman, yay, paru, makepkg, apt, apt-get, dpkg, aptitude, dnf, yum, rpm,
zypper, apk, emerge, portage, xbps-install, nix, nix-env, nix profile,
guix, pkg, pkg_add, pkgin, brew, port, winget, choco, scoop, flatpak,
snap, appimage, pip, pipx, npm, pnpm, yarn, cargo, gem, composer,
go install, luarocks, cpan
```

Paketmanager dürfen nicht distributionsfremd angewendet werden. Arch-Befehle gehören nicht ungeprüft in Debian-, Fedora-, BSD-, Windows- oder macOS-Einträge.

# # # # # # # # # # # # # # #
# Mindestinhalt pro Paket #
# # # # # # # # # # # # # # #

Jeder Paket-Eintrag soll mindestens enthalten:

```text
# Paketname

## Metadaten
## Kurzbeschreibung
## Betriebssystem / Distribution
## Repository / Quelle
## Paketmanager
## Paketname
## Upstream-Projekt
## Lizenz
## Installation
## Deinstallation
## Update
## Konfiguration
## Start / Stop / Status
## Wichtige Befehle
## Typische Nutzung
## Dateien und Pfade
## Dienste / systemd Units
## Ports
## Abhängigkeiten
## Optionale Abhängigkeiten
## Kompatibilität
## Bekannte Fehler
## Fehleranalyse
## Reparaturbefehle
## Logs und Diagnose
## Sicherheitsnotizen
## Quellen
## Offene Punkte
## Änderungsverlauf
```

# # # # # # # # # # # # # #
# Befehlsliste pro Paket #
# # # # # # # # # # # # # #

Jeder Paket-Eintrag soll eine praktische Befehlsliste enthalten:

```text
## Befehlsliste

### Paket suchen
### Paketinformationen anzeigen
### Paket installieren
### Paket entfernen
### Paket inklusive ungenutzter Abhängigkeiten entfernen
### Paket aktualisieren
### Paketdateien anzeigen
### Besitzer einer Datei ermitteln
### Konfigurationsdateien finden
### Dienst starten
### Dienst stoppen
### Dienst neustarten
### Dienststatus prüfen
### Logs anzeigen
### Version prüfen
### Hilfe anzeigen
### Manpage anzeigen
### Typische Erstdiagnose
```

# # # # # # # # # # # # #
# Fehleranalyse pro Paket #
# # # # # # # # # # # # #

Jede Fehleranalyse muss enthalten:

```text
## Fehleranalyse

### Häufige Fehlerbilder
### Installationsfehler
### Update-Fehler
### Startfehler
### Konfigurationsfehler
### Berechtigungsfehler
### Netzwerkfehler
### Abhängigkeitsfehler
### Versionskonflikte
### Dateikonflikte
### systemd-Fehler
### Kernel-/Treiberbezug
### Log-Dateien
### Diagnosebefehle
### Reparaturbefehle
### Bekannte Upstream-Bugs
### Bekannte Distributions-Bugs
### Sichere Wiederherstellung
### Wann nicht automatisch reparieren
```

Fehler dürfen nicht erfunden werden. Symptom, Ursache, Diagnose, Reparatur und Quelle müssen getrennt dokumentiert werden. Erfahrungswerte müssen als Erfahrungswert markiert werden.

# # # # # # # # # # # # #
# Quellenpriorität #
# # # # # # # # # # # # #

Quellen sind gemäß `/MEMORY/SOURCE_REGISTRY.md` zu klassifizieren. Priorität:

1. Offizielle Paketdatenbank der Distribution
2. Offizielle Dokumentation des Betriebssystems
3. Offizielle Manpages
4. Offizielle Wiki-Seiten
5. Upstream-Projektseite
6. Upstream-GitHub/GitLab
7. Offizielle Bugtracker
8. Distributionseigene Bugtracker
9. Seriöse technische Wikis
10. Foren und Blogposts nur ergänzend
11. KI-generierte Inhalte nicht als Quelle verwenden

Jeder faktische Paket-/Fehlereintrag braucht Quellen, Abrufdatum, Versionsbezug und bekannte Grenzen.

# # # # # # # # # # # # # #
# Sicherheitsregeln #
# # # # # # # # # # # # # #

Der Agent darf keine gefährlichen Reparaturbefehle unkommentiert speichern.

Besonders riskante Reparaturen müssen klar markiert werden:

```text
WARNUNG: destruktiv
WARNUNG: entfernt Pakete
WARNUNG: kann System beschädigen
WARNUNG: nur nach Backup verwenden
WARNUNG: distributionsspezifisch
```

Keine automatische Empfehlung für destruktive Lösch-, Formatierungs-, Paketmanager-Force-, Rechte-Massenänderungs-, Partitionierungs- oder Dienst-Deaktivierungsbefehle ohne geprüften Kontext. Solche Befehle dürfen nur als bekannte Gefahr oder als streng kontrollierte Spezialfälle mit Erklärung dokumentiert werden.

# # # # # # # # #
# Arbeitsphasen #
# # # # # # # # #

1. Repository lesen und Deduplizierung prüfen.
2. Paketquellen, Paketmanager, Repositories und Paketformate sammeln.
3. Paketnamen, Distributionen, Repositories und Upstream-Projekte normalisieren.
4. Installations-, Deinstallations-, Update-, Diagnose-, Dienst-, Manpage- und Hilfebefehle dokumentieren.
5. Bekannte Fehlerbilder, Logs, Diagnosepfade, Reparaturwege, Upstream-Bugs und Distributions-Bugs quellenbasiert dokumentieren.
6. GitHub-Wissen hinzufügen, Indexdateien aktualisieren, Quellenregister oder software-spezifische Quellenlisten pflegen, Checkpoints schreiben und `CHANGES.md` ergänzen.

# # # # # # # # # # # # #
# Fortschrittsdateien #
# # # # # # # # # # # # #

Fortsetzbare Arbeit wird in `/MEMORY/SOFTWARE/CHECKPOINTS/` dokumentiert.

Jede Fortschrittsdatei soll enthalten:

```text
# Fortschritt

## Letzter bearbeiteter Bereich
## Letztes bearbeitetes Paket
## Bearbeitete Quellen
## Noch offene Quellen
## Bekannte Lücken
## Nächste empfohlene Schritte
## Datum
## Agent / Lauf
```

# # # # # # # # # #
# Dateinamen #
# # # # # # # # # #

Dateinamen sollen stabil, klein geschrieben und maschinenfreundlich sein, zum Beispiel `pacman.md`, `systemd.md`, `openssh.md`, `nginx.md`, `php.md`, `python.md`, `archlinux-core-packages.md`, `archlinux-extra-packages.md`, `aur-package-guidelines.md`, `debian-apt-packages.md`, `fedora-dnf-packages.md`, `windows-winget-packages.md`, `macos-homebrew-packages.md`.

# # # # # # # # # # # # # # # #
# Ausgabe bei fehlendem Schreibzugriff #
# # # # # # # # # # # # # # # #

Wenn kein Schreibzugriff auf GitHub oder Dateisystem besteht, muss der Agent Zielpfad, vollständigen Dateiinhalt, Änderungszusammenfassung, Commit-Message, betroffene Indexdateien, Quellenregister, Fortschrittsstatus, offene Recherchepunkte und sichere nächste Schritte ausgeben.

# # # # # # # # # # # # # # #
# Finale Auswahlfrage #
# # # # # # # # # # # # # # #

Bei großem Software-Import muss der Agent vor massenhaften Repository-Änderungen eine konkrete Auswahl anbieten:

```text
1. Nur Quellen- und Struktur-Bootstrap
2. Arch-Linux-Paketmanager zuerst
3. Arch-Linux-core-Paketbatch
4. Arch-Linux-extra-Paketbatch
5. AUR getrennt vorbereiten
6. Debian/Ubuntu apt/dpkg vorbereiten
7. Betriebssystem-/Distributionsindex vorbereiten
8. Fehleranalyse-Template und erste Pilotpakete
9. Nur Checkpoint/Plan ausgeben
10. Keine Repository-Änderung, nur Review
```

Wenn der Nutzer bereits ausdrücklich `ausführen` verlangt, darf der Agent sichere Bootstrap-Dateien schreiben, aber keine ungeprüften Massendaten importieren.

# # # # # # # # # # #
# Commit-Format #
# # # # # # # # # # #

Empfohlene Commit-Messages:

```text
feat(software): add Arch Linux package knowledge
feat(software): add package command reference
feat(software): add package error analysis
feat(software): add distribution package manager knowledge
docs(software): update software index
docs(software): update package source registry
chore(software): add software research checkpoint
fix(software): correct package command reference
```

# # # # # # # # # #
# Schlussregel #
# # # # # # # # # #

Keine Paketdatenbanken blind massenkopieren. Öffentliche technische Fakten werden recherchiert, normalisiert, quellenbasiert zusammengefasst und in eigenes strukturiertes Wissen übertragen.

Massenscraping ohne Quellenkontrolle, Dublettenprüfung, Kategorisierung, Fortschrittsdatei und Qualitätsprüfung ist nicht zulässig.
