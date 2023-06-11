# unzip

## Description

InfoZIP's unzip program. With the exception of multi-volume archives (ie, .ZIP
files that are split across several disks using PKZIP's /& option), this can
handle any file produced either by PKZIP, or the corresponding InfoZIP zip
program.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: unzip
  vars:
    unzip_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: unzip
  vars:
    unzip_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: unzip
  vars:
    unzip_state: 'inactive'
```

## Parameters

### Role

`unzip_state`

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

`unzip`

    Version: >= 6.0
    Name   :
      Debian 11: 'unzip'
      Debian 12: 'unzip'

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
