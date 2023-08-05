# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.0.0 (2023-08-05)

### Bugs

- Fix monit process check

### Changes

- Remove default value for parameter `pod_registry_password`
- Remove default value for parameter `pod_registry_username`

### Features

- Add parameter `pod_registry_nftables_filter_rule`
- Add parameter `pod_registry_nftables_state`

## 0.2.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 0.2.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 0.1.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 0.1.0 (2022-11-06)

### Features

- Initial release
