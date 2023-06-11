# lsof

## Description

Lsof is a Unix-specific diagnostic tool. Its name stands for LiSt Open Files,
and it does just that. It lists information about any files that are open, by
processes currently running on the system.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: lsof
  vars:
    lsof_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: lsof
  vars:
    lsof_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: lsof
  vars:
    lsof_state: 'inactive'
```

## Parameters

### Role

`lsof_state`

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

`lsof`

    Version: >= 4.0
    Name   :
      Debian 11: 'lsof'
      Debian 12: 'lsof'

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
