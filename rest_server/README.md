# rest_server

## Description

Rest Server is a high performance HTTP server that implements restic's REST
backend API.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'inactive'
```

## Parameters

### Role

`rest_server_state`

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

`rest_server_htpasswd`

    Description: Define the 'rest_server_htpasswd' option.
                 htpasswd2 -cB /etc/rest-server/htpasswd <hostname>
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        host01:$2y$05$ysbpQ.BspHxXHr/P7Yod8OEyFnijMTwoGNDcxnl1MNTq42o.F1/uW
        host02:$2y$05$nta91gn96NjSizfwIxPAiu3wyBHLJuHqeoiZNoqEWy65h13rXjUSq
        host03:$2y$05$3O9ZkonUm4S6hxSJXckEyeRR5P1Yw3qqszhV7mKP3h/.5YAzBKZ8O

`rest_server_monitor_monit_state`

    Description: Control the 'rest_server_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`rest_server_nftables_filter_rule`

    Description: Define the 'rest_server_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 443 counter accept comment "https from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 443 counter accept comment "https from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 443 counter accept comment "https from internal-networks"

`rest_server_nftables_state`

    Description: Control the 'rest_server_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`rest_server_options`

    Description: Define the 'rest_server_options' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['--append-only', '--htpasswd-file /etc/rest-server/htpasswd', '--path /data/rest-server', '--private-repos', '--prometheus']
    Options    :
      Examples: ['--htpasswd-file /etc/rest-server/htpasswd', '--path /data/rest-server', '--private-repos', '--prometheus']
      None    : []

`rest_server_version`

    Description: Define the 'rest_server_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.14.0'
    Options    :
      Examples: '0.9.5' | '0.9.6'

## Conflicts

## Dependencies

### Archives

`rest-server`

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
