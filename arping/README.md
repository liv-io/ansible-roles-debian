# arping

## Description

The arping utility sends ARP and/or ICMP requests to the specified host and
displays the replies. The host may be specified by its hostname, its IP address,
or its MAC address.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: arping
  vars:
    arping_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: arping
  vars:
    arping_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: arping
  vars:
    arping_state: 'inactive'
```

## Parameters

### Role

`arping_state`

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

`iputils_arping`

## Dependencies

### Packages

`arping`

    Version: >= 2.0
    Name   :
      Debian 11: 'arping'

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
