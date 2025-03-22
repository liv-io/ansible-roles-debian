# uv

## Description

An extremely fast Python package and project manager, written in Rust.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: uv
  vars:
    uv_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: uv
  vars:
    uv_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: uv
  vars:
    uv_state: 'inactive'
```

## Parameters

### Role

`uv_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`uv_version`

    Description: Define the 'uv_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.6.9'
    Options    :
      Examples: '0.6.4' | '0.6.5'

## Conflicts

## Dependencies

### Archives

`uv`

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
