# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 4.1.1 (2024-09-06)

### Enhancements

- Update restic to version 0.17.1

## 4.1.0 (2024-07-27)

### Features

- Update restic to version 0.17.0

## 4.0.1 (2024-07-16)

### Enhancements

- Minor cosmetic script change

## 4.0.0 (2024-07-15)

### Changes

- Change parameter `restic_server_username` to `{{ansible_hostname}}`

### Enhancements

- Minor script improvements

### Features

- Add parameter `restic_append_only`

## 3.5.2 (2024-07-02)

### Enhancements

- Update restic to version 0.16.5

## 3.5.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 3.5.0 (2024-02-05)

### Bugs

- Update restic to version 0.16.4

## 3.4.0 (2024-01-15)

### Bugs

- Update restic to version 0.16.3

## 3.3.0 (2023-10-30)

### Bugs

- Update restic to version 0.16.2

## 3.2.0 (2023-10-25)

### Enhancements

- Update restic to version 0.16.1

## 3.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 3.0.2 (2023-08-15)

### Bugs

- Update nftables tasks according to different states

## 3.0.1 (2023-08-15)

### Enhancements

- Minor script improvement

## 3.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 2.0.0 (2023-08-04)

### Changes

- Remove default value for parameter `restic_password`
- Remove default value for parameter `restic_server_address`
- Remove default value for parameter `restic_server_password`
- Remove default value for parameter `restic_server_username`

### Enhancements

- Overhaul script

### Features

- Update restic to version 0.16.0
- Add parameter `restic_http_proxy`
- Add parameter `restic_https_proxy`
- Add parameter `restic_nftables_filter_rule`
- Add parameter `restic_nftables_state`
- Add parameter `restic_repository_name`

## 1.6.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.6.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.5.2 (2023-05-03)

### Enhancements

- Remove if-statement for `restic_run_backup_exit` Prometheus metric

## 1.5.1 (2023-05-01)

### Enhancements

- Overhaul script

## 1.5.0 (2023-04-24)

### Enhancements

- Update restic to version 0.15.2

## 1.4.0 (2023-01-12)

### Features

- Update restic to version 0.15.0

## 1.3.0 (2022-08-26)

### Features

- Update restic to version 0.14.0

### Enhancements

- Set compression to 'auto' (default)

## 1.2.0 (2022-04-11)

### Features

- Update restic to version 0.13.1

## 1.1.0 (2022-03-27)

### Features

- Update restic to version 0.13.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.2.1 (2021-08-03)

### Features

- Update restic to version 0.12.1

## 0.2.0 (2021-02-14)

### Features

- Update restic to version 0.12.0

## 0.1.1 (2020-12-20)

### Enhancements

- Modify `textfile_collector` directory path to comply with Linux FHS

## 0.1.0 (2020-12-13)

### Features

- Initial release
