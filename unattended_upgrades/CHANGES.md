# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

## 0.3.1 (2024-03-14)

### Bugs

- Fix `monit` and `nftables` check task

## 0.3.0 (2024-02-21)

### Bugs

- Fix comma separation of key/value pairs

### Changes

- Remove `comment` option from `unattended_upgrades_origins_pattern` parameter

### Enhancements

- Use `${distro_id}` as default origin

### Features

- Add parameter `unattended_upgrades_install_on_shutdown`
- Add parameter `unattended_upgrades_only_on_ac_power`
- Add parameter `unattended_upgrades_skip_updates_on_metered_connections`

## 0.2.1 (2024-02-20)

### Bugs

- Add missing `20auto-upgrades` file
- Correct `unattended-upgrades.nft` file destination

### Enhancements

- Explicitly set `InstallOnShutdown` to False
- Explicitly set `OnlyOnACPower` to False
- Explicitly set `Skip-Updates-On-Metered-Connections` to False

## 0.2.0 (2024-02-18)

### Bugs

- Add missing `Unattended-Upgrade::Origins-Pattern` configuration

### Features

- Add parameter `unattended_upgrades_origins_pattern_all`
- Add parameter `unattended_upgrades_origins_pattern_group`
- Add parameter `unattended_upgrades_origins_pattern_host`

## 0.1.1 (2024-02-16)

### Bugs

- Fix Jinja2 comment decoration in template

## 0.1.0 (2024-02-16)

### Features

- Initial release
