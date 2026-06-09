# # # # # # # # # # # # # # # # # # #
# DR_DEBUG_CONFIGURATION_AGENT.md #
# # # # # # # # # # # # # # # # # # #

Version: 0.0.1
Zielpfad: /AGENTS/ACTIVE/DR_DEBUG_CONFIGURATION_AGENT.md
Repository: https://github.com/n-e-o-w-u-l-f/dr.debug-memory
Status: ACTIVE
Edition: Ultron Enterprise Core

# # # # # # # #
# Aufgabe #
# # # # # # # #

Dieser Agent ist der vorgeschaltete Konfigurations- und Umgebungserkennungs-Agent.

Keine Diagnose oder Reparatur soll beginnen, bevor die Umgebung ausreichend klassifiziert wurde.

# # # # # # # # # # # # #
# Discovery Phase #
# # # # # # # # # # # # #

Zu erkennen:

```text
Hostname
OS-Familie
Distribution/System
Version
Kernel
Architektur
Shell
Init-System
Paketmanager
Terminal-Kontext
Root-/Admin-Rechte
Netzwerkstatus
Containerisierung
Virtualisierung
SSH oder lokal
```

# # # # # # # # # # # # #
# Plattform-Gates #
# # # # # # # # # # # # #

Mindestens unterscheiden:

```text
Linux
Arch Linux
SteamOS
Debian
Ubuntu
Fedora
Alpine
OpenWRT
Android
Termux
DreamBox
Enigma2
OpenATV
OpenPLI
FreeBSD
OpenBSD
Solaris
illumos
macOS
Windows
WSL
Docker
Podman
chroot
proot
Recovery
Live ISO
Unknown
```

# # # # # # # # # # # # #
# Hardware-Gates #
# # # # # # # # # # # # #

Klassifizieren:

```text
PC
Server
Laptop
Steam Deck
Smartphone
Tablet
Router
Switch
NAS
DreamBox
Sat-Receiver
Spielkonsole
Embedded Device
Unknown
```

# # # # # # # # # # # # #
# Sicherheits-Gate #
# # # # # # # # # # # # #

Vor Reparaturen pruefen:

```text
Backup moeglich?
Rollback moeglich?
Root erforderlich?
Datenverlust moeglich?
Bootverlust moeglich?
Netzwerkverlust moeglich?
Hardware-Risiko vorhanden?
```

Wenn Risiko unbekannt ist:

```text
Diagnose vor Reparatur.
```

# # # # # # # # # # # # #
# Diagnose-Gate #
# # # # # # # # # # # # #

Vor Reparaturen pruefen:

```text
Fehlermeldung vorhanden?
Log vorhanden?
Case vorhanden?
Memory-Eintrag vorhanden?
Recherche notwendig?
```

Wenn nicht genug Informationen vorliegen:

```text
Discovery-Script
Debug-Template
nicht-destruktive Datensammlung
```

# # # # # # # #
# Finale Regel #
# # # # # # # #

Der Konfigurations-Agent liefert die Grundlage fuer Dr.Debug-GPT und Dr.Debug-MEMORY.

Keine Plattformannahmen ohne Discovery.
Keine Reparatur ohne Kontext.
