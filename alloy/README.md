# alloy

## Description

Grafana Alloy combines the strengths of the leading collectors into one place. Whether observing applications, infrastructure, or both, Grafana Alloy can collect, process, and export telemetry signals to scale and future-proof your observability approach.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: alloy
  vars:
    alloy_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: alloy
  vars:
    alloy_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: alloy
  vars:
    alloy_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: alloy
  vars:
    alloy_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: alloy
  vars:
    alloy_state: 'inactive'
```

## Parameters

### Role

`alloy_state`

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

`alloy_monit_state`

    Description: Control the 'alloy_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`alloy_nftables_filter_rule`

    Description: Define the 'alloy_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 1514 counter accept comment "alloy from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 1514 counter accept comment "alloy from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 1514 counter accept comment "alloy from internal-networks"

`alloy_nftables_state`

    Description: Control the 'alloy_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`alloy_version`

    Description: Define the 'alloy_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '1.18.1'
    Options    :
      Examples: '1.16.3' | '1.17.0'

## Conflicts

## Dependencies

### Archives

`alloy`

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
