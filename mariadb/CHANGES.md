# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 3.2.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 3.2.0 (2024-01-27)

### Features

- Add parameter `mariadb_bind_address`

## 3.1.2 (2024-01-24)

### Bugs

- Add missing `python3-mysqldb` package/dependency

## 3.1.1 (2024-01-04)

### Enhancements

- Minor cosmetic if-statement improvement

## 3.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 3.0.3 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 3.0.2 (2023-08-15)

### Enhancements

- Overhaul script

## 3.0.1 (2023-08-07)

### Bugs

- Fix state parameter inside of if-statement

## 3.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 2.0.0 (2023-08-04)

### Changes

- Remove default value for parameter `mariadb_root_password`

### Features

- Add parameter `mariadb_nftables_filter_rule`
- Add parameter `mariadb_nftables_state`

## 1.1.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.1.0 (2023-06-25)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.2 (2020-12-20)

### Enhancements

- Modify `textfile_collector` directory path to comply with Linux FHS

## 0.1.1 (2020-12-18)

### Enhancements

- Add `install_recommends` parameter to package tasks

## 0.1.0 (2020-12-17)

### Features

- Initial release
