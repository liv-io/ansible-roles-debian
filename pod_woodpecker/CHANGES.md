# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 3.7.0-1 (2025-06-07)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.6.0-1 to 3.7.0-1
- Update pod_woodpecker_woodpecker_server_version from 3.6.0-1 to 3.7.0-1

## 3.6.0-1 (2025-04-16)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.5.2-1 to 3.6.0-1
- Update pod_woodpecker_woodpecker_server_version from 3.5.2-1 to 3.6.0-1

## 3.5.2-1 (2025-04-16)

### Bugs

- Update pod_woodpecker_woodpecker_agent_version from 3.5.1-1 to 3.5.2-1
- Update pod_woodpecker_woodpecker_server_version from 3.5.1-1 to 3.5.2-1

## 3.5.1-1 (2025-04-04)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.4.0-2 to 3.5.1-1
- Update pod_woodpecker_woodpecker_server_version from 3.4.0-1 to 3.5.1-1

## 3.4.0-2 (2025-04-01)

### Enhancements

- Update pod_woodpecker_woodpecker_agent_version from 3.4.0-1 to 3.4.0-2

## 3.4.0-1 (2025-03-18)

### Changes

- Change versioning

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.3.0-1 to 3.4.0-1
- Update pod_woodpecker_woodpecker_server_version from 3.3.0-1 to 3.4.0-1

## 1.4.0 (2025-03-04)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.2.0-1 to 3.3.0-1
- Update pod_woodpecker_woodpecker_server_version from 3.2.0-1 to 3.3.0-1

## 1.3.0 (2025-02-27)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.0.1-2 to 3.2.0-1
- Update pod_woodpecker_woodpecker_server_version from 3.0.1-1 to 3.2.0-1

## 1.2.1 (2025-02-22)

### Enhancements

- Update pod_woodpecker_woodpecker_agent_version from 3.1.0-1 to 3.1.0-2

## 1.2.0 (2025-02-13)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 3.0.1-1 to 3.1.0-1
- Update pod_woodpecker_woodpecker_server_version from 3.0.1-1 to 3.1.0-1

## 1.1.1 (2025-01-20)

### Bugs

- Update pod_woodpecker_woodpecker_agent_version from 3.0.0-1 to 3.0.1-1
- Update pod_woodpecker_woodpecker_server_version from 3.0.0-1 to 3.0.1-1

## 1.1.0 (2025-01-19)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.8.3-2 to 3.0.0-1
- Update pod_woodpecker_woodpecker_server_version from 2.8.3-2 to 3.0.0-1
- Add CA certificate directory for woodpecker-agent container

## 1.0.0 (2025-01-16)

### Changes

- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_agent_secret`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_api_version`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_cert_path`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_enable_ipv6`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_host`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_network`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_tls_verify`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_volumes`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_backend_local_temp_dir`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_grpc_secure`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_grpc_verify`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_healthcheck`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_healthcheck_addr`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_hostname`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_log_level`
- Remove parameter `pod_woodpecker_woodpecker_agent_woodpecker_server`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_admin`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_agent_secret`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_backend_http_proxy`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_backend_https_proxy`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_backend_no_proxy`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_github`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_github_client`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_github_secret`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_github_url`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_grpc_addr`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_grpc_secret`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_host`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_log_level`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_metrics_server_addr`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_open`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_orgs`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_repo_owners`
- Remove parameter `pod_woodpecker_woodpecker_server_woodpecker_server_addr`

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.8.3-1 to 2.8.3-2
- Update pod_woodpecker_woodpecker_server_version from 2.8.3-1 to 2.8.3-2
- Add parameter `pod_woodpecker_woodpecker_agent_variables`
- Add parameter `pod_woodpecker_woodpecker_server_variables`

## 0.9.1 (2025-01-12)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.8.2-1 to 2.8.3-1
- Update pod_woodpecker_woodpecker_server_version from 2.8.2-1 to 2.8.3-1

## 0.9.0 (2025-01-11)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.7.1-1 to 2.8.2-1
- Update pod_woodpecker_woodpecker_server_version from 2.7.1-1 to 2.8.2-1

## 0.8.2 (2024-09-16)

### Bugs

- Update pod_woodpecker_woodpecker_agent_version from 2.7.0-2 to 2.7.1-1
- Update pod_woodpecker_woodpecker_server_version from 2.7.0-1 to 2.7.1-1

## 0.8.1 (2024-07-26)

### Enhancements

- Update pod_woodpecker_woodpecker_agent_version from 2.7.0-1 to 2.7.0-2

## 0.8.0 (2024-07-22)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.6.0-3 to 2.7.0-1
- Update pod_woodpecker_woodpecker_server_version from 2.6.0-1 to 2.7.0-1

## 0.7.1 (2024-07-14)

### Enhancements

- Update pod_woodpecker_woodpecker_agent_version from 2.6.0-1 to 2.6.0-3

## 0.7.0 (2024-06-14)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.5.0-1 to 2.6.0-1
- Update pod_woodpecker_woodpecker_server_version from 2.5.0-1 to 2.6.0-1

## 0.6.0 (2024-05-02)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.4.1-1 to 2.5.0-1
- Update pod_woodpecker_woodpecker_server_version from 2.4.1-1 to 2.5.0-1

## 0.5.0 (2024-04-23)

### Changes

- Run Podman containers in rootful mode (permission denied issues in rootless mode)

## 0.4.0 (2024-03-23)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.3.0-1 to 2.4.1-1
- Update pod_woodpecker_woodpecker_server_version from 2.3.0-1 to 2.4.1-1

## 0.3.3 (2024-03-22)

### Bugs

- Use slirp4netns (rootless / user-mode networking) for port handling

## 0.3.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.3.1 (2024-02-02)

### Enhancements

- Explicitly use `podman pod` command

## 0.3.0 (2024-01-31)

### Features

- Update pod_woodpecker_woodpecker_agent_version from 2.2.2-3 to 2.3.0-1
- Update pod_woodpecker_woodpecker_server_version from 2.2.2-2 to 2.3.0-1

## 0.2.0 (2024-01-30)

### Features

- Add parameter `pod_woodpecker_nftables_filter_rule`
- Add parameter `pod_woodpecker_nftables_state`

## 0.1.5 (2024-01-28)

### Enhancements

- Update pod_woodpecker_woodpecker_agent_version from 2.2.2-2 to 2.2.2-3

## 0.1.4 (2024-01-24)

### Enhancements

- Update pod_woodpecker_woodpecker_agent_version from 2.2.2-1 to 2.2.2-2
- Update pod_woodpecker_woodpecker_server_version from 2.2.2-1 to 2.2.2-2

## 0.1.3 (2024-01-22)

### Changes

- Update pod_woodpecker_woodpecker_agent_version from 2.1.1-5 to 2.2.2-1
- Update pod_woodpecker_woodpecker_server_version from 2.1.1-6 to 2.2.2-1

## 0.1.2 (2024-01-02)

### Changes

- Change parameter `pod_woodpecker_woodpecker_server_woodpecker_admin` from array to string
- Update pod_woodpecker_woodpecker_server_version from 2.1.1-1 to 2.1.1-2

### Features

- Add parameter `pod_woodpecker_woodpecker_server_woodpecker_environment` (--environment | WOODPECKER_ENVIRONMENT)

## 0.1.1 (2024-01-02)

### Enhancements

- Set `no_log` to True
- User and group is not a `system account`

## 0.1.0 (2024-01-02)

### Features

- Initial release
