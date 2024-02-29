# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.7.0 (2024-02-29)

### Bugs

- Update Loki to version 2.9.5

## 2.6.1 (2024-02-18)

### Bugs

- Fix conditional of `grafana` dependency

## 2.6.0 (2024-01-24)

### Bugs

- Update Loki to version 2.9.4

## 2.5.0 (2023-12-12)

### Bugs

- Update Loki to version 2.9.3

## 2.4.0 (2023-10-20)

### Bugs

- Update Loki to version 2.9.2

## 2.3.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.2.0 (2023-09-15)

### Bugs

- Update Loki to version 2.9.1

## 2.1.0 (2023-09-07)

### Features

- Update Loki to version 2.9.0

## 2.0.2 (2023-08-16)

### Bugs

- Update Loki to version 2.8.4

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.11.0 (2023-08-01)

### Features

- Add parameter `loki_nftables_filter_rule`
- Add parameter `loki_nftables_state`

## 1.10.0 (2023-07-22)

### Enhancements

- Update Loki to version 2.8.3

## 1.9.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.9.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.8.1 (2023-05-03)

### Enhancements

- Update Loki to version 2.8.2

## 1.8.0 (2023-04-24)

### Enhancements

- Update Loki to version 2.8.1

## 1.7.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.7.0 (2023-04-04)

### Features

- Update Loki to version 2.8.0

## 1.6.0 (2023-03-30)

### Enhancements

- Update Loki to version 2.7.5

## 1.5.0 (2023-03-01)

### Enhancements

- Update Loki to version 2.7.4

## 1.4.0 (2023-02-02)

### Features

- Update Loki to version 2.7.3

## 1.3.0 (2022-07-11)

### Features

- Update Loki to version 2.6.0

## 1.2.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.2.0 (2022-04-11)

### Features

- Update Loki to version 2.5.0

## 1.1.0 (2022-01-12)

### Enhancements

- Update Loki to version 2.4.2

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.7.0 (2021-11-08)

### Enhancements

- Update Loki to version 2.4.1

## 0.6.0 (2021-11-06)

### Features

- Update Loki to version 2.4.0

## 0.5.0 (2021-08-07)

### Features

- Update Loki to version 2.3.0

## 0.4.0 (2021-04-07)

### Enhancements

- Update Loki to version 2.2.1

## 0.3.0 (2021-03-13)

### Features

- Update Loki to version 2.2.0

## 0.2.0 (2020-12-25)

### Features

- Update Loki to version 2.1.0

## 0.1.0 (2020-12-12)

### Features

- Initial release
