# nload

## Description

Nload is a console application which monitors network traffic and bandwidth
usage in real time. It displays the total amount of data that has been
transferred over a network device since the last reboot, the current bandwidth
usage, and the minimum, maximum, and average bandwidth usage measured since it
started.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: nload
  vars:
    nload_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: nload
  vars:
    nload_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: nload
  vars:
    nload_state: 'inactive'
```

## Parameters

### Role

`nload_state`

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

`nload`

    Version: >= 0.7
    Name   :
      Debian 11: 'nload'
      Debian 12: 'nload'

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
