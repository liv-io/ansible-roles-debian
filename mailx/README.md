# mailx

## Description

bsd-mailx is the traditional simple command-line-mode mail user agent. Even if
you don't use it, it may be required by other programs.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: mailx
  vars:
    mailx_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: mailx
  vars:
    mailx_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: mailx
  vars:
    mailx_state: 'inactive'
```

## Parameters

### Role

`mailx_state`

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

`mailx`

    Version: >= 8.0
    Name   :
      Debian 11: 'bsd-mailx'
      Debian 12: 'bsd-mailx'

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
