# less

## Description

This package provides "less", a file pager (that is, a memory-efficient utility
for displaying text one screenful at a time). Less has many more features than
the basic pager "more". As part of the GNU project, it is widely regarded as the
standard pager on UNIX-derived systems.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: less
  vars:
    less_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: less
  vars:
    less_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: less
  vars:
    less_state: 'inactive'
```

## Parameters

### Role

`less_state`

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

`less`

    Version: >= 436
    Name   :
      Debian 11: 'less'
      Debian 12: 'less'

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
