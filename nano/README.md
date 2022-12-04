# nano

## Description

GNU nano is an easy-to-use text editor originally designed as a replacement for
Pico, the ncurses-based editor from the non-free mailer package Pine (itself now
available under the Apache License as Alpine).

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: nano
  vars:
    nano_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: nano
  vars:
    nano_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: nano
  vars:
    nano_state: 'inactive'
```

## Parameters

### Role

`nano_state`

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

`nano`

    Version: >= 3.0
    Name   :
      Debian 11: 'nano'

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
