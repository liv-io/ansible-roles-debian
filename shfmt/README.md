# shfmt

## Description

A shell parser, formatter, and interpreter with bash support; includes shfmt

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: shfmt
  vars:
    shfmt_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: shfmt
  vars:
    shfmt_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: shfmt
  vars:
    shfmt_state: 'inactive'
```

## Parameters

### Role

`shfmt_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`shfmt_version`

    Description: Define the 'shfmt_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '3.11.0'
    Options    :
      Examples: '3.5.0' | '3.6.0'

## Conflicts

## Dependencies

### Archives

`shfmt`

## Requirements

### Control Node

`ansible`

    Version: >= 2.15.0

### Managed Node

`python`

    Version: >= 3.10.0

## Support

### Operating Systems

`debian`

    Version: 11
    Version: 12
