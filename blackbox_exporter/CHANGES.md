# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.27.0-1 (2025-06-30)

### Enhancements

- Change versioning

### Features

- Update blackbox_exporter to version 0.27.0

## 2.3.1 (2025-05-22)

### Bugs

- Fix `valid_http_versions` value

## 2.3.0 (2025-02-27)

### Features

- Update blackbox_exporter to version 0.26.0

## 2.2.0 (2024-04-09)

### Features

- Update blackbox_exporter to version 0.25.0

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

## 1.8.0 (2023-07-24)

### Features

- Add parameter `blackbox_exporter_nftables_filter_rule`
- Add parameter `blackbox_exporter_nftables_state`

## 1.7.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.6.0 (2023-05-16)

### Features

- Update blackbox_exporter to version 0.24.0

## 1.5.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.5.0 (2022-12-03)

### Features

- Update blackbox_exporter to version 0.23.0

## 1.4.0 (2022-08-03)

### Features

- Update blackbox_exporter to version 0.22.0

## 1.3.0 (2022-06-27)

### Features

- Update blackbox_exporter to version 0.21.1

## 1.2.0 (2022-05-30)

### Features

- Update blackbox_exporter to version 0.21.0

## 1.1.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.1.0 (2022-03-17)

### Features

- Update blackbox_exporter to version 0.20.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.2.1 (2021-07-03)

### Enhancements

- Set capability `cap_net_raw` upon installation

## 0.2.0 (2021-05-10)

### Features

- Update blackbox_exporter to version 0.19.0

## 0.1.0 (2020-12-12)

### Features

- Initial release
