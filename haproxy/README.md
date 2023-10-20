# haproxy

## Description

HAProxy is a TCP/HTTP reverse proxy which is particularly suited for high
availability environments. Indeed, it can:
- route HTTP requests depending on statically assigned cookies
- spread load among several servers while assuring server persistence
  through the use of HTTP cookies
- switch to backup servers in the event a main server fails
- accept connections to special ports dedicated to service monitoring
- stop accepting connections without breaking existing ones
- add, modify, and delete HTTP headers in both directions
- block requests matching particular patterns
- report detailed status to authenticated users from a URI
  intercepted by the application

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: haproxy
  vars:
    haproxy_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: haproxy
  vars:
    haproxy_state: 'enable'
    haproxy_stats_listen_state: 'enable'
    haproxy_stats_auth
      - {username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7', comment: 'haproxy_exporter'}
    haproxy_config:
      frontend btc
        description btc
        mode tcp
        bind *:8332
        default_backend btc_bitcoind

      backend btc_bitcoind
        description btc_bitcoind
        mode tcp
        balance roundrobin
        server host01 10.10.10.10:8332
        server host02 10.20.10.10:8332
        server host02 10.30.10.10:8332
```

### Disable

```
- hosts: all
  roles:
    - role: haproxy
  vars:
    haproxy_state: 'disable'
    haproxy_stats_listen_state: 'enable'
    haproxy_stats_auth
      - {username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7', comment: 'haproxy_exporter'}
    haproxy_config:
      frontend btc
        description btc
        mode tcp
        bind *:8332
        default_backend btc_bitcoind

      backend btc_bitcoind
        description btc_bitcoind
        mode tcp
        balance roundrobin
        server host01 10.10.10.10:8332
        server host02 10.20.10.10:8332
        server host02 10.30.10.10:8332
```

### Remove

```
- hosts: all
  roles:
    - role: haproxy
  vars:
    haproxy_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: haproxy
  vars:
    haproxy_state: 'inactive'
```

## Parameters

### Role

`haproxy_state`

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

`haproxy_config`

    Description: Define the 'haproxy_config' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        frontend btc
          description btc
          mode tcp
          bind *:8332
          default_backend btc_bitcoind

        backend btc_bitcoind
          description btc_bitcoind
          mode tcp
          balance roundrobin
          server host01 10.10.10.10:8332
          server host02 10.20.10.10:8332
          server host02 10.30.10.10:8332
      None: ''

`haproxy_monitor_monit_state`

    Description: Control the 'haproxy_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`haproxy_nftables_filter_rule`

    Description: Define the 'haproxy_nftables_filter_rule' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 80, 443 } counter accept comment "http, https from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport { 80, 443 } counter accept comment "http, https from unique local addresses"
      add rule ip filter OUTPUT ct state new udp dport { 80, 443 } counter accept comment "http, https to any"
      add rule ip6 filter OUTPUT ct state new udp dport { 80, 443 } counter accept comment "http, https to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport { 80, 443 } counter accept comment "haproxy from internal-networks"
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new udp dport { 80, 443 } counter accept comment "haproxy to internal-networks"

`haproxy_nftables_state`

    Description: Control the 'haproxy_nftables_state' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`haproxy_stats_auth`

    Description: Define the 'haproxy_stats_auth' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{username: 'admin', password: 'vD4.eT6d5PLJu_Ft28q-R.A4J3N,bcWp', comment: 'default admin'},
                 {username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7', comment: 'haproxy_exporter'},
                 {username: 'user', password: 'F2R2T_UgE.LtB-3BEHcQxq98wfr2P-GM', comment: 'default user'}]
      None    : []

`haproxy_stats_defaults_state`

    Description: Control the 'haproxy_stats_defaults_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`haproxy_stats_hide_version`

    Description: Control the 'haproxy_stats_hide_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`haproxy_stats_listen_state`

    Description: Control the 'haproxy_stats_listen_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`haproxy_stats_realm`

    Description: Define the 'haproxy_stats_realm' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'Haproxy\ Statistics'
    Options    :
      Examples: 'Haproxy\ Statistics'
      None    : ''

`haproxy_stats_refresh`

    Description: Set the 'haproxy_stats_refresh' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 5
    Options    :
      Examples: 3 | 5 | 10
      None    : ''

`haproxy_stats_show_desc`

    Description: Define the 'haproxy_stats_show_desc' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'HAProxy Production 01' | 'HAProxy Testing 01'
      None    : ''

`haproxy_stats_show_legends`

    Description: Control the 'haproxy_stats_show_legends' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`haproxy_stats_uri`

    Description: Define the 'haproxy_stats_uri' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/haproxy?stats'
    Options    :
      Examples: '/stats'
      None    : ''

## Conflicts

## Dependencies

### Packages

`haproxy`

    Version: >= 1.8
    Name   :
      Debian 11: 'haproxy'
      Debian 12: 'haproxy'

`openssl`

    Version: >= 1.0
    Name   :
      Debian 11: 'openssl'
      Debian 12: 'openssl'

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
