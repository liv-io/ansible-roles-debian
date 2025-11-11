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

- Rename parameter from `zfs_monitor_mail_from_address` to `zfs_mail_from_address`
- Rename parameter from `zfs_monitor_mail_to_address` to `zfs_mail_to_address`
- Rename parameter from `zfs_monitor_mail_state` to `zfs_mail_state`
- Rename parameter from `zfs_monitor_prom_state` to `zfs_prometheus_state`
- Rename parameter from `zfs_monitor_prom_textfile_collector` to `zfs_prometheus_textfile_collector`

## 2.2.0 (2025-08-10)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 2.1.1 (2024-09-28)

### Enhancements

- Enable ZFS scrubbing and trimming for all pools by default
- Adjust the schedule for ZFS data integrity checks (scrubs) and space reclamation (trims)

## 2.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.0.1 (2023-08-15)

### Enhancements

- Overhaul script

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.1.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.1.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.1 (2020-12-20)

### Enhancements

- Modify `textfile_collector` directory path to comply with Linux FHS

## 0.1.0 (2020-12-15)

### Features

- Initial release
