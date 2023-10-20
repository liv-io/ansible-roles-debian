# grafana

## Description

The tool for beautiful monitoring and metric analytics & dashboards for
Graphite, InfluxDB & Prometheus & More

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: grafana
  vars:
    grafana_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: grafana
  vars:
    grafana_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: grafana
  vars:
    grafana_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: grafana
  vars:
    grafana_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: grafana
  vars:
    grafana_state: 'inactive'
```

## Parameters

### Role

`grafana_state`

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

`grafana_monitor_monit_state`

    Description: Control the 'grafana_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`grafana_nftables_filter_rule`

    Description: Define the 'grafana_nftables_filter_rule' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3100 counter accept comment "grafana from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 3100 counter accept comment "grafana from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 9090 counter accept comment "grafana to prometheus"
      add rule ip6 filter OUTPUT ct state new tcp dport 9090 counter accept comment "grafana to prometheus"
      add rule ip filter OUTPUT ct state new tcp dport 3100 counter accept comment "grafana to loki"
      add rule ip6 filter OUTPUT ct state new tcp dport 3100 counter accept comment "grafana to loki"
      add rule ip filter OUTPUT ct state new tcp dport 9093 counter accept comment "grafana to alertmanager"
      add rule ip6 filter OUTPUT ct state new tcp dport 9093 counter accept comment "grafana to alertmanager"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3100 counter accept comment "grafana from internal private addresses"
        add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 3100 counter accept comment "grafana from unique local addresses"

`grafana_nftables_state`

    Description: Control the 'grafana_nftables_state' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`grafana_plugins_all`

    Description: Define the 'grafana_plugins_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{name: 'camptocamp-prometheus-alertmanager-datasource', state: True, version: 'latest'},
                  {name: 'grafana-piechart-panel', state: True, version: 'latest'},
                  {name: 'grafana-worldmap-panel', state: True, version: 'latest'}]
    Options    :
      Examples: [{name: 'grafana-piechart-panel', state: True, version: 'latest'},
                 {name: 'grafana-clock-panel', state: True, version: '1.0.0'},
                 {name: 'grafana-obsolete', state: False}]
      None    : []

`grafana_plugins_group`

    Description: Define the 'grafana_plugins_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'grafana-piechart-panel', state: True, version: 'latest'},
                 {name: 'grafana-clock-panel', state: True, version: '1.0.0'},
                 {name: 'grafana-obsolete', state: False}]
      None    : []

`grafana_plugins_host`

    Description: Define the 'grafana_plugins_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'grafana-piechart-panel', state: True, version: 'latest'},
                 {name: 'grafana-clock-panel', state: True, version: '1.0.0'},
                 {name: 'grafana-obsolete', state: False}]
      None    : []

`grafana_smtp_from_address`

    Description: Define the 'grafana_smtp_from_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "grafana@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`grafana_smtp_from_name`

    Description: Define the 'grafana_smtp_from_name' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'Grafana'
    Options    :
      Examples: 'Grafana Monitoring' | 'Monitoring'

`grafana_smtp_host`

    Description: Define the 'grafana_smtp_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'localhost' | 'host' | 'host@domain.tld'
      None    : ''

`grafana_smtp_password`

    Description: Define the 'grafana_smtp_password' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '6q7FMh2w-KGskqDX82B.g3E_3r7LgS2F' | '3X5wBEMtx-uJaj5bfCq.EeDT5Qd2eMTh'
      None    : ''

`grafana_smtp_port`

    Description: Set the 'grafana_smtp_port' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String/Integer
    Default    : 25
    Options    :
      Examples: 25 | 465
      None    : ''

`grafana_smtp_state`

    Description: Control the 'grafana_smtp_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`grafana_smtp_user`

    Description: Define the 'grafana_smtp_user' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'username' | 'username@domain.tld'
      None    : ''

## Conflicts

## Dependencies

### Packages

`grafana`

    Version: >= 7.0
    Name   :
      Debian 11: 'grafana'
      Debian 12: 'grafana'

`gnupg1`

    Version: >= 1.0
    Name   :
      Debian 11: 'gnupg1'
      Debian 12: 'gnupg1'

## Parameters

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

    Version: 11
    Version: 12
