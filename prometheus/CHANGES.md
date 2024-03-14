# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 2.12.2 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 2.12.1 (2024-03-08)

### Enhancements

- Change title mode from `markdown` to `html` in `node_exporter` dashboard
- Change `info` color in `system_status` dashboard

## 2.12.0 (2024-02-26)

### Bugs

- Update Prometheus to version 2.50.1

## 2.11.0 (2024-02-22)

### Features

- Update Prometheus to version 2.50.0

## 2.10.3 (2024-02-19)

### Bugs

- Fix unit in `node_exporter` memory information

### Enhancements

- Rework and improve `node_exporter` dashboard
- Minor dashboard improvements

## 2.10.2 (2024-02-13)

### Bugs

- Fix variable query regex in `network_traffic` dashboard

## 2.10.1 (2024-02-12)

### Enhancements

- Remove current selection in `network_traffic` dashboard

## 2.10.0 (2024-02-12)

### Changes

- Remove parameter `prometheus_alertmanager_url`
- Remove parameter `prometheus_grafana_url`
- Remove parameter `prometheus_prometheus_url`

### Enhancements

- Rework and improve all built-in dashboards
- Update dashboards to schemaVersion 39
- Migrate visualizations from AngularJS- to React-based plugin platform

### Features

- Add `ipmi_exporter` dashboard

## 2.9.0 (2024-02-10)

### Enhancements

- Add optional YAML document start marker

### Features

- Add support for `ipmi_exporter`

## 2.8.0 (2023-12-09)

### Bugs

- Update Prometheus to version 2.48.1

## 2.7.0 (2023-11-16)

### Bugs

- Update Prometheus to version 2.48.0

## 2.6.0 (2023-10-20)

### Bugs

- Update Prometheus to version 2.47.2

## 2.5.0 (2023-10-19)

### Enhancements

- Minor Ansible style improvements

## 2.4.0 (2023-10-08)

### Bugs

- Update Prometheus to version 2.47.1

## 2.3.0 (2023-09-15)

### Bugs

- Fix alert `CPU 'user' Utilization (60mAVG)`
- Fix source of alert `zfs_scrub-pools`

### Features

- Add alert for script `fstrim_discard-blocks`
- Add alert for script `systemd-timesyncd_check-time`

## 2.2.1 (2023-09-14)

### Bugs

- Fix `zfs_trim-pools` source and title

## 2.2.0 (2023-09-06)

### Features

- Update Prometheus to version 2.47.0

## 2.1.5 (2023-09-01)

### Enhancements

- Add `systemd_timesyncd_check_time_offset` to `Script Status` dashboard

## 2.1.4 (2023-08-15)

### Bugs

- Add missing `prometheus.nft` file variables

## 2.1.3 (2023-08-15)

### Bugs

- Update monit tasks according to different states
- Update nftables tasks according to different states

## 2.1.2 (2023-08-08)

### Bugs

- Do not make `script_status.json` editable
- Fix `chrony_check_time_duration` source

## 2.1.1 (2023-08-08)

### Enhancements

- Do not show legend for heatmaps in `script_status.json`

## 2.1.0 (2023-08-08)

### Enhancements

- Update `script_status.json` schema version from 26 to 38

### Features

- Add graphs for script `chrony_update-time` to `script_status.json`
- Add graphs for script `systemd-timesyncd_check-time` to `script_status.json`
- Add graphs for script `zfs_scrub-pools` to `script_status.json`
- Add graphs for script `zfs_trim-pools` to `script_status.json`

## 2.0.0 (2023-08-06)

### Changes

- Turn string state parameters into boolean

## 1.31.0 (2023-08-05)

### Features

- Add parameter `prometheus_nftables_filter_rule`
- Add parameter `prometheus_nftables_state`

## 1.30.0 (2023-07-26)

### Features

- Update Prometheus to version 2.46.0

## 1.29.0 (2023-06-24)

### Features

- Update Prometheus to version 2.45.0

## 1.28.0 (2023-06-11)

### Features

- Add support for Debian 12 (Bookworm)

## 1.27.0 (2023-05-14)

### Features

- Update Prometheus to version 2.44.0

## 1.26.0 (2023-05-06)

### Bugs

- Update Prometheus to version 2.43.1

## 1.25.2 (2023-04-22)

### Enhancements

- Improve default built-in alerting rules

## 1.25.1 (2023-04-18)

### Enhancements

- Use `daemon_reload` instead of `systemctl daemon-reload` handler

## 1.25.0 (2023-03-22)

### Features

- Update Prometheus to version 2.43.0

## 1.24.0 (2023-02-02)

