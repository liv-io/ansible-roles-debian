# lowdown

## Description

lowdown is just another Markdown translator. It can output traditional HTML or a
document for your troff type-setter of choice, such as groff(1), Heirloom troff,
or even mandoc(1).

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: lowdown
  vars:
    lowdown_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: lowdown
  vars:
    lowdown_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: lowdown
  vars:
    lowdown_state: 'inactive'
```

## Parameters

### Role

`lowdown_state`

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

`lowdown`

    Version: >= 0.8
    Name   :
      Debian 11: 'lowdown'
      Debian 12: 'lowdown'

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
