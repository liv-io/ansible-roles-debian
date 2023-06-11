# findutils

## Description

GNU findutils provides utilities to find files meeting specified criteria and
perform various actions on the files which are found. This package contains
'find' and 'xargs'; however, 'locate' has been split off into a separate
package.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: findutils
  vars:
    findutils_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: findutils
  vars:
    findutils_state: 'inactive'
```

## Parameters

### Role

`findutils_state`

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

`findutils`

    Version: >= 4.0
    Name   :
      Debian 11: 'findutils'
      Debian 12: 'findutils'

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
