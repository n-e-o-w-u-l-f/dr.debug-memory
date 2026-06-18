#!/usr/bin/env bash
# Dr. Debug Script: irc_znc_unreal_connectivity
# Version: v0.0.1
# Category: debug
# Component: znc_unrealircd
# Task: diagnose IRC/ZNC/UnrealIRCd connectivity
# Safety: diagnostic-only
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== IRC / ZNC / UnrealIRCd connectivity diagnostics =="

host="${1:-legion-znc.serveirc.com}"
ports="${2:-6667 6697 7000 7777}"

printf 'Target host: %s
' "$host"
printf 'Ports: %s
' "$ports"

printf '%s
' "-- local service status hints --"
for svc in znc unrealircd anope; do
  if command -v systemctl >/dev/null 2>&1; then
    systemctl is-active "$svc" 2>/dev/null | sed "s/^/$svc: /" || true
  fi
done

printf '%s
' "-- DNS --"
getent hosts "$host" || printf '%s
' "WARN: host lookup failed"

printf '%s
' "-- TCP checks --"
for p in $ports; do
  if command -v nc >/dev/null 2>&1; then
    nc -vz -w 5 "$host" "$p" 2>&1 | sed "s/^/port $p: /"
  else
    printf 'MISS nc; cannot check port %s
' "$p"
  fi
done

printf '%s
' "-- local listeners --"
if command -v ss >/dev/null 2>&1; then
  ss -tulpn 2>/dev/null | grep -E ':(6667|6697|7000|7777|1242)\b' || printf '%s
' "No matching local listeners shown"
else
  printf '%s
' "MISS ss"
fi

printf '%s
' "== Done. No files were changed. =="
