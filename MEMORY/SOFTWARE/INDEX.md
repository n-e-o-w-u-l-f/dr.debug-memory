# # # # # # # # # # # # # # #
# DR. DEBUG SOFTWARE INDEX #
# # # # # # # # # # # # # # #

```yaml
id: SOFTWARE-INDEX-ROOT
title: Dr. Debug Software Knowledge Index
family: index
status: STATUS_NEW
confidence: MEDIUM
first_added: 2026-06-14
last_verified: 2026-06-14
sources:
  - USER_DIRECTIVE_2026-06-14_SOFTWARE_PACKAGE_KNOWLEDGE
related_entries:
  - /MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md
  - /MEMORY/TEMPLATES/SOFTWARE_PACKAGE_ENTRY_TEMPLATE.md
  - /MEMORY/SOFTWARE/CHECKPOINTS/software-package-research-progress.md
review_required: false
canonical_path: /MEMORY/SOFTWARE/INDEX.md
version: 0.0.1
```

# # # # # #
# Zweck #
# # # # # #

Dieser Index ist der Einstiegspunkt für quellenbasiertes Software-, Paket-, Paketmanager-, Betriebssystem-, Distributions-, Befehls- und Fehleranalyse-Wissen in `/MEMORY/SOFTWARE/`.

Faktische Paketdaten dürfen erst ergänzt werden, wenn Quellen gelesen, klassifiziert und im jeweiligen Eintrag dokumentiert wurden.

# # # # # # # # # # # # #
# Aktive Direktive #
# # # # # # # # # # # # #

- `/MEMORY/AGENTS/SOFTWARE_PACKAGE_KNOWLEDGE_AGENT.md`

# # # # # # # # # # # # #
# Vorgesehene Bereiche #
# # # # # # # # # # # # #

```text
/MEMORY/SOFTWARE/PACKAGES/
/MEMORY/SOFTWARE/PACKAGE_MANAGERS/
/MEMORY/SOFTWARE/OPERATING_SYSTEMS/
/MEMORY/SOFTWARE/DISTRIBUTIONS/
/MEMORY/SOFTWARE/COMMANDS/
/MEMORY/SOFTWARE/ERRORS/
/MEMORY/SOFTWARE/SOURCES/
/MEMORY/SOFTWARE/CHECKPOINTS/
```

# # # # # # # # # #
# Startreihenfolge #
# # # # # # # # # #

1. Repository-Governance lesen.
2. Software-Direktive lesen.
3. Checkpoint-Dateien prüfen.
4. Quellen für den gewählten Paket-/Distributionsbereich recherchieren.
5. Nur kleine, überprüfbare Batches hinzufügen.
6. Paketdaten, Befehle, Fehleranalysen und Quellen sauber trennen.
7. Index, Checkpoint und CHANGES.md aktualisieren.

# # # # # # # # # #
# Erste Zielbereiche #
# # # # # # # # # #

- Arch Linux offizielle Pakete
- AUR getrennt von offiziellen Arch-Repositories
- Pacman, makepkg, yay und paru
- Debian/Ubuntu apt, apt-get und dpkg
- Fedora/RHEL dnf, yum und rpm
- openSUSE zypper und rpm
- Alpine apk
- FreeBSD pkg
- Windows winget, Chocolatey und Scoop
- macOS Homebrew und MacPorts
- Flatpak, Snap und AppImage

# # # # # # # # # # # # # # #
# Qualitäts- und Sicherheitsregeln #
# # # # # # # # # # # # # # #

- Keine Behauptung ohne Quelle.
- Keine Quelle ohne Klassifizierung.
- Keine Paketdatenbank blind massenkopieren.
- Keine ungeprüften destruktiven Reparaturanweisungen speichern.
- Keine Arch-Linux-Befehle auf andere Distributionen übertragen, ohne dies quellenbasiert zu prüfen.
- Keine AUR-Pakete als offizielle Arch-Pakete ausgeben.
- Kein Status-Upgrade ohne Belege.
- Keine Roh-Crawl-Dumps, Cache-Dateien oder Binärdaten speichern.

# # # # # # # # # # #
# Nächste Schritte #
# # # # # # # # # # #

1. `/MEMORY/SOFTWARE/CHECKPOINTS/software-package-research-progress.md` fortschreiben.
2. Software-spezifische Quellenliste unter `/MEMORY/SOFTWARE/SOURCES/` anlegen.
3. Paketmanager-Basiseinträge für `pacman`, `makepkg`, `yay` und `paru` recherchieren.
4. Danach einen kleinen Pilotbatch mit wenigen Arch-Linux-Paketen erstellen.
