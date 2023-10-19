# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

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

## 1.2.0 (2023-08-05)

### Features

- Add parameter `unbound_nftables_filter_rule`
- Add parameter `unbound_nftables_state`

## 1.1.0 (2023-06-25)

### Features

- Add support for Debian 12 (Bookworm)
- Add unbound-anchor tasks

### Enhancements

- Improve unbound.conf configuration file

## 1.0.1 (2022-12-14)

### Enhancements

- Minor cosmetic templating change

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.1 (2020-12-18)

### Enhancements

- Add `install_recommends` parameter to package tasks

## 0.1.0 (2020-12-18)

### Features

- Initial release
