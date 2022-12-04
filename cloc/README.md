# cloc

## Description

Count physical lines of source code in the given files (may be archives such as
compressed tarballs or zip files) and/or recursively below the given
directories.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: cloc
  vars:
    cloc_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: cloc
  vars:
    cloc_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: cloc
  vars:
    cloc_state: 'inactive'
```

## Parameters

### Role

`cloc_state`

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

`cloc`

    Version: >= 1.0
    Name   :
      Debian 11: 'cloc'

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
