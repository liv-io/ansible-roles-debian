# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.28.4-1-3 (2025-11-10)

### Changes

- Rename parameter from `pod_step_ca_monitor_monit_state` to `pod_step_ca_monit_state`

## 0.28.4-1-3 (2025-11-03)

### Enhancements

- Improve monit check by using HTTPS instead of TCP and specifying the `/health` endpoint

## 0.28.4-1-2 (2025-11-02)

### Bugs

- Fix monit process check

## 0.28.4-1-1 (2025-11-02)

### Features

- Initial release
