# telnet

## Description

The telnet command is used for interactive communication with another host using
the TELNET protocol.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: telnet
  vars:
    telnet_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: telnet
  vars:
    telnet_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: telnet
  vars:
    telnet_state: 'inactive'
```

## Parameters

### Role

`telnet_state`

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

`telnet`

    Version: >= 0.10
    Name   :
      Debian 11: 'telnet'

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
