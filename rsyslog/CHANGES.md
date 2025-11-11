# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 3.0.0 (2025-11-10)

### Changes

- Rename parameter from `rsyslog_monitor_monit_state` to `rsyslog_monit_state`

## 2.2.0 (2025-08-10)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 2.1.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 2.1.1 (2024-01-04)

### Enhancements

- Minor cosmetic if-statement improvement

## 2.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.2.0 (2023-08-05)

### Features

- Add parameter `rsyslog_nftables_filter_rule`
- Add parameter `rsyslog_nftables_state`

## 1.1.0 (2023-06-25)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.1 (2020-12-15)

### Enhancements

- Add `install_recommends` parameter to package tasks

## 0.1.0 (2020-12-12)

### Features

- Initial release
