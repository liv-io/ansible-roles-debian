# CHANGES

This file lists changes made to the Ansible role. It follows semantic versioning
guidelines. The content is sorted in reverse chronological order and formatted
to allow easy grepping by scripts.

The headers are:
- bugs
- changes
- enhancements
- features

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
