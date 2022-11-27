# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 1.0.1 (2022-11-13)

### Bugs

- Update to latest upstream deb repository URL

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)

### Changes

- Drop support for Debian 10 (Buster)

## 0.1.4 (2020-12-18)

### Enhancements

- Revert to process PID file in Monit check

## 0.1.3 (2020-12-18)

### Bugs

- Use process name pattern matching in Monit check

## 0.1.2 (2020-12-15)

### Enhancements

- Add `install_recommends` parameter to package tasks

## 0.1.1 (2020-12-12)

### Bugs

- Run `apt update` after adding Grafana repository

### Bugs

- Correct `grafana.gpg` file path

## 0.1.0 (2020-12-12)

### Features

- Initial release