# iputils_arping

## Description

The arping command acts like the standard ping command except it pings a
machine by its ARP address instead of its IP address. It is typically used to
locate a machine if its hardware address is known but its IP address is unknown.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: iputils_arping
  vars:
    iputils_arping_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: iputils_arping
  vars:
    iputils_arping_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: iputils_arping
  vars:
    iputils_arping_state: 'inactive'
```

## Parameters

### Role

`iputils_arping_state`

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

### Roles

`arping`

## Dependencies

### Packages

`iputils-arping`

    Version: >= 20180629
    Name   :
      Debian 11: 'iputils-arping'
      Debian 12: 'iputils-arping'

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
