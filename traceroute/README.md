# traceroute

## Description

The traceroute utility displays the route used by IP packets on their way to a
specified network (or Internet) host. Traceroute displays the IP number and host
name (if possible) of the machines along the route taken by the packets.
Traceroute is used as a network debugging tool. If you're having network
connectivity problems, traceroute will show you where the trouble is coming from
along the route.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: traceroute
  vars:
    traceroute_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: traceroute
  vars:
    traceroute_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: traceroute
  vars:
    traceroute_state: 'inactive'
```

## Parameters

### Role

`traceroute_state`

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

`traceroute`

    Version: >= 2.0
    Name   :
      Debian 11: 'traceroute'
      Debian 12: 'traceroute'

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
