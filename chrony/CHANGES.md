# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.1.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 2.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.0.2 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.0.1 (2023-08-15)

### Enhancements

- Overhaul script

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.2.0 (2023-07-31)

### Features

- Add parameter `chrony_nftables_filter_rule`
- Add parameter `chrony_nftables_state`

## 1.1.2 (2023-07-27)

### Enhancements

- Remove unused Ansible tags

## 1.1.1 (2023-06-26)

### Enhancements

- Remove role dependency and add package task instead

## 1.1.0 (2023-06-17)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.3 (2020-12-20)

### Enhancements

- Modify `textfile_collector` directory path to comply with Linux FHS

## 0.1.2 (2020-12-15)

### Enhancements

- Add `install_recommends` parameter to package tasks

## 0.1.1 (2020-12-13)

### Bugs

- Correct PID file path in Monit check

## 0.1.0 (2020-12-13)

### Features

- Initial release
