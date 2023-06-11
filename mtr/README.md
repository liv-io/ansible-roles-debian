# mtr

## Description

mtr combines the functionality of the 'traceroute' and 'ping' programs in a
single network diagnostic tool.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: mtr
  vars:
    mtr_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: mtr
  vars:
    mtr_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: mtr
  vars:
    mtr_state: 'inactive'
```

## Parameters

### Role

`mtr_state`

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

`mtr`

    Version: >= 0.92
    Name   :
      Debian 11: 'mtr-tiny'
      Debian 12: 'mtr-tiny'

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
