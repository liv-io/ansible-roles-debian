# nsd

## Description

NSD (Name Server Daemon) is a complete implementation of an authoritative DNS
nameserver.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: nsd
  vars:
    nsd_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: nsd
  vars:
    nsd_state: 'enable'
    nsd_default_port: 5300
```

### Disable

```
- hosts: all
  roles:
    - role: nsd
  vars:
    nsd_state: 'disable'
    nsd_default_port: 5300
```

### Remove

```
- hosts: all
  roles:
    - role: nsd
  vars:
    nsd_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: nsd
  vars:
    nsd_state: 'inactive'
```

### Config

```
vars:
  nsd_zone:
    - name: 'example.com'
      state: True
      comment: 'example.com zone'
      ttl: 86400
      soa_mname: 'ns01.example.com'
      soa_rname: 'admin.example.com'
      soa_serial: '2018080801'
      soa_refresh: '14400'
      soa_retry: '1800'
      soa_expire: '1209600'
      soa_ttl: '3600'
      records:
        - {name: '@', type: 'NS', value: 'ns01.example.com.'}
        - {name: '@', type: 'NS', value: 'ns02.example.com.'}
        - {name: '@', type: 'MX', value: 'mail01.example.com.', priority: '10'}
        - {name: '@', type: 'MX', value: 'mail02.example.com.', priority: '20'}
        - {name: '@', type: 'A', value: '10.1.1.15'}
        - {name: '@', type: 'A', value: '10.1.1.16'}
        - {name: 'ns01', type: 'A', value: '10.1.1.11'}
        - {name: 'ns02', type: 'A', value: '10.1.1.12'}
        - {name: 'mail01', type: 'A', value: '10.1.1.13'}
        - {name: 'mail02', type: 'A', value: '10.1.1.14'}
        - {name: 'web01', type: 'A', value: '10.1.1.15'}
        - {name: 'web02', type: 'A', value: '10.1.1.16'}
        - {name: 'app01', type: 'A', value: '10.1.1.17'}
        - {name: 'app02', type: 'A', value: '10.1.1.18'}
        - {name: 'app03', type: 'A', value: '10.1.1.19'}
        - {name: 'code', type: 'CNAME', value: 'app01'}
        - {name: 'review', type: 'CNAME', value: 'app02'}
        - {name: 'ticket', type: 'CNAME', value: 'app03'}

    - name: 'example.org'
      state: True
      comment: 'example.org zone'
      ttl: '1d'
      soa_mname: 'ns01.example.org'
      soa_rname: 'admin.example.org'
      soa_serial: '2018080801'
      soa_refresh: '4h'
      soa_retry: '30m'
      soa_expire: '2w'
      soa_ttl: '1h'
      records:
        - {name: '@', type: 'NS', value: 'ns01.example.org.'}
        - {name: '@', type: 'NS', value: 'ns02.example.org.'}
        - {name: '@', type: 'MX', value: 'mail01.example.org.', priority: '10'}
        - {name: '@', type: 'MX', value: 'mail02.example.org.', priority: '20'}
        - {name: '@', type: 'A', value: '192.168.1.15'}
        - {name: '@', type: 'A', value: '192.168.1.16'}
        - {name: 'ns01', type: 'A', value: '192.168.1.11'}
        - {name: 'ns02', type: 'A', value: '192.168.1.12'}
        - {name: 'mail01', type: 'A', value: '192.168.1.13'}
        - {name: 'mail02', type: 'A', value: '192.168.1.14'}
        - {name: 'web01', type: 'A', value: '192.168.1.15'}
        - {name: 'web02', type: 'A', value: '192.168.1.16'}
        - {name: 'app01', type: 'A', value: '192.168.1.17'}
        - {name: 'app02', type: 'A', value: '192.168.1.18'}
        - {name: 'app03', type: 'A', value: '192.168.1.19'}
        - {name: 'code', type: 'CNAME', value: 'app01'}
        - {name: 'review', type: 'CNAME', value: 'app02'}
        - {name: 'ticket', type: 'CNAME', value: 'app03'}
```

## Parameters

### Role

`nsd_state`

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

`nsd_control_enable`

    Description: Control the 'nsd_control_enable' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`nsd_default_port`

    Description: Set the 'nsd_default_port' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 53
    Options    :
      Examples: 53 | 5300

`nsd_hide_identity`

    Description: Control the 'nsd_hide_identity' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`nsd_hide_version`

    Description: Control the 'nsd_hide_version' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`nsd_identity`

    Description: Define the 'nsd_identity' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'ns' | 'dns'
      None    : ''

`nsd_interface`

    Description: Define the 'nsd_interface' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{address: '127.0.0.1', port: '53', comment: 'Localhost'}]
    Options    :
      Examples: [{address: '10.1.1.10', port: '53', comment: 'Network'}] |
                [{address: '0.0.0.0', port: '53', comment: 'Any'}] |
      None    : []

`nsd_ip4_state`

    Description: Control the 'nsd_ip4_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`nsd_ip6_state`

    Description: Control the 'nsd_ip6_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`nsd_monit_state`

    Description: Control the 'nsd_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`nsd_nftables_filter_rule`

    Description: Define the 'nsd_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 53 counter accept comment "dns from internal private addresses"
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new udp dport 53 counter accept comment "dns from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 53 counter accept comment "dns from unique local addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new udp dport 53 counter accept comment "dns from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 53 counter accept comment "dns from internal-networks"
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new udp dport 53 counter accept comment "dns from internal-networks"

`nsd_nftables_state`

    Description: Control the 'nsd_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`nsd_version`

    Description: Define the 'nsd_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '4.0.0' | '4.1.0'
      None    : ''

`nsd_zone`

    Description: Define the 'nsd_zone' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: [{name: 'example.com', comment: 'example.com zone', ttl: 86400,
                  soa_mname: 'ns01.example.com', soa_rname: 'admin.example.com',
                  soa_serial: '2018080801', soa_refresh: '14400',
                  soa_retry: '1800', soa_expire: '1209600', soa_ttl: '3600',
                  records: [{name: '@', type: 'NS', value: 'ns01.example.com.'},
                            {name: '@', type: 'NS', value: 'ns02.example.com.'},
                            {name: '@', type: 'MX', value: 'mail01.example.com.', priority: '10'},
                            {name: '@', type: 'MX', value: 'mail02.example.com.', priority: '20'},
                            {name: '@', type: 'A', value: '10.1.1.15'},
                            {name: '@', type: 'A', value: '10.1.1.16'},
                            {name: 'ns01', type: 'A', value: '10.1.1.11'},
                            {name: 'ns02', type: 'A', value: '10.1.1.12'},
                            {name: 'mail01', type: 'A', value: '10.1.1.13'},
                            {name: 'mail02', type: 'A', value: '10.1.1.14'},
                            {name: 'web01', type: 'A', value: '10.1.1.15'},
                            {name: 'web02', type: 'A', value: '10.1.1.16'},
                            {name: 'app01', type: 'A', value: '10.1.1.17'},
                            {name: 'app02', type: 'A', value: '10.1.1.18'},
                            {name: 'app03', type: 'A', value: '10.1.1.19'},
                            {name: 'code', type: 'CNAME', value: 'app01'},
                            {name: 'review', type: 'CNAME', value: 'app02'},
                            {name: 'ticket', type: 'CNAME', value: 'app03'}]}]
      None    : []

## Conflicts

### Roles

`systemd-resolved`

## Dependencies

### Packages

`nsd`

    Version: >= 4.0
    Name   :
      Debian 12: 'nsd'
      Debian 13: 'nsd'

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
