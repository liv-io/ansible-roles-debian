# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.3.0 (2024-01-31)

### Features

- Update `pod_woodpecker_woodpecker_agent_version` from 2.2.2-3 to 2.3.0-1
- Update `pod_woodpecker_woodpecker_server_version` from 2.2.2-2 to 2.3.0-1

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_woodpecker_nftables_filter_rule`
- Add parameter `pod_woodpecker_nftables_state`

## 0.1.5 (2024-01-28)

### Enhancements

- Update `pod_woodpecker_woodpecker_agent_version` from 2.2.2-2 to 2.2.2-3

## 0.1.4 (2024-01-24)

### Enhancements

- Update `pod_woodpecker_woodpecker_agent_version` from 2.2.2-1 to 2.2.2-2
- Update `pod_woodpecker_woodpecker_server_version` from 2.2.2-1 to 2.2.2-2

## 0.1.3 (2024-01-22)

### Changes

- Update `pod_woodpecker_woodpecker_agent_version` from 2.1.1-5 to 2.2.2-1
- Update `pod_woodpecker_woodpecker_server_version` from 2.1.1-6 to 2.2.2-1

## 0.1.2 (2024-01-02)

### Changes

- Change parameter `pod_woodpecker_woodpecker_server_woodpecker_admin` from array to string
- Update `pod_woodpecker_woodpecker_server_version` from 2.1.1-1 to 2.1.1-2

### Features

- Add parameter `pod_woodpecker_woodpecker_server_woodpecker_environment` (--environment | WOODPECKER_ENVIRONMENT)

## 0.1.1 (2024-01-02)

### Enhancements

- Set `no_log` to True
- User and group is not a `system account`

## 0.1.0 (2024-01-02)

### Features

- Initial release
