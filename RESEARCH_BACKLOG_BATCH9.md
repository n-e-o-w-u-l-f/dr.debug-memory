# Research backlog after Batch 9

## Completed bounded coverage
- TCP/UDP diagnostic slots for ports 0-65535 are now covered across Batch 6-9.

## Continue with reviewable imports
1. Replace generic diagnostic slots with exact IANA service-name records from CSV/XML import.
2. Add SCTP/DCCP slot coverage if the private workflow wants parity with IANA's full transport scope.
3. Import IANA DNS RR TYPE / RCODE / opcode / class registries as exact code-point mappings.
4. Import TLS alert/cipher/extension registries as exact code-point mappings with recommended/deprecated flags.
5. Import Android build-number tables in normalized model, with AOSP tag/source branch separation from vendor firmware.
6. Add device-specific LineageOS/TWRP records only from official supported device pages, keyed by codename and exact model.
7. Expand PCI/USB/LVFS/fwupd through machine-readable sources, keeping license/provenance fields.
