# stress

## Description

'stress' is a tool that imposes a configurable amount of CPU, memory, I/O, or
disk stress on a POSIX-compliant operating system and reports any errors it
detects.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: stress
  vars:
    stress_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: stress
  vars:
    stress_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: stress
  vars:
    stress_state: 'inactive'
```

## Parameters

### Role

`stress_state`

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

`stress`

    Version: >= 1.0
    Name   :
      Debian 11: 'stress'

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
