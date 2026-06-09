# # # # # # # # # # # # # # # # #
# VERSIONING_HARD_RESET.md #
# # # # # # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /AGENTS/ACTIVE/VERSIONING_HARD_RESET.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: ACTIVE
Geltungsbereich: Dr. Debug Agentenfamilie, AGENTS.md, aktive Agenten-Direktiven, Versionierung, Reset-Regeln, finale Auswahlfragen

# # # # # # # # # # # # #
# Harte Reset-Regel #
# # # # # # # # # # # # #

Ab sofort gilt für die Dr.-Debug-Agentenfamilie ein harter Versionierungs-Neustart.

Alle neuen oder aktiv überarbeiteten Agenten-Direktiven starten bei:

```text
0.0.1
```

Diese Regel gilt insbesondere für:

```text
/AGENTS.md
/AGENTS/ACTIVE/DR_DEBUG.md
/AGENTS/ACTIVE/DR_DEBUG_MEMORY.md
/AGENTS/ACTIVE/DR_DEBUG_CONFIGURATION_AGENT.md
/AGENTS/ACTIVE/VERSIONING_HARD_RESET.md
/MEMORY/AGENT_DIRECTIVES/ACTIVE/*
```

# # # # # # # # # # # # #
# Versionsschema #
# # # # # # # # # # # # #

```text
MAJOR.MINOR.PATCH
```

Patch-Schritte:

```text
0.0.1
0.0.2
0.0.3
...
```

Minor-Schritte:

```text
0.1.0
0.2.0
...
```

Major-Schritte:

```text
1.0.0
2.0.0
...
```

# # # # # # # # # # # # #
# Erhöhungsregeln #
# # # # # # # # # # # # #

Patch erhöhen, wenn:

```text
- Formulierungen verbessert werden.
- Beispiele ergänzt werden.
- Fehler korrigiert werden.
- kleine Sicherheitsregeln ergänzt werden.
- Pfade oder Links korrigiert werden.
```

Minor erhöhen, wenn:

```text
- neue Agentenmodule eingeführt werden.
- neue Diagnose-Gates entstehen.
- neue Repository-Strukturen verbindlich werden.
- neue Lifecycle-Status eingeführt werden.
- neue Zusammenarbeit zwischen Agenten definiert wird.
```

Major erhöhen, wenn:

```text
- die Architektur inkompatibel verändert wird.
- alte Direktiven ersetzt werden.
- der Agentenauftrag grundsätzlich wechselt.
- Breaking Changes entstehen.
```

# # # # # # # # # # # # # # # # #
# Finale Auswahlfrage #
# # # # # # # # # # # # # # # # #

Nach jeder größeren Agenten-, Memory-, Struktur- oder Repository-Änderung muss der Agent am Ende eine finale Frage stellen, was als Nächstes getan werden soll.

Die Frage muss konkrete Auswahlmöglichkeiten enthalten.

Standardformat:

```markdown
# # # # # # # # # # # #
# Nächster Schritt #
# # # # # # # # # # # #

Bitte wähle:

1. Änderungen direkt ins Repository übernehmen.
2. Erst nur als Draft speichern.
3. Inhalt als Codeblock ausgeben, ohne GitHub zu ändern.
4. Bestehende Direktiven mergen und alte Versionen als SUPERSEDED markieren.
5. Abbrechen und nichts weiter ändern.
```

# # # # # # # # # # # # # # # # #
# Dr. Debug Verankerung #
# # # # # # # # # # # # # # # # #

Diese Direktive ist für Dr.Debug-GPT und Dr.Debug-MEMORY verbindlich.

Dr.Debug-GPT muss die Versionierung bei neuen Vorschlägen beachten.
Dr.Debug-MEMORY muss die Versionierung bei Repository-Änderungen anwenden.

Wenn eine alte Datei noch `1.0.0`, `1.0.1`, `2.0.0` oder andere frühere Versionslinien enthält, darf sie beim nächsten aktiven Bearbeiten auf `0.0.1` zurückgesetzt werden, sofern dies Teil des harten Neustarts ist.

Wichtig:

```text
Der harte Reset ist ein Versionierungsreset, kein inhaltliches Löschen.
Bestehende Inhalte werden nicht blind entfernt.
Alte Direktiven werden nur überschrieben, wenn die neue Direktive mindestens gleichwertig sicherer, klarer und wartbarer ist.
```
