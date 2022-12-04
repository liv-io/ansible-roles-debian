# audispd_plugins

## Description

The audispd-plugins package provides plugins for the real-time interface to the
audit system, audispd. These plugins can do things like relay events to remote
machines.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: audispd_plugins
  vars:
    audispd_plugins_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: audispd_plugins
  vars:
    audispd_plugins_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: audispd_plugins
  vars:
    audispd_plugins_state: 'inactive'
```

## Parameters

### Role

`audispd_plugins_state`

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

`audispd-plugins`

    Version: >= 2.0
    Name   :
      Debian 11: 'audispd-plugins'

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
