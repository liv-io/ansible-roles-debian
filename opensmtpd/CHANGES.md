# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.1.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

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

## 1.2.0 (2023-08-04)

### Features

- Add parameter `opensmtpd_nftables_filter_rule`
- Add parameter `opensmtpd_nftables_state`

## 1.1.1 (2023-06-14)

### Bugs

- Fix package task for Debian 12 (Bookworm)


## 1.1.0 (2023-06-14)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.1 (2021-07-19)

### Bugs

- Fix notify arguments (remove trailing single quote)

## 0.1.0 (2020-12-19)

### Features

- Initial release
