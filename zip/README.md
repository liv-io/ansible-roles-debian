# zip

## Description

This is InfoZIP's zip program. It produces files that are fully compatible with
the popular PKZIP program; however, the command line options are not identical.
In other words, the end result is the same, but the methods differ. :-)

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: zip
  vars:
    zip_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: zip
  vars:
    zip_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: zip
  vars:
    zip_state: 'inactive'
```

## Parameters

### Role

`zip_state`

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

`zip`

    Version: >= 3.0
    Name   :
      Debian 11: 'zip'

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
