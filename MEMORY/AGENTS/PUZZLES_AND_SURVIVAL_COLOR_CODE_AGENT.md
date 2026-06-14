# # # # # # # # # # # # # # # # # # # # # # # # # #
# PUZZLES & SURVIVAL COLOR CODE AGENT DIRECTIVE #
# # # # # # # # # # # # # # # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /MEMORY/AGENTS/PUZZLES_AND_SURVIVAL_COLOR_CODE_AGENT.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: ACTIVE
Geltungsbereich: DrDebug-GPT / Dr.-Debug-Memory-Agenten, die Puzzles-&-Survival-Farbcode-Syntax, Chat-Formatierung, Zeichenlimits, Validatoren, Beispiele und Fehlerfaelle recherchieren, pruefen und dauerhaft dokumentieren.

# # # # # # # # # # # # # # # # #
# Ziel #
# # # # # # # # # # # # # # # # #

Der Agent soll alle belastbaren Informationen zur Puzzles-&-Survival-Color-Code-Formatierung sammeln, normalisieren, testen und als wiederverwendbares GitHub-Wissen im Dr.-Debug-Memory-Repository ablegen.

Der Agent darf keine ungesicherten Formatregeln als Wahrheit ausgeben. Jede Regel muss als VERIFIED, OBSERVED, PARTIAL, CONFLICTING oder RESEARCH_REQUIRED markiert werden.

# # # # # # # # # # # # # # # # #
# Recherche- und Sammelauftrag #
# # # # # # # # # # # # # # # # #

1. Sammle alle vom Nutzer gelieferten Beispiele aus Chatverlaeufen, Screenshots, Fehlermeldungen und Testausgaben.
2. Suche nach oeffentlichen Quellen zur Puzzles-&-Survival-Farbsyntax, insbesondere zu Chat-, Nickname-, Allianz-, Profil-, Signatur- oder Beschreibungstexten.
3. Trenne strikt zwischen:
   - Ingame bestaetigter Syntax,
   - Nutzerbeobachtungen,
   - Community-Hinweisen,
   - automatisch generierten Hypothesen,
   - widerlegten oder ungueltigen Beispielen.
4. Dokumentiere Zeichenlimits je Kontext separat. Bekannte Nutzerbeobachtungen enthalten u. a. Limits um 150, 220, 230 und 252 Zeichen. Diese Werte gelten bis zur Verifikation nur als OBSERVED.
5. Dokumentiere alle Fehlertypen, z. B. ungueltige Zeichen, falsche Klammerung, zu lange Strings, zerstoerte Farbfotos/Farbfolgen, falsche Alpha-/Hex-Laenge, falsch verschachtelte Tags und nicht akzeptierte Sonderzeichen.

# # # # # # # # # # # # # # # # #
# Bekannte beobachtete Rohmuster #
# # # # # # # # # # # # # # # # #

Die folgenden Muster wurden aus Nutzerbeispielen beobachtet und sind NICHT automatisch verifiziert:

- `[#C9]` als moeglicher Wrapper/Praefix.
- `[ff40ffff]`, `[ff80ffff]`, `[c080ffff]`, `[80ffffff]` als moegliche RGBA-/Hex-Farbmarker.
- Verschachtelte Varianten wie `[ff40[#C9]ffff]` wurden beobachtet, muessen aber besonders auf Ungueltigkeit geprueft werden.
- Nutzerziel: Retrowave-/RGB-Farbverlaeufe mit Pink, Purple, Blue, Turquoise, He-Man-/Greyskull-/Puzzle-&-Survival-Stil.
- Nutzerziel: Zeichenlimit einhalten, oft maximal 220 oder 230 Zeichen, je nach Kontext.

# # # # # # # # # # # # # # # # #
# Validierungsregeln #
# # # # # # # # # # # # # # # # #

Der Agent muss fuer jede neue Formatregel mindestens folgende Angaben pflegen:

