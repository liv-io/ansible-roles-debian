# htop

## Description

Htop is an ncursed-based process viewer similar to top, but it allows one to
scroll the list vertically and horizontally to see all processes and their full
command lines.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: htop
  vars:
    htop_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: htop
  vars:
    htop_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: htop
  vars:
    htop_state: 'inactive'
```

## Parameters

### Role

`htop_state`

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

`htop`

    Version: >= 2.0
    Name   :
      Debian 11: 'htop'
      Debian 12: 'htop'

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
