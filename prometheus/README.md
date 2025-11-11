# prometheus

## Description

Prometheus, a Cloud Native Computing Foundation project, is a systems and
service monitoring system. It collects metrics from configured targets at given
intervals, evaluates rule expressions, displays the results, and can trigger
alerts if some condition is observed to be true.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: prometheus
  vars:
    prometheus_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: prometheus
  vars:
    prometheus_state: 'enable'
    prometheus_monit_exporter_target_manual_hosts:
      - {address: '10.1.1.11', hostname: 'host01'}
      - {address: '10.1.1.13', hostname: 'host02'}
      - {address: '10.1.1.15', hostname: 'host03'}
    prometheus_node_exporter_target_manual_hosts:
      - {address: '10.1.1.11', hostname: 'host01'}
      - {address: '10.1.1.13', hostname: 'host02'}
      - {address: '10.1.1.15', hostname: 'host03'}
```

### Disable

```
- hosts: all
  roles:
    - role: prometheus
  vars:
    prometheus_state: 'disable'
    prometheus_monit_exporter_target_manual_hosts:
      - {address: '10.1.1.11', hostname: 'host01'}
      - {address: '10.1.1.13', hostname: 'host02'}
      - {address: '10.1.1.15', hostname: 'host03'}
    prometheus_node_exporter_target_manual_hosts:
      - {address: '10.1.1.11', hostname: 'host01'}
      - {address: '10.1.1.13', hostname: 'host02'}
      - {address: '10.1.1.15', hostname: 'host03'}
```

### Remove

```
- hosts: all
  roles:
    - role: prometheus
  vars:
    prometheus_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: prometheus
  vars:
    prometheus_state: 'inactive'
```

## Parameters

### Role

`prometheus_state`

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

`prometheus_alerting_rules`

    Description: Define the 'prometheus_alerting_rules' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        - alert: "Restic Backup Failed"
          expr: restic_run_backup_exit != 0
          for: 30s
          labels:
            severity: warning
          annotations:
            summary: "Restic: Run Backup (script_status)"
            description: "Restic backup failed"
      None    : ''

`prometheus_alertmanager_state`

    Description: Control the 'prometheus_alertmanager_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`prometheus_blackbox_exporter_state`

    Description: Control the 'prometheus_blackbox_exporter_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`prometheus_blackbox_exporter_http_ip4_basic_manual_hosts`

    Description: Define the 'prometheus_blackbox_exporter_http_ip4_basic_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: 'https://host01.domain.tld', hostname: 'host01'},
                 {address: 'https://host02.domain.tld', hostname: 'host02'},
                 {address: 'https://host03.domain.tld', hostname: 'host03'}]
      None    : []

`prometheus_blackbox_exporter_icmp_ip4_ansible_groups`

    Description: Define the 'prometheus_blackbox_exporter_icmp_ip4_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_blackbox_exporter_icmp_ip4_manual_hosts`

    Description: Define the 'prometheus_blackbox_exporter_icmp_ip4_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_builtin_dashboards_state`

    Description: Control the 'prometheus_builtin_dashboards_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`prometheus_global_evaluation_interval`

    Description: Define the 'prometheus_global_evaluation_interval' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '15s'
    Options    :
      Examples: '15s' | '30s' | '60s'

`prometheus_global_scrape_interval`

    Description: Define the 'prometheus_global_scrape_interval' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '15s'
    Options    :
      Examples: '15s' | '30s' | '60s'

