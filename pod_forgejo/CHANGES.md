# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 13.0.1-1 (2025-10-20)

### Bugs

- Update pod_forgejo_forgejo_version from 13.0.0-1 to 13.0.1-1

## 13.0.0-1 (2025-10-17)

### Features

- Update pod_forgejo_forgejo_version from 12.0.4-1 to 13.0.0-1

## 12.0.4-1 (2025-09-21)

### Bugs

- Update pod_forgejo_forgejo_version from 12.0.3-1 to 12.0.4-1

## 12.0.3-1 (2025-09-08)

### Bugs

- Update pod_forgejo_forgejo_version from 12.0.2-1 to 12.0.3-1

## 12.0.2-1 (2025-09-01)

### Bugs

- Update pod_forgejo_forgejo_version from 12.0.1-1 to 12.0.2-1

## 12.0.1-2 (2025-08-10)

### Changes

- Add support for Debian 13 (Trixie)
- Drop support for Debian 11 (Bullseye)

## 12.0.1-1 (2025-07-28)

### Bugs

- Update pod_forgejo_forgejo_version from 12.0.0-1 to 12.0.1-1

## 12.0.0-1 (2025-07-18)

### Bugs

- Update pod_forgejo_forgejo_version from 11.0.3-1 to 12.0.0-1

## 11.0.3-1 (2025-07-14)

### Bugs

- Update pod_forgejo_forgejo_version from 11.0.2-1 to 11.0.3-1

## 11.0.2-1 (2025-06-20)

### Bugs

- Update pod_forgejo_forgejo_version from 11.0.1-1 to 11.0.2-1

## 11.0.1-1 (2025-05-07)

### Bugs

- Update pod_forgejo_forgejo_version from 11.0.0-1 to 11.0.1-1

## 11.0.0-1 (2025-04-20)

### Features

- Update pod_forgejo_forgejo_version from 10.0.3-1 to 11.0.0-1

## 10.0.3-1 (2025-03-24)

### Bugs

- Update pod_forgejo_forgejo_version from 10.0.2-1 to 10.0.3-1

## 10.0.2-1 (2025-03-22)

### Bugs

- Update pod_forgejo_forgejo_version from 10.0.1-1 to 10.0.2-1

## 1.2.1 (2025-02-10)

### Features

- Update pod_forgejo_forgejo_version from 10.0.0-1 to 10.0.1-1

## 1.2.0 (2025-02-07)

### Features

- Update pod_forgejo_forgejo_version from 9.0.2-1 to 10.0.0-1

## 1.1.2 (2024-11-15)

### Bugs

- Update pod_forgejo_forgejo_version from 9.0.1-1 to 9.0.2-1

## 1.1.1 (2024-10-31)

### Bugs

- Update pod_forgejo_forgejo_version from 9.0.0-1 to 9.0.1-1

## 1.1.0 (2024-10-17)

### Features

- Update pod_forgejo_forgejo_version from 8.0.3-1 to 9.0.0-1

## 1.0.0 (2024-10-07)

### Changes

- Remove parameter `pod_forgejo_forgejo_config`
- Remove parameter `pod_forgejo_forgejo_custom_path`
- Remove parameter `pod_forgejo_forgejo_install_port`
- Remove parameter `pod_forgejo_forgejo_pid`
- Remove parameter `pod_forgejo_forgejo_port`
- Remove parameter `pod_forgejo_forgejo_work_path`

### Features

- Add parameter `pod_forgejo_forgejo_environment_variables`

## 0.8.2 (2024-09-11)

### Bugs

- Update pod_forgejo_forgejo_version from 8.0.2-1 to 8.0.3-1

## 0.8.1 (2024-09-05)

### Bugs

- Update pod_forgejo_forgejo_version from 8.0.0-1 to 8.0.2-1

## 0.8.0 (2024-08-06)

### Bugs

- Update pod_forgejo_forgejo_version from 7.0.5-1 to 8.0.0-1

## 0.7.1 (2024-07-03)

### Bugs

- Update pod_forgejo_forgejo_version from 7.0.3-1 to 7.0.5-1

## 0.7.0 (2024-05-28)

### Changes

- Update pod_forgejo_forgejo_version from 1.21.11-1-1 to 7.0.3-1

## 0.6.1 (2024-04-23)

### Bugs

- Correct sudo configuration

## 0.6.0 (2024-04-23)

### Changes

- Run Podman containers in rootful mode (permission denied issues in rootless mode)

## 0.5.7 (2024-04-21)

### Bugs

- Update pod_forgejo_forgejo_version from 1.21.8-0-1 to 1.21.11-1-1

## 0.5.6 (2024-03-25)

### Bugs

- Update pod_forgejo_forgejo_version from 1.21.7-0-1 to 1.21.8-0-1

## 0.5.5 (2024-03-22)

### Bugs

- Use slirp4netns (rootless / user-mode networking) for port handling

## 0.5.4 (2024-03-19)

### Bugs

- Add writable `/tmp` directory as tmpfs

## 0.5.3 (2024-03-13)

### Bugs

- Update pod_forgejo_forgejo_version from 1.21.6-0-1 to 1.21.7-0-1

## 0.5.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.5.1 (2024-02-23)

### Bugs

- Update pod_forgejo_forgejo_version from 1.21.5-0-1 to 1.21.6-0-1

## 0.5.0 (2024-02-02)

### Features

- Add clean Git SSH support

## 0.4.1 (2024-02-02)

### Enhancements

- Minor task order improvement

## 0.4.0 (2024-02-01)

### Bugs

- Update pod_forgejo_forgejo_version from 1.21.4-0-2 to 1.21.5-0-1

### Enhancements

- Download latest container image release before stopping container

## 0.3.0 (2024-01-30)

### Features

- Add parameter `pod_forgejo_nftables_filter_rule`
- Add parameter `pod_forgejo_nftables_state`

## 0.2.0 (2024-01-28)

### Features

- Add rudimentary Git SSH support

## 0.1.0 (2024-01-24)

### Features

- Initial release
