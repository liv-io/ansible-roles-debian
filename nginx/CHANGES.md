# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 3.1.0 (2025-08-21)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 3.0.1 (2025-03-31)

### Enhancements

- Update ECDH curves

## 3.0.0 (2025-03-24)

### Changes

- Remove port from virtual host file name and log file

### Enhancements

- Update cipher suites
- Disable SSL session tickets by default

### Features

- Add support for ACME client challenge

## 2.1.3 (2024-10-15)

### Enhancements

- Minor cosmetic changes (indentation, comments)

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

## 1.2.0 (2023-08-04)

### Features

- Add parameter `nginx_nftables_filter_rule`
- Add parameter `nginx_nftables_state`

## 1.1.2 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.1.1 (2023-06-25)

### Enhancements

- Minor task name and variable improvement

## 1.1.0 (2023-06-25)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.2 (2022-11-07)

### Bugs

- Add missing `openssl` dependency

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

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
