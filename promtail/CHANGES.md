# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 3.6.0-1 (2025-11-18)

### Features

- Update Promtail to version 3.6.0

## 3.5.8-2 (2025-11-10)

### Changes

- Rename parameter from `promtail_monitor_monit_state` to `promtail_monit_state`

## 3.5.8-1 (2025-11-05)

### Bugs

- Update Promtail to version 3.5.8

## 3.5.7-1 (2025-10-13)

### Bugs

- Update Promtail to version 3.5.7

## 3.5.6-1 (2025-10-11)

### Bugs

- Update Promtail to version 3.5.6

## 3.5.5-1 (2025-08-13)

### Bugs

- Update Promtail to version 3.5.5

## 3.5.4-1 (2025-08-04)

### Bugs

- Update Promtail to version 3.5.4

## 3.5.3-2 (2025-08-10)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 3.5.3-1 (2025-07-23)

### Bugs

- Update Promtail to version 3.5.3

## 3.5.2-1 (2025-07-14)

### Bugs

- Update Promtail to version 3.5.2

## 3.5.1-1 (2025-05-23)

### Bugs

- Update Promtail to version 3.5.1

## 3.5.0-1 (2025-04-28)

### Features

- Update Promtail to version 3.5.0

## 3.4.3-1 (2025-04-04)

### Bugs

- Update Promtail to version 3.4.3

### Changes

- Change versioning

## 3.4.2 (2025-02-14)

### Bugs

- Update Promtail to version 3.4.2

## 3.4.1 (2025-02-13)

### Features

- Update Promtail to version 3.4.1

## 3.3.2 (2025-01-07)

### Bugs

- Update Promtail to version 3.3.2

## 3.3.1 (2024-12-05)

### Bugs

- Update Promtail to version 3.3.1

## 3.3.0 (2024-12-04)

### Changes

- Update Promtail to version 3.3.0

## 3.2.1 (2024-10-17)

### Bugs

- Update Promtail to version 3.2.1

## 3.2.0 (2024-09-19)

### Features

- Update Promtail to version 3.2.0

## 3.1.1 (2024-08-09)

### Bugs

- Update Promtail to version 3.1.1

## 3.1.0 (2024-07-03)

### Features

- Update Promtail to version 3.1.0

## 3.0.0 (2024-05-19)

### Changes

- Update Promtail to version 3.0.0

## 2.10.0 (2024-05-03)

### Bugs

- Update Promtail to version 2.9.8

## 2.9.0 (2024-04-12)

### Bugs

- Update Promtail to version 2.9.7

## 2.8.0 (2024-03-23)

### Bugs

- Update Promtail to version 2.9.6

## 2.7.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 2.7.0 (2024-02-29)

### Bugs

- Update Promtail to version 2.9.5

## 2.6.0 (2024-01-24)

### Bugs

- Update Promtail to version 2.9.4

## 2.5.0 (2023-12-12)

### Bugs

- Update Promtail to version 2.9.3

## 2.4.0 (2023-10-20)

### Bugs

- Update Promtail to version 2.9.2

## 2.3.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.2.0 (2023-09-15)

### Bugs

- Update Promtail to version 2.9.1

## 2.1.0 (2023-09-07)

### Features

- Update Promtail to version 2.9.0

## 2.0.2 (2023-08-16)

### Bugs

- Update Promtail to version 2.8.4

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.5.0 (2023-08-05)

### Features

- Add parameter `promtail_nftables_filter_rule`
- Add parameter `promtail_nftables_state`

## 1.4.0 (2023-07-22)

### Enhancements

- Update Promtail to version 2.8.3

## 1.3.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.2.1 (2023-05-03)

### Enhancements

- Update Promtail to version 2.8.2

## 1.2.0 (2023-04-25)

### Enhancements

- Update Promtail to version 2.8.1

## 1.1.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.1.0 (2023-04-04)

### Features

- Update Promtail to version 2.8.0

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.0 (2020-12-12)

### Features

- Initial release
