# lego

## Description

Let's Encrypt/ACME client and library written in Go.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'inactive'
```

## Parameters

### Role

`lego_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`lego_version`

    Description: Define the 'lego_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '4.22.2
    Options    :
      Examples: '4.22.0' | '4.22.1'

## Conflicts

## Dependencies

### Archives

`lego`

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

    Version: 12
    Version: 13
