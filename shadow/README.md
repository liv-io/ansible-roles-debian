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
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

## Requirements

### Control Node

`ansible`

    Version: >= 2.15.0

### Managed Node

`python`

    Version: >= 3.10.0

## Support

### Operating Systems

`debian`

    Version: 12
    Version: 13
