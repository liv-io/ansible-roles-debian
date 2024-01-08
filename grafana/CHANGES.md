# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

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

## 1.2.0 (2023-07-31)

### Features

- Add parameter `grafana_nftables_filter_rule`
- Add parameter `grafana_nftables_state`

## 1.1.2 (2023-07-11)

### Bugs

- Update APT cache if either `grafana.gpg` or `grafana.asc` has changed

## 1.1.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.1.0 (2023-06-25)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.2 (2022-04-09)

### Enhancements

- Provide full APT repository GPG key file

## 1.0.1 (2022-11-13)

### Bugs

- Update to latest upstream deb repository URL

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.4 (2020-12-18)

### Enhancements

- Revert to process PID file in Monit check

## 0.1.3 (2020-12-18)

### Bugs

- Use process name pattern matching in Monit check

## 0.1.2 (2020-12-15)

### Enhancements

- Add `install_recommends` parameter to package tasks

## 0.1.1 (2020-12-12)

### Bugs

- Run `apt update` after adding Grafana repository
- Correct `grafana.gpg` file path

## 0.1.0 (2020-12-12)

### Features

- Initial release
