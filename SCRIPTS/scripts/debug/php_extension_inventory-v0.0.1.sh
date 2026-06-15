#!/usr/bin/env bash
# Dr. Debug Script: php_extension_inventory
# Version: v0.0.1
# Category: debug
# Component: php
# Task: inventory PHP versions, ini files and extensions
# Safety: diagnostic-only
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== PHP Extension Inventory =="

if command -v php >/dev/null 2>&1; then
  printf '%s
' "-- php -v --"
  php -v 2>&1
  printf '%s
' "-- php --ini --"
  php --ini 2>&1
  printf '%s
' "-- php -m --"
  php -m 2>&1 | sort
  printf '%s
' "-- selected ini values --"
  php -r '
$keys=["error_reporting","display_errors","log_errors","memory_limit","max_execution_time","upload_max_filesize","post_max_size","date.timezone","session.save_path","opcache.enable","opcache.validate_timestamps"];
foreach ($keys as $k) { echo $k."=".ini_get($k).PHP_EOL; }
' 2>&1
else
  printf '%s
' "MISS php command not found"
fi

printf '%s
' "== Package hints =="
if command -v pacman >/dev/null 2>&1; then
  pacman -Q | grep -E '^(php|composer|apache|nginx)' || true
fi
if command -v dpkg-query >/dev/null 2>&1; then
  dpkg-query -W 2>/dev/null | grep -E '^(php|composer|apache2|nginx)' || true
fi

printf '%s
' "== Done. No files were changed. =="
