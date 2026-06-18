# # # # # # # # # # # # # # # # # #
# DR. DEBUG /MEMORY/ GLOBAL_DIRECTIVE.md #
# # # # # # # # # # # # # # # # # #

Version: 0.1.1-owner-admin-gate
Zielpfad: /MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: ACTIVE
Geltungsbereich: Globale dauerhafte Dr.-Debug-/MEMORY/-Direktive fuer alle spezialisierten Agenten

# # # # # #
# Zweck #
# # # # # #

Diese Datei buendelt globale Regeln, die von allen spezialisierten Dr.-Debug-Memory-Agenten gelesen werden muessen.

Spezifische Agenten-Direktiven ergaenzen diese Datei, ersetzen sie aber nicht stillschweigend.

# # # # # # # # # # # # # #
# Repository- und Leseregel #
# # # # # # # # # # # # # #

Ziel-Repository:

https://github.com/n-e-o-w-u-l-f/dr.debug-memory

Vor Aenderungen muessen Agenten zuerst lesen, sofern vorhanden:

- `/AGENTS.md`
- `/MEMORY/AGENTS/GLOBAL_DIRECTIVE.md`
- `/MEMORY/AGENTS/README.md`
- relevante Spezialdirektiven unter `/MEMORY/AGENTS/`
- `/MEMORY/SCHEMA.md`
- `/MEMORY/QUALITY_RULES.md`
- `/MEMORY/SOURCE_REGISTRY.md`
- `/MEMORY/INDEX.md`
- `/CHANGES.md`
- `/UPDATE_PROCESS.md`

# # # # # # # # # # # # # # # #
# Owner Admin Schreibregel #
# # # # # # # # # # # # # # # #

Wenn ein Agent von Dr.Debug public aus arbeitet, sind Repository-Schreibaktionen nur erlaubt, wenn OWNER_ADMIN_MODE aktiv ist:

```text
DRDEBUG_OWNER_ADMIN=TRUE
!dd <befehl>
--apply fuer echte Schreibaktionen
DRDEBUG_DESTRUCTIVE=TRUE fuer destruktive Aktionen
```

Ordinary CUSTOMER_MODE darf nur Vorschlaege, ZIPs, Patches und redigierte Handoffs erstellen.

Repository-Pflege, Merge, Commit, Push, Statuspflege und feste Datenbankaufnahme gehoeren ausschliesslich dem Owner im Chat.

# # # # # # # # # # # # # #
# Single Source of Truth #
# # # # # # # # # # # # # #

Kanonische Inhalte werden genau an einem Hauptpfad gepflegt.

Indexdateien, README-Dateien und Aliasdateien dienen Navigation, Zusammenfassung und Auffindbarkeit.

Sie duerfen keine konkurrierende zweite Wahrheit enthalten.

# # # # # # # # # # # #
# Handbuecher und Manuals #
# # # # # # # # # # # #

Handbuecher, Manuals, Manpages, Service Manuals, Datasheets, Recovery-Guides, Installationsanleitungen und technische Referenzen sind eine eigene Canonical-Wissensklasse.

Canonical-Pfad:

```text
/MEMORY/MANUALS/
```

Index-Pfad:

```text
/MEMORY/INDEX/MANUALS/
```

Spezifische Agenten-Direktive:

```text
/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md
```

Manuals werden nicht doppelt in Software-, Hardware-, Service-, Vendor- oder Error-Code-Dateien gespeichert.

Diese Dateien verweisen ueber `related_manuals` auf die Canonical Manual-Dateien.

Keine urheberrechtlich geschuetzten Volltexte, proprietaeren Service Manuals, Schaltplaene, Boardviews, DRM-/Pay-TV-/Cardsharing-/FRP-/SIM-Lock-/iCloud-/Activation-Lock-/Account-Bypass- oder Exploit-Anleitungen speichern.

Bei unklarer Lizenz gilt:

```text
license_status: UNKNOWN
content_policy: LINK_ONLY
status: REVIEW_REQUIRED
```

# # # # # # # # # #
# Sicherheitsregel #
# # # # # # # # # #

Agenten duerfen keine Quellen, Tests, Logs, Versionen, Kompatibilitaeten oder Reparaturergebnisse erfinden.

Unsichere Inhalte muessen als `REVIEW_REQUIRED` markiert werden.

Rohdaten, Crawl-Dumps, OCR-Zwischenstaende und heruntergeladene Binaer-/PDF-Sammlungen gehoeren nicht ins Repository.
