# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.14.0-3 (2025-11-10)

### Changes

- Rename parameter from `rest_server_monitor_monit_state` to `rest_server_monit_state`

## 0.14.0-2 (2025-06-01)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 0.14.0-1 (2025-06-01)

### Changes

- Change versioning

### Features

- Update rest-server to version 0.14.0

## 3.1.0 (2024-07-27)

### Features

- Update rest-server to version 0.13.0

## 3.0.0 (2024-07-16)

### Changes

- Remove option `--no-auth`

### Features

- Add option `--append-only`
- Add option `--htpasswd-file /etc/rest-server/htpasswd`
- Add option `--private-repos`

### Enhancements

- Update rest-server to version 0.12.1

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

## 1.4.0 (2023-08-05)

### Features

- Add parameter `rest_server_nftables_filter_rule`
- Add parameter `rest_server_nftables_state`

## 1.3.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.2.0 (2023-04-24)

### Features

- Update rest-server to version 0.12.0

## 1.1.2 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.1.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.1.0 (2022-02-11)

### Features

- Update rest-server to version 0.11.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.0 (2020-12-13)

### Features

- Initial release
