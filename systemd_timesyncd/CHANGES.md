# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.0.2 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.1 (2023-08-15)

### Enhancements

- Overhaul script

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.4.0 (2023-08-05)

### Features

- Add parameter `systemd_timesyncd_nftables_filter_rule`
- Add parameter `systemd_timesyncd_nftables_state`

## 1.3.3 (2023-07-28)

### Enhancements

- Minor script improvements

## 1.3.2 (2023-07-28)

### Enhancements

- Remove unused command variables in script

## 1.3.1 (2023-07-28)

### Bugs

- Remove unused parameter `systemd_timesyncd_check_time_offset_limit`

## 1.3.0 (2023-07-28)

### Enhancements

- Add script to check system time synchronization
- Remove monit modify timestamp check

## 1.2.0 (2023-07-27)

### Features

- Add parameter `systemd_timesyncd_poll_interval_max_sec`
- Add parameter `systemd_timesyncd_poll_interval_min_sec`
- Check modify timestamp of clock file

## 1.1.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.2 (2023-04-07)

### Bugs

- Fix `systemd_timesyncd_monitor_monit_state` variable name in Ansible tasks

## 1.0.1 (2022-12-13)

### Bugs

- Add missing package tasks to install/remove `systemd-timesyncd`

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.0 (2020-12-15)

### Features

- Initial release
