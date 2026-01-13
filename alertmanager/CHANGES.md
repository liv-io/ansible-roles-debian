# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.30.1-1 (2026-01-13)

### Bugs

- Update alertmanager to version 0.30.1

## 0.30.0-1 (2025-12-16)

### Features

- Update alertmanager to version 0.30.0

## 0.29.0-2 (2025-11-10)

### Changes

- Rename parameter from `alertmanager_monitor_monit_state` to `alertmanager_monit_state`

## 0.29.0-1 (2025-10-04)

### Changes

- Change versioning

### Features

- Update alertmanager to version 0.29.0

## 3.4.0 (2025-08-10)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 3.3.0 (2025-03-07)

### Bugs

- Update alertmanager to version 0.28.1

## 3.2.0 (2025-01-16)

### Features

- Update alertmanager to version 0.28.0

## 3.1.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 3.1.0 (2024-03-01)

### Features

- Update alertmanager to version 0.27.0

## 3.0.0 (2024-02-11)

### Changes

- Change `alertmanager_config` type from array into string

## 2.2.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.1.0 (2023-08-27)

### Features

- Update alertmanager to version 0.26.0

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.4.0 (2023-07-29)

### Features

- Add parameter `alertmanager_nftables_filter_rule`
- Add parameter `alertmanager_nftables_state`

## 1.3.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.2.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.2.0 (2022-12-25)

### Features

- Update alertmanager to version 0.25.0

## 1.1.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.1.0 (2022-03-25)

### Features

- Update alertmanager to version 0.24.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.5.0 (2021-08-25)

### Features

- Update alertmanager to version 0.23.0

## 0.4.0 (2021-06-02)

### Features

- Update alertmanager to version 0.22.2

## 0.3.0 (2021-05-27)

### Features

- Update alertmanager to version 0.22.1

## 0.2.0 (2021-05-24)

### Features

- Update alertmanager to version 0.22.0

## 0.1.0 (2020-12-12)

### Features

- Initial release
