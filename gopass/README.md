# gopass

## Description

The slightly more awesome standard unix password manager for teams.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gopass
  vars:
    gopass_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: gopass
  vars:
    gopass_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: gopass
  vars:
    gopass_state: 'inactive'
```

## Parameters

### Role

`gopass_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`gopass_nftables_filter_rule`

    Description: Define the 'gopass_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter OUTPUT ct state new tcp dport 22 counter accept comment "git to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 22 counter accept comment "git to any"
    Options    :
      Examples: |
        add rule ip filter OUTPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 22 counter accept comment "git to internal private addresses"

`gopass_nftables_state`

    Description: Control the 'gopass_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`gopass`

    Version: >= 1.15
    Name   :
      Debian 12: 'gopass'
      Debian 13: 'gopass'

`gnupg1`

    Version: >= 1.0
    Name   :
      Debian 12: 'gnupg1'
      Debian 13: 'gnupg1'

`rng-tools`

    Version: >= 2.0
    Name   :
      Debian 12: 'rng-tools-debian'
      Debian 13: 'rng-tools-debian'

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
