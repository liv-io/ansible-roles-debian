# iperf2

## Description

Iperf is a modern alternative for measuring TCP and UDP bandwidth performance,
allowing the tuning of various parameters and characteristics.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: iperf2
  vars:
    iperf2_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: iperf2
  vars:
    iperf2_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: iperf2
  vars:
    iperf2_state: 'inactive'
```

## Parameters

### Role

`iperf2_state`

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

`iperf2`

    Version: >= 2.0
    Name   :
      Debian 11: 'iperf'
      Debian 12: 'iperf'
      Debian 11: 'iperf'

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
