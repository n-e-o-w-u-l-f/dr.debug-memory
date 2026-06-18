# NAT / CGNAT / IPv4 / IPv6 / Firewall diagnostic playbook

Status: RESEARCH_SEED
Purpose: Safe, read-only triage for user reports like "port forwarding does not work", "server not reachable", "game NAT strict", "VPN/VoIP drops".

## Primary signature groups

### CGNAT suspected
Signals:
- Router WAN address is `100.64.0.0/10`.
- Router WAN address is RFC1918 private space while external "what is my IP" differs.
- ISP documentation says DS-Lite, MAP-T, CGNAT, shared IPv4, carrier NAT.
- Inbound port forwarding on customer router has no effect from the public internet.

Likely cause:
- The customer router is not the public IPv4 endpoint.

Safe next diagnostics:
```bash
# Linux/macOS
ip route || netstat -rn
curl -4 https://ifconfig.me 2>/dev/null || true
curl -6 https://ifconfig.me 2>/dev/null || true

# Router UI, read-only:
# Compare WAN/Internet IPv4 with external IPv4 result.
```

Repair/fix options:
- Ask ISP for public IPv4 or static IPv4.
- Prefer IPv6 if remote clients support it.
- Use reverse tunnel, VPN with public endpoint, or relay.
- Do not promise that local port forwarding can solve CGNAT.

### Double NAT suspected
Signals:
- Upstream router and downstream router both doing NAT.
- WAN of inner router is `192.168.x.x`, `10.x.x.x`, or `172.16-31.x.x`.
- Port forward exists only on inner router.

Fix model:
- Bridge/modem mode on ISP router, or
- Port forward on both routers, or
- Move server to first NAT layer, or
- Use IPv6/public tunnel.

### IPv6 works but IPv4 does not
Signals:
- AAAA DNS record exists and A record missing/broken.
- Client network has working IPv6 but server firewall only configured for IPv4 or vice versa.

Fix model:
- Check `ip -6 addr`, `ip -6 route`, router advertisements, prefix delegation.
- Ensure ICMPv6 is not blocked.
- Add separate IPv6 firewall rules; NAT assumptions do not transfer to IPv6.

### Firewall lockout risk
Before changing remote firewall:
1. Save current rules.
2. Ensure out-of-band access.
3. Apply timed rollback.
4. Validate from a second session before closing current session.

Never blindly flush firewall rules over SSH.
