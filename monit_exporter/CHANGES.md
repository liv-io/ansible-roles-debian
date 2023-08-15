# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.4.0 (2023-07-27)

### Enhancements

- Update monit_exporter to version 0.2.1

## 1.3.0 (2023-07-24)

### Features

- Add parameter `monit_exporter_nftables_filter_rule`
- Add parameter `monit_exporter_nftables_state`

## 1.2.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.1.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.1.0 (2023-04-11)

### Enhancements

- Update monit_exporter to version 0.2.0

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.0 (2020-12-12)

### Features

- Initial release
