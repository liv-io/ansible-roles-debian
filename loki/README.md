# loki

## Description

Loki is a horizontally scalable, highly available, multi-tenant log aggregation
system inspired by Prometheus. It is designed to be very cost-effective and
easy to operate. It does not index the contents of the logs, but rather a set of
labels for each log stream.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: loki
  vars:
    loki_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: loki
  vars:
    loki_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: loki
  vars:
    loki_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: loki
  vars:
    loki_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: loki
  vars:
    loki_state: 'inactive'
```

## Parameters

### Role

`loki_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
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

`loki_alertmanager_state`

    Description: Control the 'loki_alertmanager_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`loki_monitor_monit_state`

    Description: Control the 'loki_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`loki_nftables_filter_rule`

    Description: Define the 'loki_nftables_filter_rule' option.
    Implemented: 1.11.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 3100, 9095 } counter accept comment "loki from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport { 3100, 9095 } counter accept comment "loki from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport { 3100, 9095 } counter accept comment "loki from internal-networks"

`loki_nftables_state`

    Description: Control the 'loki_nftables_state' option.
    Implemented: 1.11.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`loki_retention_period`

    Description: Define the 'loki_retention_period' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '365d'
    Options    :
      Examples: '120h' | '180d' | '365d' | '10y'

`loki_version`

    Description: Define the 'loki_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '2.8.4'
    Options    :
      Examples: '1.5.0' | '1.6.0'

## Conflicts

## Dependencies

### Archives

`loki`

### Packages

`unzip`

    Version: >= 6.0
    Name   :
      Debian 11: 'unzip'
      Debian 12: 'unzip'

### Roles

`alertmanager`

`grafana`

## Parameters

## Requirements

### Control Node

`ansible`

    Version: >= 2.8.0

### Managed Node

`python`

    Version: >= 2.7.0

## Support

### Operating Systems

`debian`

    Version: 11
    Version: 12
