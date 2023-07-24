# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.3.0 (2023-07-24)

### Features

- Add parameter `haproxy_exporter_nftables_filter_rule`
- Add parameter `haproxy_exporter_nftables_state`

## 1.2.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.1.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.1.0 (2022-11-29)

### Features

- Update `haproxy_exporter` to version 0.14.0

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.2.0 (2021-11-26)

### Features

- Update `haproxy_exporter` to version 0.13.0

## 0.1.0 (2020-12-12)

### Features

- Initial release
