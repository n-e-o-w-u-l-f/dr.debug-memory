#!/usr/bin/env bash
# Dr. Debug Script: package_version_error_scaffold
# Version: v0.0.1
# Category: debug
# Component: generic_package
# Task: create metadata-only YAML scaffold for versioned error entry
# Safety: diagnostic-only
# Created for: dr.debug-memory
# Notes: No destructive action without explicit review.

printf '%s
' "== Versioned error scaffold =="

component="${1:-unknown_component}"
version="${2:-unknown_version}"
slug="$(printf '%s_%s' "$component" "$version" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9._-]/_/g')"

cat <<YAML
id: "${slug}_initial_error_entry"
category: unknown_component
component_identity:
  vendor:
  product: "${component}"
  component_type:
  model:
  hardware_revision:
  chipset:
  firmware:
  driver:
  package_name: "${component}"
  ecosystem:
  architecture:
  os_distribution:
  os_version:
version_scope:
  affected_versions: ["${version}"]
  introduced_in:
  fixed_in:
  first_known_bad:
  last_known_bad:
  first_known_good:
  not_affected_versions: []
  unknown_versions: []
  eol_versions: []
  prerelease_versions: []
error_codes: []
message_patterns: []
log_patterns: []
symptoms: []
known_causes: []
diagnostic_status: "not_started"
safe_diagnostics: []
solution_status: "unknown"
known_safe_fixes: []
unsafe_or_unverified_fixes: []
sources: []
status: initial_knowledge_commit
needs_review: true
needs_user_cooperation: true
safe_to_store_reason: "Metadata-only entry; no remediation, exploit, bypass or destructive instruction included."
last_reviewed:
YAML

printf '%s
' "== Done. No files were changed. Redirect output to a reviewed file if needed. =="
