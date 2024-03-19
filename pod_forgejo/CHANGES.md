# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.5.4 (2024-03-19)

### Bugs

- Add writable `/tmp` directory as tmpfs

## 0.5.3 (2024-03-13)

### Bugs

- Update `pod_forgejo_forgejo_version` from 1.21.6-0-1 to 1.21.7-0-1

## 0.5.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.5.1 (2024-02-23)

### Bugs

- Update `pod_forgejo_forgejo_version` from 1.21.5-0-1 to 1.21.6-0-1

## 0.5.0 (2024-02-02)

### Features

- Add clean Git SSH support

## 0.4.1 (2024-02-02)

### Enhancements

- Minor task order improvement

## 0.4.0 (2024-02-01)

### Bugs

- Update `pod_forgejo_forgejo_version` from 1.21.4-0-2 to 1.21.5-0-1

### Enhancements

- Download latest container image release before stopping container

## 0.3.0 (2024-01-30)

### Features

- Add parameter `pod_forgejo_nftables_filter_rule`
- Add parameter `pod_forgejo_nftables_state`

## 0.2.0 (2024-01-28)

### Features

- Add rudimentary Git SSH support

## 0.1.0 (2024-01-24)

### Features

- Initial release
