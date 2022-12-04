# gnupg

## Description

GNU privacy guard - a free PGP replacement
GnuPG is GNU's tool for secure communication and data storage. It can be used
to encrypt data and to create digital signatures. It includes an advanced key
management facility and is compliant with the proposed OpenPGP Internet
standard as described in RFC4880.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gnupg
  vars:
    gnupg_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: gnupg
  vars:
    gnupg_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: gnupg
  vars:
    gnupg_state: 'inactive'
```

## Parameters

### Role

`gnupg_state`

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

`gnupg`

    Version: >= 2.0
    Name   :
      Debian 11: 'gnupg'

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
