# DR. DEBUG OPERATING SYSTEMS CANDIDATES NEEDING REVIEW

## 2026-06-15

- Ubuntu 26.04 LTS — official Ubuntu download page was checked, but the full OS-version JSONL entry was deferred because the starter batch had to stay small.
- Fedora Linux 44 — official Fedora Project and Fedora Workstation download pages were checked, but release-date and lifecycle fields need a clean official lifecycle source before full version import.
- openSUSE Leap / Tumbleweed — official get page and roadmap were checked, but architecture and lifecycle details need separate per-distribution verification.
- NixOS — official homepage was checked; release-channel details still need official release/manual verification.

## Connector/schema cleanup candidate

- Direct JSONL `status` field with URL evidence triggered connector blocking during this run. Follow-up agent should retry locally or in a smaller GitHub update path and normalize to the active schema if possible.
