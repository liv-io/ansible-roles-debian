# monit_exporter

## Description

monit_exporter periodically scrapes the monit status and provides its data via
HTTP to Prometheus.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: monit_exporter
  vars:
    monit_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: monit_exporter
  vars:
    monit_exporter_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: monit_exporter
  vars:
    monit_exporter_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: monit_exporter
  vars:
    monit_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: monit_exporter
  vars:
    monit_exporter_state: 'inactive'
```

## Parameters

### Role

`monit_exporter_state`

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

`monit_exporter_monitor_monit_state`

    Description: Control the 'monit_exporter_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`monit_exporter_nftables_state`

    Description: Control the 'monit_exporter_nftables_state' option.
    Implemented: 1.3.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`monit_exporter_nftables_filter_rule`

    Description: Define the 'monit_exporter_nftables_filter_rule' option.
    Implemented: 1.3.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 9388 counter accept comment "monit_exporter from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9388 counter accept comment "monit_exporter from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr { 10.0.0.0/8 } ct state new tcp dport 9388 counter accept comment "monit_exporter from internal-networks"

`monit_exporter_version`

    Description: Define the 'monit_exporter_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.2.0'
    Options    :
      Examples: '0.0.1' | '0.0.2'

## Conflicts

## Dependencies

### Archives

`monit_exporter`

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
