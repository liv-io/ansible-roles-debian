# ncat

## Description

ncat is a reimplementation of Netcat by the NMAP project, providing most of the
features present in the original implementations, along with some new features
such as IPv6 and SSL support. Port scanning support has been removed.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: ncat
  vars:
    ncat_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: ncat
  vars:
    ncat_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: ncat
  vars:
    ncat_state: 'inactive'
```

## Parameters

### Role

`ncat_state`

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

`ncat`

    Version: >= 7.0
    Name   :
      Debian 11: 'ncat'

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
