# smokeping_prober

## Description

Prometheus style "smokeping" prober.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'inactive'
```

## Parameters

### Role

`smokeping_prober_state`

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

`smokeping_prober_hosts`

    Description: Define the 'smokeping_prober_hosts' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['host.domain.tld'] | ['host01.domain.tld', 'host02.domain.tld'] |
                ['host01.domain01.tld', 'host02.domain02.tld', 'host01.domain03.tld']
      None    : []

`smokeping_prober_monitor_monit_state`

    Description: Control the 'smokeping_prober_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`smokeping_prober_nftables_filter_rule`

    Description: Define the 'smokeping_prober_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 9374 counter accept comment "smokeping_prober from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9374 counter accept comment "smokeping_prober from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 1-65535 counter accept comment "tcp to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 1-65535 counter accept comment "tcp to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 9374 counter accept comment "smokeping_prober from internal-networks"
        add rule ip filter OUTPUT ct state new tcp dport 1-65535 counter accept comment "tcp to any"

`smokeping_prober_nftables_state`

    Description: Control the 'smokeping_prober_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`smokeping_prober_version`

    Description: Define the 'smokeping_prober_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.8.1'
    Options    :
      Examples: '0.1.0' | '0.2.0'

## Conflicts

## Dependencies

### Packages

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

    Version: 11
    Version: 12
