# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.10.1-1 (2025-07-14)

### Enhancements

- Update ipmi_exporter to version 1.10.1

## 0.1.6 (2025-01-13)

### Enhancements

- Update ipmi_exporter to version 1.10.0

## 0.1.5 (2024-10-21)

### Bugs

- Remove needless task `set capability cap_net_raw`

## 0.1.4 (2024-10-17)

### Bugs

- Update ipmi_exporter to version 1.9.0

## 0.1.3 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.1.2 (2024-02-11)

### Bugs

- Do not log output of `ipmi.yml` task

## 0.1.1 (2024-02-11)

### Bugs

- Limit POSIX permissions for `/etc/ipmi_exporter` and `ipmi.yml`

## 0.1.0 (2024-02-10)

### Features

- Initial release
