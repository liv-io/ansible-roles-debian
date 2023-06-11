# openbsd_netcat

## Description

A simple Unix utility which reads and writes data across network connections
using TCP or UDP protocol. It is designed to be a reliable "back-end" tool that
can be used directly or easily driven by other programs and scripts. At the same
time it is a feature-rich network debugging and exploration tool, since it can
create almost any kind of connection you would need and has several interesting
built-in capabilities.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: openbsd_netcat
  vars:
    openbsd_netcat_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: openbsd_netcat
  vars:
    openbsd_netcat_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: openbsd_netcat
  vars:
    openbsd_netcat_state: 'inactive'
```

## Parameters

### Role

`openbsd_netcat_state`

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

`openbsd-netcat`

    Version: >= 1.0
    Name   :
      Debian 11: 'netcat-openbsd'
      Debian 12: 'netcat-openbsd'

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
