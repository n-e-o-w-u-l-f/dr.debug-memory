# Fastboot CLI Reference

Version: 0.1.0
Status: OFFICIAL_SOURCE_STARTED
Scope: Android fastboot command/protocol reference starter

## Identity

```yaml
id: CLI-ANDROID-FASTBOOT
command: fastboot
system_scope: cross_platform_host_to_android_bootloader
shell_scope: host_terminal_to_bootloader_or_fastbootd
target_environment: bootloader or fastbootd
risk_level: high_by_default_for_flash_unlock_erase_operations
source_status: official_source_started
```

## Purpose

Fastboot is a protocol and command-line tool used by a host computer to communicate with Android bootloaders or fastbootd. It is separate from adb and is used when a device is in fastboot/bootloader mode.

## Architecture relation

- Host side: Windows, Linux or macOS terminal.
- Device side: bootloader fastboot or userspace fastbootd.
- Transport: USB or ethernet, depending on implementation.
- Not the same as: adb Android userspace shell.

## Syntax shape

```text
fastboot [global-options] <command> [command-options] [arguments]
```

## Starter commands

```text
fastboot devices
fastboot getvar all
fastboot getvar <name>
fastboot reboot
fastboot reboot-bootloader
fastboot reboot fastboot
fastboot flashing unlock
fastboot flashing lock
fastboot flash <partition> <image>
fastboot boot <image>
fastboot erase <partition>
fastboot update <zip>
fastboot set_active <slot>
```

## Safety notes

- Flashing, erase, unlock and partition operations are high risk.
- Bootloader unlock may wipe data and may affect warranty/security state.
- Never run destructive fastboot commands without model, partition, slot and rollback validation.

## Official sources

- https://android.googlesource.com/platform/system/core/+/master/fastboot/README.md

## Research gaps

- Expand full command/protocol table.
- Add bootloader vs fastbootd distinction records.
- Add OEM-specific command policy.
