# ADB CLI Reference

Version: 0.1.0
Status: OFFICIAL_SOURCE_STARTED
Scope: Android Debug Bridge command reference starter

## Identity

```yaml
id: CLI-ANDROID-ADB
command: adb
system_scope: cross_platform_host_to_android
shell_scope: host_terminal_to_android_userspace
target_environment: Android device userspace
risk_level: read_only_to_system_change_by_subcommand
source_status: official_source_started
```

## Purpose

`adb` is the Android Debug Bridge command-line tool used by a host computer to communicate with Android devices. It supports device actions such as app installation, debugging and access to a Unix shell on the device.

## Architecture relation

- Host side: Windows, Linux or macOS terminal.
- Device side: Android userspace daemon `adbd`.
- Transport: USB or network, depending on setup and authorization.
- Not the same as: fastboot bootloader protocol.

## Syntax shape

```text
adb [global-options] <command> [command-options] [arguments]
```

## Starter commands

```text
adb devices
adb shell
adb shell <command>
adb install <apk>
adb uninstall <package>
adb push <local> <remote>
adb pull <remote> <local>
adb logcat
adb bugreport
adb reboot
adb reboot bootloader
adb sideload <zip>
adb start-server
adb kill-server
```

## Safety notes

- USB debugging must be intentionally enabled and authorized.
- Device prompts and RSA authorization protect against unauthorized access.
- Treat commands that modify packages, files, partitions, settings or boot state as higher risk.

## Official sources

- https://developer.android.com/tools/adb

## Research gaps

- Expand full command table from official documentation.
- Add platform-specific installation notes.
- Add safe diagnostic command profiles for CUSTOMER_MODE.
