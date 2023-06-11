# tcpdump

## Description

This program allows you to dump the traffic on a network. tcpdump is able to
examine IPv4, ICMPv4, IPv6, ICMPv6, UDP, TCP, SNMP, AFS BGP, RIP, PIM, DVMRP,
IGMP, SMB, OSPF, NFS and many other packet types.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: tcpdump
  vars:
    tcpdump_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: tcpdump
  vars:
    tcpdump_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: tcpdump
  vars:
    tcpdump_state: 'inactive'
```

## Parameters

### Role

`tcpdump_state`

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

`tcpdump`

    Version: >= 4.0
    Name   :
      Debian 11: 'tcpdump'
      Debian 12: 'tcpdump'

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
