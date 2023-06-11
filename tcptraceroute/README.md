# tcptraceroute

## Description

The more traditional traceroute(8) sends out either UDP or ICMP ECHO packets
with a TTL of one, and increments the TTL until the destination has been
reached. By printing the gateways that generate ICMP time exceeded messages
along the way, it is able to determine the path packets are taking to reach the
destination.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: tcptraceroute
  vars:
    tcptraceroute_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: tcptraceroute
  vars:
    tcptraceroute_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: tcptraceroute
  vars:
    tcptraceroute_state: 'inactive'
```

## Parameters

### Role

`tcptraceroute_state`

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

`tcptraceroute`

    Version: >= 1.0
    Name   :
      Debian 11: 'tcptraceroute'
      Debian 12: 'tcptraceroute'

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
