<#
Dr.Debug safe Windows discovery helper

Purpose:
  Read-only platform gate for Windows diagnostics. It collects basic OS,
  PowerShell, service, process and network context.

Usage:
  powershell -NoProfile -ExecutionPolicy Bypass -File .\windows_basic_discovery.ps1
  pwsh -NoProfile -File ./windows_basic_discovery.ps1

Safety:
  - Does not change configuration.
  - Does not require Administrator.
  - Redacts common credential-like strings.
#>

[CmdletBinding()]
param(
  [switch]$IncludeProcesses,
  [switch]$IncludeNetwork
)

function Redact-Text {
  param([Parameter(ValueFromPipeline=$true)][string]$Text)
  process {
    if ($null -eq $Text) { return }
    $out = $Text
    $out = $out -replace '(?i)(password|passwd|token|secret|api[_-]?key)\s*[:=]\s*\S+', '$1='
    $out = $out -replace '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}', ''
    $out = $out -replace '(https?://)[^/@\s]+:[^/@\s]+@', '$1@'
    return $out
  }
}

function Section { param([string]$Name) Write-Output ""; Write-Output "== $Name ==" }

Section "context"
try {
  [PSCustomObject]@{
    DateUtc   = (Get-Date).ToUniversalTime().ToString("s") + "Z"
    User      = [Security.Principal.WindowsIdentity]::GetCurrent().Name
    IsAdmin   = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
    PSVersion = $PSVersionTable.PSVersion.ToString()
    PSEdition = $PSVersionTable.PSEdition
  } | Format-List | Out-String | Redact-Text
} catch { "context_error=$($_.Exception.Message)" | Redact-Text }

Section "os"
try {
  Get-CimInstance Win32_OperatingSystem |
    Select-Object Caption, Version, BuildNumber, OSArchitecture, InstallDate, LastBootUpTime |
    Format-List | Out-String | Redact-Text
} catch { "os_error=$($_.Exception.Message)" | Redact-Text }

Section "computer"
try {
  Get-CimInstance Win32_ComputerSystem |
    Select-Object Manufacturer, Model, SystemType, TotalPhysicalMemory |
    Format-List | Out-String | Redact-Text
} catch { "computer_error=$($_.Exception.Message)" | Redact-Text }

Section "disk summary"
try {
  Get-CimInstance Win32_LogicalDisk |
    Select-Object DeviceID, DriveType, FileSystem, Size, FreeSpace |
    Format-Table -AutoSize | Out-String | Redact-Text
} catch { "disk_error=$($_.Exception.Message)" | Redact-Text }

Section "services failed-or-stopped-auto"
try {
  Get-CimInstance Win32_Service |
    Where-Object { ($_.StartMode -eq "Auto" -and $_.State -ne "Running") -or $_.State -eq "Stop Pending" } |
    Select-Object Name, State, StartMode, ExitCode, ProcessId |
    Sort-Object Name |
    Format-Table -AutoSize | Out-String | Redact-Text
} catch { "services_error=$($_.Exception.Message)" | Redact-Text }

if ($IncludeProcesses) {
  Section "top processes"
  try {
    Get-Process |
      Sort-Object CPU -Descending |
      Select-Object -First 20 Name, Id, CPU, WorkingSet64, Path |
      Format-Table -AutoSize | Out-String | Redact-Text
  } catch { "process_error=$($_.Exception.Message)" | Redact-Text }
}

if ($IncludeNetwork) {
  Section "network summary"
  try {
    Get-NetIPConfiguration |
      Select-Object InterfaceAlias, InterfaceDescription, IPv4Address, IPv6Address, DNSServer |
      Format-List | Out-String | Redact-Text
  } catch { "network_error=$($_.Exception.Message)" | Redact-Text }
}

Section "next safe checks"
@"
- Share only the sections relevant to the issue.
- Review output for private hostnames, IPs or usernames before sending.
- Do not run repair commands before the affected component and risk are clear.
"@
