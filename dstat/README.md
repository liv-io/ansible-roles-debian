# dstat

## Description

Dstat is a versatile replacement for vmstat, iostat and ifstat. Dstat overcomes
some of the limitations of these programs and adds some extra features.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: dstat
  vars:
    dstat_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: dstat
  vars:
    dstat_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: dstat
  vars:
    dstat_state: 'inactive'
```

## Parameters

### Role

`dstat_state`

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

`dstat`

    Version: >= 0.7
    Name   :
      Debian 11: 'dstat'

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
