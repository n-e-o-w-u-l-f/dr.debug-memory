# Network diagnostics matrix - Batch 5

Status: PROPOSAL_ONLY
Scope: read-only identification and triage. Do not alter firewall/NAT/SSH/Samba settings without ownership, backup, rollback and lockout-risk review.

## Minimum context fields

```text
Network type: home / enterprise / ISP CPE / mobile hotspot / VPN / container / VM / WSL
Device role: client / router / access point / firewall / NAS / server / printer / IoT / console
Local or remote:
Admin access:
Risk: lockout / data loss / production outage / privacy / policy violation
Address families: IPv4 / IPv6 / dual stack
ISP WAN type: public IPv4 / RFC1918 / RFC6598 CGNAT / DS-Lite / MAP-E / PPPoE / unknown
```

## Safe first-read commands

### Linux

```bash
set -u
echo "== addresses =="
ip addr show || true
echo "== routes =="
ip route show || true
ip -6 route show || true
echo "== dns =="
resolvectl status 2>/dev/null || cat /etc/resolv.conf 2>/dev/null || true
echo "== sockets =="
ss -tulpn 2>/dev/null || ss -tuln || true
echo "== firewall presence =="
command -v nft >/dev/null 2>&1 && nft list ruleset 2>/dev/null | sed -n '1,160p' || true
command -v iptables >/dev/null 2>&1 && iptables -S 2>/dev/null || true
```

### Windows PowerShell

```powershell
Get-NetIPConfiguration
Get-NetRoute | Sort-Object -Property DestinationPrefix | Format-Table -AutoSize
Get-DnsClientServerAddress
Test-NetConnection example.com -Port 443
Get-NetTCPConnection -State Listen
```

### macOS

```bash
ifconfig
netstat -rn
scutil --dns
lsof -nP -iTCP -sTCP:LISTEN
```

## Interpretation anchors

- `100.64.0.0/10` on router WAN is a CGNAT/shared-address indicator, not a normal home LAN private address.
- `Connection refused` means the path reached something that actively refused or reset; start at service/listen state.
- `Connection timed out` often points to drop, routing, NAT, CGNAT or firewall state.
- SMB over TCP uses port 445 for direct hosting; NetBIOS-related legacy traffic commonly involves 137/138/139.
- DoH/DoT can make browser DNS behavior differ from OS DNS behavior.
- IPv6 does not require NAT in the normal case; NAT66 is special-case and should not be the first fix.
