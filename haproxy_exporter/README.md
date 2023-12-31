# haproxy_exporter

## Description

Simple server that scrapes HAProxy stats and exports them via HTTP for
Prometheus consumption.

For proper functioning please also define the following settings in HAProxy:

```
vars:
  haproxy_stats_listen_state: 'enable'
  haproxy_stats_auth:
    - username: 'haproxy_exporter'
      password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'
      comment: 'haproxy_exporter'
```

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'enable'
    haproxy_exporter_haproxy_scrape_uri:
      - {address: 'localhost', port: '9000', uri: '/haproxy?stats;csv', username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}
```

### Disable

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'disable'
    haproxy_exporter_haproxy_scrape_uri:
      - {address: 'localhost', port: '9000', uri: '/haproxy?stats;csv', username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}
```

### Remove

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'inactive'
```

## Parameters

### Role

`haproxy_exporter_state`

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

`haproxy_exporter_haproxy_scrape_uri`

    Description: Define the 'haproxy_exporter_haproxy_scrape_uri' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}] }
                [{address: 'localhost', port: '80', uri: '/admin?stats;csv', username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}]
      None    : []

`haproxy_exporter_monitor_monit_state`

    Description: Control the 'haproxy_exporter_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`haproxy_exporter_nftables_filter_rule`

    Description: Define the 'haproxy_exporter_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 9101 counter accept comment "haproxy_exporter from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9101 counter accept comment "haproxy_exporter from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 9101 counter accept comment "haproxy_exporter from internal-networks"

`haproxy_exporter_nftables_state`

    Description: Control the 'haproxy_exporter_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`haproxy_exporter_version`

    Description: Define the 'haproxy_exporter_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.14.0'
    Options    :
      Examples: '0.8.0' | '0.9.0'

## Conflicts

## Dependencies

### Packages

`haproxy_exporter`

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
