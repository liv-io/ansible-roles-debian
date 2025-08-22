# unattended_upgrades

## Description

automatic installation of security upgrades

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: unattended_upgrades
  vars:
    unattended_upgrades_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: unattended_upgrades
  vars:
    unattended_upgrades_state: 'enable'
    unattended_upgrades_automatic_reboot_time_hour: '03'
    unattended_upgrades_origins_pattern_host: [{site: 'apt.grafana.com'}]
```

### Disable

```
- hosts: all
  roles:
    - role: unattended_upgrades
  vars:
    unattended_upgrades_state: 'disable'
    unattended_upgrades_automatic_reboot_time_hour: '03'
    unattended_upgrades_origins_pattern_host: [{site: 'apt.grafana.com'}]
```

### Remove

```
- hosts: all
  roles:
    - role: unattended_upgrades
  vars:
    unattended_upgrades_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: unattended_upgrades
  vars:
    unattended_upgrades_state: 'inactive'
```

## Parameters

### Role

`unattended_upgrades_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Enable  : 'start' | 'on' | 'enable'
      Disable : 'stop' | 'off' | 'disable'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`unattended_upgrades_automatic_reboot`

    Description: Control the 'unattended_upgrades_automatic_reboot' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unattended_upgrades_automatic_reboot_time_hour`

    Description: Set the 'unattended_upgrades_automatic_reboot_time_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{24|random(seed=ansible_default_ipv4.macaddress)}}"
    Options    :
      Examples: '00' | '1' | '06' | '12' | '24'

`unattended_upgrades_automatic_reboot_time_minute`

    Description: Set the 'unattended_upgrades_automatic_reboot_time_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{59|random(seed=ansible_default_ipv4.macaddress)}}"
    Options    :
      Examples: '00' | '1' | '30' | '59'

`unattended_upgrades_automatic_reboot_with_users`

    Description: Control the 'unattended_upgrades_automatic_reboot_with_users' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unattended_upgrades_install_on_shutdown`

    Description: Control the 'unattended_upgrades_install_on_shutdown' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unattended_upgrades_monitor_monit_state`

    Description: Control the 'unattended_upgrades_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unattended_upgrades_nftables_filter_rule`

    Description: Define the 'unattended_upgrades_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 80, 443 } counter accept comment "http, https from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport { 80, 443 } counter accept comment "http, https from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport { 80, 443 } counter accept comment "http, https from internal-networks"

`unattended_upgrades_nftables_state`

    Description: Control the 'unattended_upgrades_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unattended_upgrades_only_on_ac_power`

    Description: Control the 'unattended_upgrades_only_on_ac_power' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unattended_upgrades_origins_pattern_all`

    Description: Define the 'unattended_upgrades_origins_pattern_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : Hash
    Default    : [{origin: '${distro_id}', codename: '${distro_codename}'},
                  {origin: '${distro_id}', codename: '${distro_codename}-updates'},
                  {origin: '${distro_id}', codename: '${distro_codename}-security'},
                  {origin: '${distro_id}', codename: '${distro_codename}-backports'}]
    Options    :
      Examples: [{site: 'packages.gopass.pw'}, {site: 'apt.grafana.com'}]
      None    : []

`unattended_upgrades_origins_pattern_group`

    Description: Define the 'unattended_upgrades_origins_pattern_group' option.
    Required   : False
    Value      : Arbitrary
    Type       : Hash
    Default    : []
    Options    :
      Examples: [{site: 'packages.gopass.pw'}, {site: 'apt.grafana.com'}]
      None    : []

`unattended_upgrades_origins_pattern_host`

    Description: Define the 'unattended_upgrades_origins_pattern_host' option.
    Required   : False
    Value      : Arbitrary
    Type       : Hash
    Default    : []
    Options    :
      Examples: [{site: 'packages.gopass.pw'}, {site: 'apt.grafana.com'}]
      None    : []

`unattended_upgrades_remove_new_unused_dependencies`

    Description: Control the 'unattended_upgrades_remove_new_unused_dependencies' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unattended_upgrades_remove_unused_dependencies`

    Description: Control the 'unattended_upgrades_remove_unused_dependencies' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unattended_upgrades_remove_unused_kernel_packages`

    Description: Control the 'unattended_upgrades_remove_unused_kernel_packages' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unattended_upgrades_skip_updates_on_metered_connections`

    Description: Control the 'unattended_upgrades_skip_updates_on_metered_connections' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`unattended-upgrades`

    Version: >= 2.0
    Name   :
      Debian 12: 'unattended-upgrades'
      Debian 13: 'unattended-upgrades'

## Requirements

### Control Node

`ansible`

    Version: >= 2.15.0

### Managed Node

`python`

    Version: >= 3.10.0

## Support

### Operating Systems

`debian`

    Version: 12
    Version: 13
