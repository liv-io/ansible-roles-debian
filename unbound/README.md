# unbound

## Description

Unbound is designed as a set of modular components, so that also DNSSEC (secure
DNS) validation and stub-resolvers (that do not run as a server, but are linked
into an application) are easily possible.

The root name server information is updated on a regular basis. Source:
https://www.internic.net/domain/named.root

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: unbound
  vars:
    unbound_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: unbound
  vars:
    unbound_state: 'enable'
    unbound_do_not_query_localhost: False
    unbound_local_zone:
      - {zone: '10.in-addr.arpa.', type: 'nodefault', comment: 'Enable reverse lookup for 10.0.0.0/8'}
    unbound_stub_zone:
     - {name: 'example.com', address: '127.0.0.1', port: '5300', comment: 'example.com'}
     - {name: 'example.org', address: '127.0.0.1', port: '5300', comment: 'example.org'}
```

### Disable

```
- hosts: all
  roles:
    - role: unbound
  vars:
    unbound_state: 'disable'
    unbound_do_not_query_localhost: False
    unbound_local_zone:
      - {zone: '10.in-addr.arpa.', type: 'nodefault', comment: 'Enable reverse lookup for 10.0.0.0/8'}
    unbound_stub_zone:
     - {name: 'example.com', address: '127.0.0.1', port: '5300', comment: 'example.com'}
     - {name: 'example.org', address: '127.0.0.1', port: '5300', comment: 'example.org'}
```

### Remove

```
- hosts: all
  roles:
    - role: unbound
  vars:
    unbound_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: unbound
  vars:
    unbound_state: 'inactive'
```

## Parameters

### Role

`unbound_state`

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

`unbound_access_control`

    Description: Define the 'unbound_access_control' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{address: '127.0.0.1', action: 'allow', comment: 'IP4 localhost'},
                  {address: '0.0.0.0/0', action: 'refuse', comment: 'IP4 any'}]
    Options    :
      Examples: [{address: '127.0.0.1', action: 'allow', comment: 'IP4 localhost'},
                 {address: '0.0.0.0/0', action: 'refuse', comment: 'IP4 any'},
                 {address: '192.168.0.0/16', action: 'allow', comment: 'Private address space (RFC1918)'},
                 {address: '172.16.0.0/12', action: 'allow', comment: 'Private address space (RFC1918)'},
                 {address: '10.0.0.0/8', action: 'allow', comment: 'Private address space (RFC1918)'}]
      None    : []

`unbound_control_enable`

    Description: Control the 'unbound_control_enable' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_default_port`

    Description: Set the 'unbound_default_port' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 53
    Options    :
      Examples: 53 | 5300

`unbound_do_not_query_localhost`

    Description: Control the 'unbound_do_not_query_localhost' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_harden_algo_downgrade`

    Description: Control the 'unbound_harden_algo_downgrade' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_harden_below_nxdomain`

    Description: Control the 'unbound_harden_below_nxdomain' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_harden_dnssec_stripped`

    Description: Control the 'unbound_harden_dnssec_stripped' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_harden_glue`

    Description: Control the 'unbound_harden_glue' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_harden_large_queries`

    Description: Control the 'unbound_harden_large_queries' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_harden_referral_path`

    Description: Control the 'unbound_harden_referral_path' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_harden_short_bufsize`

    Description: Control the 'unbound_harden_short_bufsize' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_hide_identity`

    Description: Control the 'unbound_hide_identity' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_hide_trustanchor`

    Description: Control the 'unbound_hide_trustanchor' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_hide_version`

    Description: Control the 'unbound_hide_version' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_identity`

    Description: Define the 'unbound_identity' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'ns' | 'dns'
      None    : ''

`unbound_include`

    Description: Define the 'unbound_include' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{file: '/data/unbound-adblock/adblock.conf', comment: 'Unbound AdBlock List'}]
      None    : []

`unbound_interface`

    Description: Define the 'unbound_interface' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{address: '127.0.0.1', port: '53', comment: 'Localhost'}]
    Options    :
      Examples: [{address: '10.1.1.10', port: '53', comment: 'Network'}] |
                [{address: '0.0.0.0', port: '53', comment: 'Any'}] |
      None    : []

`unbound_ip4_state`

    Description: Control the 'unbound_ip4_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_ip6_state`

    Description: Control the 'unbound_ip6_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_local_data`

    Description: Define the 'unbound_local_data' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{record: '1.2.3.4 domain.tld', comment: 'domain.tld'}]
      None    : []

`unbound_local_data_ptr`

    Description: Define the 'unbound_local_data_ptr' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{record: '1.2.3.4 domain.tld', comment: 'domain.tld'}]
      None    : []

`unbound_local_zone`

    Description: Define the 'unbound_local_zone' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{zone: 'domain.tld', type: 'static', comment: 'domain.tld'}] |
                [{zone: '10.in-addr.arpa.', type: 'nodefault', comment: 'Enable reverse lookup for 10.0.0.0/8'}]
      None    : []

`unbound_monitor_monit_state`

    Description: Control the 'unbound_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_nftables_filter_rule`

    Description: Define the 'unbound_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 53 counter accept comment "dns from internal private addresses"
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new udp dport 53 counter accept comment "dns from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 53 counter accept comment "dns from unique local addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new udp dport 53 counter accept comment "dns from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 53 counter accept comment "dns to any"
      add rule ip filter OUTPUT ct state new udp dport 53 counter accept comment "dns to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 53 counter accept comment "dns to any"
      add rule ip6 filter OUTPUT ct state new udp dport 53 counter accept comment "dns to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 53 counter accept comment "dns from internal-networks"
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new udp dport 53 counter accept comment "dns from internal-networks"
        add rule ip filter OUTPUT ct state new tcp dport 53 counter accept comment "dns to any"
        add rule ip filter OUTPUT ct state new udp dport 53 counter accept comment "dns to any"

`unbound_nftables_state`

    Description: Control the 'unbound_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_prefer_ip6`

    Description: Control the 'unbound_prefer_ip6' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_stub_zone`

    Description: Define the 'unbound_stub_zone' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'domain.tld', address: '127.0.0.1', port: '5300', comment: 'domain.tld'}]
      None    : []

`unbound_tcp_state`

    Description: Control the 'unbound_tcp_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_udp_state`

    Description: Control the 'unbound_udp_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`unbound_version`

    Description: Define the 'unbound_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1.6.8' | '1.7.0'
      None    : ''

## Conflicts

## Dependencies

### Packages

`unbound`

    Version: >= 1.9
    Name   :
      Debian 11: 'unbound'
      Debian 12: 'unbound'

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
