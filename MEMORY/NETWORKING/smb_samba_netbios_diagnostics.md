# SMB / Samba / NetBIOS diagnostic notes

Status: RESEARCH_SEED

## Relevant protocols and ports

- SMB direct over TCP: `tcp/445`
- NetBIOS Name Service: `udp/137`
- NetBIOS Datagram: `udp/138`
- NetBIOS Session Service: `tcp/139`
- Legacy browsing/workgroup discovery may depend on NetBIOS; modern SMB should prefer DNS and `tcp/445`.

## Common signatures

### Windows cannot access Samba share
Signals:
- `NT_STATUS_LOGON_FAILURE`
- `NT_STATUS_ACCESS_DENIED`
- Guest access blocked
- Share visible but login fails
- Dialect/signing mismatch

Read-only diagnostics:
```bash
testparm -s
smbstatus
systemctl status smbd nmbd winbind --no-pager
journalctl -u smbd -n 120 --no-pager
smbclient -L //SERVER -U USER
```

Risk:
- Changing guest access, SMB1, NTLM, signing, or permissions can create security exposure.

Safer fix model:
- Validate DNS/name resolution first.
- Validate Unix permissions separately from Samba share permissions.
- Do not enable SMB1 unless isolated legacy device requires it and risk is accepted.
- Prefer per-user authenticated shares.

## Memory fields to capture
- Server OS/distribution and Samba version.
- Client OS/build.
- `smb.conf` relevant `[global]` and share block only.
- Exact error code.
- Authentication mode.
- Name resolution method: DNS, mDNS, WINS, NetBIOS.
- Firewall path.
- Whether this is LAN-only or internet-exposed. SMB should not be internet-exposed.
