# net_tools

## Description

This package includes the important tools for controlling the network subsystem
of the Linux kernel. This includes arp, ifconfig, netstat, rarp, nameif and
route. Additionally, this package contains utilities relating to particular
network hardware types (plipconfig, slattach, mii-tool) and advanced aspects of
IP configuration (iptunnel, ipmaddr).

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: net_tools
  vars:
    net_tools_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: net_tools
  vars:
    net_tools_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: net_tools
  vars:
    net_tools_state: 'inactive'
```

## Parameters

### Role

`net_tools_state`

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

`net-tools`

    Version: >= 1.0
    Name   :
      Debian 11: 'net-tools'
      Debian 12: 'net-tools'

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
