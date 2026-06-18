# SOURCES_RESEARCHED_BATCH6.md

Status: PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW
Date: 2026-06-18

## Purpose

Batch 6 continues the Dr.Debug-MEMORY research stream and adds a large, structured
networking/import-target expansion while keeping Public-mode safety intact.

## Sources checked and why they matter

### IANA Service Name and Transport Protocol Port Number Registry
- URL: https://www.iana.org/assignments/service-names-port-numbers/
- Current registry page observed through web research: Last Updated 2026-06-17.
- Use for Dr.Debug-MEMORY: canonical service-name/port-number normalization,
  firewall review, log triage, service discovery context.
- Important safety note from IANA: registered port traffic is not automatically
  "good" or necessarily the registered service.

### RFC 6335
- URL: https://datatracker.ietf.org/doc/rfc6335/
- Use: procedure and range semantics for service names and port numbers.
- Stored implication: System Ports 0-1023, User Ports 1024-49151,
  Dynamic/Private Ports 49152-65535.

### RFC 1918
- URL: https://datatracker.ietf.org/doc/html/rfc1918
- Use: private IPv4 diagnosis.
- Stored ranges: 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16.

### RFC 6598
- URL: https://datatracker.ietf.org/doc/html/rfc6598
- Use: CGNAT / Shared Address Space.
- Stored range: 100.64.0.0/10.

### RFC 9293
- URL: https://datatracker.ietf.org/doc/html/rfc9293
- Use: TCP diagnosis model and stateful network troubleshooting context.

### PCI ID Repository / pci.ids
- URLs:
  - https://pci-ids.ucw.cz/
  - https://raw.githubusercontent.com/pciutils/pciids/master/pci.ids
  - https://man7.org/linux/man-pages/man5/pci.ids.5.html
- Observed: raw pci.ids header shows version 2026.06.17.
- Use: PCI vendor/device/subsystem/class identification.
- Public batch action: import target only, not full mirror import.

### USB ID Repository / usb.ids
- URLs:
  - https://www.linux-usb.org/usb-ids.html
  - https://raw.githubusercontent.com/vcrhonek/hwdata/master/usb.ids
- Use: USB VID/PID identification across lsusb, dmesg, Windows IDs, ADB/Fastboot.
- Public batch action: import target only, not full mirror import.

### Microsoft PCI hardware ID formats
- URL: https://learn.microsoft.com/en-us/windows-hardware/drivers/install/identifiers-for-pci-devices
- Use: normalize Windows PCI\VEN_xxxx&DEV_xxxx&SUBSYS_...&REV_... strings.

### DeviceHunt count sanity check
- URL: https://devicehunt.com/
- Use: non-canonical count check only.
- Observed from search result: 2,502 PCI vendors, 21,350 PCI devices,
  3,427 USB vendors, 20,535 USB devices.
- Not used as canonical source for final facts.

## Batch 6 count decision

The requested "5000 additions" threshold is met as **5000 proposal-only
diagnostic identifier slots** in:

`MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch6_5000.jsonl`

These are not final IANA row mirrors. They are structured diagnostic slots for
ports 0-2499 over TCP and UDP, each marked as requiring exact current IANA
row verification before final MEMORY acceptance.
