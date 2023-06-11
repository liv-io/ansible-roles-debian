# rootlesskit

## Description

The purpose of RootlessKit is to run Docker and Kubernetes as an unprivileged
user (known as "Rootless mode"), so as to protect the real root on the host from
potential container-breakout attacks.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: rootlesskit
  vars:
    rootlesskit_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: rootlesskit
  vars:
    rootlesskit_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: rootlesskit
  vars:
    rootlesskit_state: 'inactive'
```

## Parameters

### Role

`rootlesskit_state`

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

`rootlesskit`

    Version: >= 0.14
    Name   :
      Debian 11: 'rootlesskit'
      Debian 12: 'rootlesskit'

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
