# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.10.2-1 (2025-10-26)

### Bugs

- Update node_exporter to version 1.10.2

## 1.10.1-1 (2025-10-25)

### Bugs

- Update node_exporter to version 1.10.1

## 1.10.0-1 (2025-10-24)

### Features

- Update node_exporter to version 1.10.0

## 1.9.1-2 (2025-08-21)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 1.9.1-1 (2025-04-02)

### Bugs

- Update node_exporter to version 1.9.1

### Changes

- Change versioning

## 2.4.0 (2025-02-17)

### Features

- Update node_exporter to version 1.9.0

## 2.3.2 (2024-07-15)

### Bugs

- Update node_exporter to version 1.8.2

## 2.3.1 (2024-04-22)

### Bugs

- Update node_exporter to version 1.8.1

## 2.3.0 (2024-04-24)

### Features

- Update node_exporter to version 1.8.0

## 2.2.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 2.2.0 (2023-11-13)

### Features

- Update node_exporter to version 1.7.0

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

## 1.5.0 (2023-07-23)

### Features

- Add parameter `node_exporter_nftables_filter_rule`
- Add parameter `node_exporter_nftables_state`

## 1.4.0 (2023-07-18)

### Enhancements

- Update node_exporter to version 1.6.1

## 1.3.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.2.0 (2023-05-27)

### Features

- Update node_exporter to version 1.6.0

## 1.1.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.1.0 (2022-11-29)

### Features

- Update node_exporter to version 1.5.0

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.9.0 (2021-12-05)

### Features

- Update node_exporter to version 1.3.1

## 0.8.0 (2021-11-18)

### Features

- Update node_exporter to version 1.3.0

## 0.7.0 (2021-08-07)

### Features

- Update node_exporter to version 1.2.2

## 0.6.0 (2021-08-05)

### Features

- Update node_exporter to version 1.2.1

## 0.5.0 (2021-07-17)

### Features

- Update node_exporter to version 1.2.0

## 0.4.0 (2021-03-06)

### Features

- Update node_exporter to version 1.1.2

## 0.3.0 (2021-02-13)

### Features

- Update node_exporter to version 1.1.1

## 0.2.0 (2021-02-08)

### Features

- Update node_exporter to version 1.1.0

## 0.1.1 (2020-12-20)

### Enhancements

- Modify `textfile_collector` directory path to comply with Linux FHS

## 0.1.0 (2020-12-12)

### Features

- Initial release