`prometheus_haproxy_exporter_target_ansible_groups`

    Description: Define the 'prometheus_haproxy_exporter_target_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_haproxy_exporter_target_manual_hosts`

    Description: Define the 'prometheus_haproxy_exporter_target_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_ipmi_exporter_target_ansible_groups`

    Description: Define the 'prometheus_ipmi_exporter_target_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_ipmi_exporter_target_manual_hosts`

    Description: Define the 'prometheus_ipmi_exporter_target_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_monit_exporter_target_ansible_groups`

    Description: Define the 'prometheus_monit_exporter_target_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : ['all']
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_monit_exporter_target_manual_hosts`

    Description: Define the 'prometheus_monit_exporter_target_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_monit_state`

    Description: Control the 'prometheus_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`prometheus_mysqld_exporter_target_ansible_groups`

    Description: Define the 'prometheus_mysqld_exporter_target_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_mysqld_exporter_target_manual_hosts`

    Description: Define the 'prometheus_mysqld_exporter_target_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_nftables_filter_rule`

    Description: Define the 'prometheus_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 9090 counter accept comment "prometheus from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9090 counter accept comment "prometheus from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 9100 counter accept comment "node_exporter to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9100 counter accept comment "node_exporter to any"
      add rule ip filter OUTPUT ct state new tcp dport 9101 counter accept comment "haproxy_exporter to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9101 counter accept comment "haproxy_exporter to any"
      add rule ip filter OUTPUT ct state new tcp dport 9104 counter accept comment "mysqld_exporter to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9104 counter accept comment "mysqld_exporter to any"
      add rule ip filter OUTPUT ct state new tcp dport 9115 counter accept comment "blackbox_exporter to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9115 counter accept comment "blackbox_exporter to any"
      add rule ip filter OUTPUT ct state new tcp dport 9388 counter accept comment "monit_exporter to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 9388 counter accept comment "monit_exporter to any"
      add rule ip filter OUTPUT ct state new tcp dport 12798 counter accept comment "cardano_node_exporter to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 12798 counter accept comment "cardano_node_exporter to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 9090 counter accept comment "prometheus from internal-networks"
        add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9090 counter accept comment "prometheus from unique local addresses"
        add rule ip filter OUTPUT ct state new tcp dport 9100 counter accept comment "node_exporter to any"
        add rule ip6 filter OUTPUT ct state new tcp dport 9100 counter accept comment "node_exporter to any"
        add rule ip filter OUTPUT ct state new tcp dport 9101 counter accept comment "haproxy_exporter to any"
        add rule ip6 filter OUTPUT ct state new tcp dport 9101 counter accept comment "haproxy_exporter to any"
        add rule ip filter OUTPUT ct state new tcp dport 9104 counter accept comment "mysqld_exporter to any"
        add rule ip6 filter OUTPUT ct state new tcp dport 9104 counter accept comment "mysqld_exporter to any"
        add rule ip filter OUTPUT ct state new tcp dport 9115 counter accept comment "blackbox_exporter to any"
        add rule ip6 filter OUTPUT ct state new tcp dport 9115 counter accept comment "blackbox_exporter to any"
        add rule ip filter OUTPUT ct state new tcp dport 9388 counter accept comment "monit_exporter to any"
        add rule ip6 filter OUTPUT ct state new tcp dport 9388 counter accept comment "monit_exporter to any"
        add rule ip filter OUTPUT ct state new tcp dport 12798 counter accept comment "cardano_node_exporter to any"
        add rule ip6 filter OUTPUT ct state new tcp dport 12798 counter accept comment "cardano_node_exporter to any"

`prometheus_nftables_state`

    Description: Control the 'prometheus_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`prometheus_node_exporter_target_ansible_groups`

    Description: Define the 'prometheus_node_exporter_target_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : ['all']
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_node_exporter_target_manual_hosts`

    Description: Define the 'prometheus_node_exporter_target_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_smokeping_prober_state`

    Description: Control the 'prometheus_smokeping_prober_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`prometheus_smokeping_prober_target_ansible_groups`

    Description: Define the 'prometheus_smokeping_prober_target_ansible_groups' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: ['all'] | ['group01', 'group02', 'group03']
      None    : []

`prometheus_smokeping_prober_target_manual_hosts`

    Description: Define the 'prometheus_smokeping_prober_target_manual_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: '10.1.1.11', hostname: 'host01'},
                 {address: '10.1.1.13', hostname: 'host02'},
                 {address: '10.1.1.15', hostname: 'host03'}]
      None    : []

`prometheus_storage_tsdb_retention_time`

    Description: Define the 'prometheus_storage_tsdb_retention_time' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '365d'
    Options    :
      Examples: '90d' | '180d' | '365d' | '10y'

`prometheus_version`

    Description: Define the 'prometheus_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '3.7.3'
    Options    :
      Examples: '2.6.1' | '2.6.0'

## Conflicts

## Dependencies

### Archives

`prometheus`

### Roles

`alertmanager`

`blackbox_exporter`

`grafana`

`smokeping_prober`

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