### Features

- Update Prometheus to version 2.42.0

## 1.23.0 (2022-12-21)

### Features

- Update Prometheus to version 2.41.0

## 1.22.0 (2022-12-14)

### Features

- Update Prometheus to version 2.40.7

## 1.21.0 (2022-12-09)

### Features

- Update Prometheus to version 2.40.6

## 1.20.0 (2022-11-29)

### Features

- Update Prometheus to version 2.40.4

## 1.19.0 (2022-11-25)

### Features

- Update Prometheus to version 2.40.3

## 1.18.0 (2022-11-17)

### Features

- Update Prometheus to version 2.40.2

## 1.17.0 (2022-11-08)

### Features

- Update Prometheus to version 2.40.0

## 1.16.0 (2022-10-10)

### Features

- Update Prometheus to version 2.39.1

## 1.15.0 (2022-10-05)

### Features

- Update Prometheus to version 2.39.0

## 1.14.0 (2022-08-17)

### Features

- Update Prometheus to version 2.38.0

## 1.13.0 (2022-07-21)

### Features

- Update Prometheus to version 2.37.0

## 1.12.0 (2022-06-27)

### Features

- Update Prometheus to version 2.36.2

## 1.11.0 (2022-06-10)

### Features

- Update Prometheus to version 2.36.1

## 1.10.0 (2022-05-30)

### Features

- Update Prometheus to version 2.36.0

## 1.9.1 (2022-04-05)

### Enhancements

- Ensure compatibility with Ansible 2.14.0 and Jinja2 >= 3.0.0

## 1.9.0 (2022-04-22)

### Features

- Update Prometheus to version 2.35.0

## 1.8.0 (2022-03-17)

### Features

- Update Prometheus to version 2.34.0

## 1.7.0 (2022-03-08)

### Features

- Update Prometheus to version 2.33.5

## 1.6.0 (2022-02-23)

### Features

- Update Prometheus to version 2.33.4

## 1.5.0 (2022-02-14)

### Features

- Update Prometheus to version 2.33.3

## 1.4.0 (2022-02-11)

### Features

- Update Prometheus to version 2.33.2

## 1.3.0 (2022-02-02)

### Features

- Update Prometheus to version 2.33.1

## 1.2.0 (2022-01-31)

### Features

- Update Prometheus to version 2.33.0

## 1.1.0 (2021-12-19)

### Features

- Update Prometheus to version 2.32.1

## 1.0.0 (2021-12-18)

### Changes

- Add support for Debian 11 (Bullseye)
- Drop support for Debian 10 (Buster)

## 0.20.0 (2021-12-14)

### Features

- Update Prometheus to version 2.32.0

## 0.19.0 (2021-12-14)

### Features

- Update Prometheus to version 2.31.2

## 0.18.0 (2021-11-06)

### Features

- Update Prometheus to version 2.31.1

## 0.17.0 (2021-11-02)

### Features

- Update Prometheus to version 2.31.0

## 0.16.0 (2021-10-05)

### Features

- Update Prometheus to version 2.30.3

## 0.15.0 (2021-09-14)

### Features

- Update Prometheus to version 2.30.0

## 0.14.0 (2021-08-27)

### Features

- Update Prometheus to version 2.29.2

## 0.13.0 (2021-08-11)

### Features

- Update Prometheus to version 2.29.1

## 0.12.0 (2021-08-11)

### Features

- Update Prometheus to version 2.29.0

## 0.11.0 (2021-07-01)

### Features

- Update Prometheus to version 2.28.1

## 0.10.0 (2021-06-21)

### Features

- Update Prometheus to version 2.28.0

## 0.9.0 (2021-05-12)

### Features

- Update Prometheus to version 2.27.0

## 0.8.0 (2021-04-01)

### Features

- Update Prometheus to version 2.26.0

## 0.7.0 (2021-03-17)

### Features

- Update Prometheus to version 2.25.2

## 0.6.0 (2021-03-15)

### Features

- Update Prometheus to version 2.25.1

## 0.5.0 (2021-02-18)

### Features

- Update Prometheus to version 2.25.0

## 0.4.0 (2021-01-21)

### Features

- Update Prometheus to version 2.24.1

## 0.3.0 (2021-01-07)

### Features

- Update Prometheus to version 2.24.0

## 0.2.1 (2020-12-13)

### Features

- Add alerting rules for `chrony_check-time` and `openntpd_check-time`

## 0.2.0 (2020-12-13)

### Changes

- Remove `dnf_check-update` and `yum_check-update` script status

## 0.1.0 (2020-12-12)

### Features

- Initial release
