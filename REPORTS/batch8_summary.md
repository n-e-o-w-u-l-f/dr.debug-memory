# Batch 8 Summary

## Result

Created a new Batch 8 ZIP based on Batch 7 after collecting **50,000 new additions**.

## Counted additions

`MEMORY/NETWORKING/iana_service_port_diagnostic_slots_batch8_50000.jsonl`

- Port range: 10000-34999
- Transports: tcp, udp
- Records: 50,000
- Status: PROPOSAL_ONLY_REQUIRES_PRIVATE_REVIEW
- Purpose: firewall/NAT/CGNAT/router-log/service-inventory triage and normalized port/protocol evidence.

## Why this is safe

IANA explicitly notes that port registration/observation does not prove that traffic is benign or that it corresponds to the assigned service. Therefore every Batch 8 slot states that process, banner, TLS/ALPN/SNI, packet capture, service config, and host context are required before assigning a service identity.

## Additional seeds

The package also adds source registry entries and diagnostic models for HTTP, SSH, TLS, DHCP, media types, and Android build identity.

## Not done

This is not a GitHub commit and not a direct repository replacement. It is a reviewable import/proposal package.
