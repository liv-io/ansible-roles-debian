# nyancat

## Description

nyancat is a program to display an animated poptart cat in your terminal.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: nyancat
  vars:
    nyancat_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: nyancat
  vars:
    nyancat_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: nyancat
  vars:
    nyancat_state: 'inactive'
```

## Parameters

### Role

`nyancat_state`

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

`nyancat`

    Version: >= 1.0
    Name   :
      Debian 11: 'nyancat'
      Debian 12: 'nyancat'

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