- Regelname
- Status: VERIFIED / OBSERVED / PARTIAL / CONFLICTING / RESEARCH_REQUIRED / INVALID
- Quelle
- Datum der Pruefung
- Kontext im Spiel
- Minimalbeispiel
- Maximalbeispiel
- Gegenbeispiel
- Zeichenzaehlung inklusive Tags
- Zeichenzaehlung ohne Tags, falls das Spiel intern anders zaehlt
- bekannte Fehlerausgabe oder Nutzerfeedback
- sichere Generator-Empfehlung

# # # # # # # # # # # # # # # # #
# Generator-Auftrag #
# # # # # # # # # # # # # # # # #

Der Agent soll aus den verifizierten Regeln wiederverwendbare Generatoren ableiten:

1. Einzeilige Gradient-Texte.
2. Mehrzeilige 5-Zeilen-ASCII-Art.
3. Wortweise Farbwechsel alle 3, 4, 5, 6, 7 oder 8 Buchstaben.
4. Buchstabenweise Farbwechsel.
5. Limitoptimierte Varianten fuer 150, 220, 230 und 252 Zeichen.
6. Sicherheitsmodus, der nur verifizierte Zeichen und Tags nutzt.
7. Debugmodus, der markiert, welche Zeichen das Limit verbrauchen.

Jeder Generator muss den finalen String, die Zeichenanzahl und eine kurze Risiko-/Gueltigkeitsbewertung ausgeben.

# # # # # # # # # # # # # # # # #
# Speicherorte im Repository #
# # # # # # # # # # # # # # # # #

Primärer Wissenspfad:

`/MEMORY/SOFTWARE/GAMES/PUZZLES_AND_SURVIVAL/COLOR_CODE_FORMATTING.md`

Empfohlene Zusatzpfade:

- `/MEMORY/SOFTWARE/GAMES/PUZZLES_AND_SURVIVAL/EXAMPLES/VALID.md`
- `/MEMORY/SOFTWARE/GAMES/PUZZLES_AND_SURVIVAL/EXAMPLES/INVALID.md`
- `/MEMORY/SOFTWARE/GAMES/PUZZLES_AND_SURVIVAL/TESTS/COLOR_CODE_LIMITS.md`
- `/MEMORY/SOFTWARE/GAMES/PUZZLES_AND_SURVIVAL/GENERATORS/README.md`

Bei jeder dauerhaften Erweiterung sollen Index-/Registry-Dateien nach Projektstandard mitgepflegt werden, sofern vorhanden.

# # # # # # # # # # # # # # # # #
# Sicherheits- und Qualitaetsregeln #
# # # # # # # # # # # # # # # # #

- Keine Halluzination von Syntaxregeln.
- Keine Behauptung, eine Farbe oder ein Tag funktioniere, ohne Quelle oder Test.
- Keine Nutzung privater Screenshots, Chatlogs oder Nutzerdaten als Quelle ohne ausdrueckliche Nutzerfreigabe.
- Keine 1:1-Kopie langer externer Community-Posts; nur kurze Zitate und eigene Zusammenfassung.
- Fehlerhafte Nutzerbeispiele nicht loeschen, sondern als INVALID/OBSERVED dokumentieren, weil sie fuer Debugging wertvoll sind.
- Bei unklarer Syntax zuerst Minimaltests vorschlagen: 1 Farbe, 1 Wort, 1 Sonderzeichen, dann steigern.

# # # # # # # # # # # # # # # # #
# Definition of Done #
# # # # # # # # # # # # # # # # #

Eine Recherche-/Speicherrunde ist fertig, wenn:

1. alle neuen Beispiele klassifiziert sind,
2. mindestens ein gueltiger Minimalstring und ein ungueltiger Gegenstring dokumentiert sind,
3. Zeichenlimits pro Kontext separat angegeben sind,
4. Generatorregeln nicht mehr behaupten als belegt ist,
5. offene Fragen als TODO mit Testvorschlag notiert sind,
6. CHANGES.md oder eine aequivalente Aenderungsdokumentation nach Projektstandard aktualisiert wurde.

# # # # # # # # # # # # # # # # #
# Vorgeschlagene Commit-Formate #
# # # # # # # # # # # # # # # # #

- `docs(agents): add Puzzles & Survival color code directive`
- `feat(memory): add Puzzles & Survival color code knowledge`
- `chore(memory): index Puzzles & Survival formatting research`
