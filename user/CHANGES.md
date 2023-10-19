# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 3.1.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 3.0.1 (2023-08-07)

### Bugs

- Fix state parameter inside of if-statement

## 3.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 2.0.0 (2023-07-14)

### Changes

- Redesign `authorized_keys` management

### Enhancements

- Add task to manage primary group
- Remove dependency on Ansible role `group`

## 1.1.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.0.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.1.0 (2020-12-10)

### Features

- Initial release
