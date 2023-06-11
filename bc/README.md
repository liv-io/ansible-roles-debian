# bc

## Description

GNU bc is an interactive algebraic language with arbitrary precision which
follows the POSIX 1003.2 draft standard, with several extensions including
multi-character variable names, an `else' statement and full Boolean
expressions. GNU bc does not require the separate GNU dc program.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: bc
  vars:
    bc_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: bc
  vars:
    bc_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: bc
  vars:
    bc_state: 'inactive'
```

## Parameters

### Role

`bc_state`

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

`bc`

    Version: >= 1.0
    Name   :
      Debian 11: 'bc'
      Debian 12: 'bc'

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
