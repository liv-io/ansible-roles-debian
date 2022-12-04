# iftop

## Description

iftop does for network usage what top(1) does for CPU usage. It listens to
network traffic on a named interface and displays a table of current bandwidth
usage by pairs of hosts. Handy for answering the question "Why is my Internet
link so slow?".

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: iftop
  vars:
    iftop_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: iftop
  vars:
    iftop_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: iftop
  vars:
    iftop_state: 'inactive'
```

## Parameters

### Role

`iftop_state`

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

`iftop`

    Version: >= 1.0
    Name   :
      Debian 11: 'iftop'

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
