# bind_tools

## Description

The Berkeley Internet Name Domain (BIND) implements an Internet domain name
server. BIND is the most widely-used name server software on thea Internet,
and is supported by the Internet Software Consortium, www.isc.org.

This package delivers various client programs related to DNS that are derived
from the BIND source tree:
- dig - query the DNS in various ways
- nslookup - the older way to do it
- nsupdate - perform dynamic updates (See RFC2136)

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: bind_tools
  vars:
    bind_tools_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: bind_tools
  vars:
    bind_tools_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: bind_tools
  vars:
    bind_tools_state: 'inactive'
```

## Parameters

### Role

`bind_tools_state`

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

`bind-tools`

    Version: >= 9.0
    Name   :
      Debian 11: 'dnsutils'
      Debian 12: 'dnsutils'

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
