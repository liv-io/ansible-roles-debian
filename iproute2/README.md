# iproute2

## Description

The iproute2 suite is a collection of utilities for networking and traffic
control.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: iproute2
  vars:
    iproute2_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: iproute2
  vars:
    iproute2_state: 'inactive'
```

## Parameters

### Role

`iproute2_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

### Packages

`iproute2`

    Version: >= 3.10
    Name   :
      Debian 11: 'iproute2'

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
