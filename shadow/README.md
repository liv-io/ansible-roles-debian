# shadow

## Description

'/etc/shadow' is a text file which defines the passwords on the system.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: shadow
  vars:
    shadow_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: shadow
  vars:
    shadow_state: 'inactive'
```

## Parameters

### Role

`shadow_state`

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
