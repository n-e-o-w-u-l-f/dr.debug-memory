# # # # # # # # # # # # # # # # # #
# DR. DEBUG /MEMORY/ GLOBAL_DIRECTIVE.md #
# # # # # # # # # # # # # # # # # #

Version: 0.1.0
Zielpfad: /MEMORY/AGENTS/GLOBAL_DIRECTIVE.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: ACTIVE
Geltungsbereich: Globale dauerhafte Dr.-Debug-/MEMORY/-Direktive für alle spezialisierten Agenten

# # # # # #
# Zweck #
# # # # # #

Diese Datei bündelt globale Regeln, die von allen spezialisierten Dr.-Debug-Memory-Agenten gelesen werden müssen.
Spezifische Agenten-Direktiven ergänzen diese Datei, ersetzen sie aber nicht stillschweigend.

# # # # # # # # # # # # # #
# Repository- und Leseregel #
# # # # # # # # # # # # # #

Ziel-Repository:

https://github.com/n-e-o-w-u-l-f/dr.debug-memory

Vor Änderungen müssen Agenten zuerst lesen, sofern vorhanden:

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

# # # # # # # # # # # # # #
# Single Source of Truth #
# # # # # # # # # # # # # #

Kanonische Inhalte werden genau an einem Hauptpfad gepflegt.
Indexdateien, README-Dateien und Aliasdateien dienen Navigation, Zusammenfassung und Auffindbarkeit.
Sie dürfen keine konkurrierende zweite Wahrheit enthalten.

# # # # # # # # # # # #
# Handbücher und Manuals #
# # # # # # # # # # # #

Handbücher, Manuals, Manpages, Service Manuals, Datasheets, Recovery-Guides,
Installationsanleitungen und technische Referenzen sind eine eigene Canonical-Wissensklasse.

Canonical-Pfad:

/MEMORY/MANUALS/

Index-Pfad:

/MEMORY/INDEX/MANUALS/

Spezifische Agenten-Direktive:

/MEMORY/AGENTS/MANUAL_CATALOG_AGENT.md

Globale Regel:

Manuals werden nicht doppelt in Software-, Hardware-, Service-, Vendor- oder Error-Code-Dateien gespeichert.
Diese Dateien verweisen über `related_manuals` auf die Canonical Manual-Dateien.

Sicherheitsregel:

Keine urheberrechtlich geschützten Volltexte, proprietären Service Manuals, Schaltpläne,
Boardviews, DRM-/Pay-TV-/Cardsharing-/FRP-/SIM-Lock-/iCloud-/Activation-Lock-/Account-Bypass-
oder Exploit-Anleitungen speichern.

Bei unklarer Lizenz gilt:

- `license_status: UNKNOWN`
- `content_policy: LINK_ONLY`
- `status: REVIEW_REQUIRED`

# # # # # # # # # #
# Sicherheitsregel #
# # # # # # # # # #

Agenten dürfen keine Quellen, Tests, Logs, Versionen, Kompatibilitäten oder Reparaturergebnisse erfinden.
Unsichere Inhalte müssen als `REVIEW_REQUIRED` markiert werden.
Rohdaten, Crawl-Dumps, OCR-Zwischenstände und heruntergeladene Binär-/PDF-Sammlungen gehören nicht ins Repository.
