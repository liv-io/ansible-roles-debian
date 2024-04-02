# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.3.0 (2024-04-02)

### Features

- Update smokeping_prober to version 0.8.0

## 2.2.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 2.2.1 (2024-03-11)

### Bugs

- Update smokeping_prober to version 0.7.3

## 2.2.0 (2024-03-10)

### Bugs

- Update smokeping_prober to version 0.7.2

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

## 1.7.0 (2023-08-05)

### Features

- Add parameter `smokeping_prober_nftables_filter_rule`
- Add parameter `smokeping_prober_nftables_state`

## 1.6.0 (2023-07-12)

### Bugs

- Update smokeping_prober to version 0.7.1

## 1.5.0 (2023-07-11)

### Features

- Update smokeping_prober to version 0.7.0

## 1.4.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.3.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.3.0 (2022-06-08)

### Features

- Update smokeping_prober to version 0.6.1

## 1.2.0 (2022-05-23)

### Features

- Update smokeping_prober to version 0.6.0

## 1.1.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.1.0 (2022-03-17)

### Features

- Update smokeping_prober to version 0.5.2

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.5.0 (2021-05-06)

### Features

- Update smokeping_prober to version 0.4.2

## 0.4.0 (2021-02-03)

### Features

- Update smokeping_prober to version 0.4.1

## 0.3.0 (2021-01-31)

### Features

- Update smokeping_prober to version 0.4.0

## 0.2.0 (2021-01-31)

### Features

- Update smokeping_prober to version 0.3.1

## 0.1.0 (2020-12-12)

### Features

- Initial release
