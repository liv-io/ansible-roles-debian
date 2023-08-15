# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.0.1 (2023-08-15)

### Bugs

- Update monit tasks according to different states

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.1.0 (2023-06-25)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.2 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.0.0 (2021-12-19)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.0 (2020-12-19)

### Features

- Initial release
