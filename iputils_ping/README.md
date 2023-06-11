# iputils_ping

## Description

The ping command sends ICMP ECHO_REQUEST packets to a host in order to test if
the host is reachable via the network.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: iputils_ping
  vars:
    iputils_ping_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: iputils_ping
  vars:
    iputils_ping_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: iputils_ping
  vars:
    iputils_ping_state: 'inactive'
```

## Parameters

### Role

`iputils_ping_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

### Packages

`iputils-ping`

    Version: >= 20180629
    Name   :
      Debian 11: 'iputils-ping'
      Debian 12: 'iputils-ping'

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
