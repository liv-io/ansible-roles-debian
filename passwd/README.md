# passwd

## Description

'/etc/passwd' is a text file which defines the users on the system.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: passwd
  vars:
    passwd_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: passwd
  vars:
    passwd_state: 'inactive'
```

## Parameters

### Role

`passwd_state`

    Description: Control the state of the role.
                 'passwd' is a core file and can therefore not be removed.
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
