# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.2.0 (2024-03-08)

### Enhancements

- Reduce monit protocol timeout from 60 to 10 seconds

### Features

- Add parameter `openssh_debian_banner`

## 2.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.0.2 (2023-08-17)

### Enhancements

- Increase monit protocol check timeout

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.2.0 (2023-08-05)

### Features

- Add parameter `openssh_nftables_filter_rule`
- Add parameter `openssh_nftables_state`

## 1.1.0 (2023-06-14)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.1 (2021-01-28)

### Enhancements

- Remove legacy compression argument "delayed"
- Use primary service name instead of alias name

## 0.1.0 (2020-12-12)

### Features

- Initial release
