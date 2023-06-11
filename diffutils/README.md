# diffutils

## Description

The diffutils package provides the diff, diff3, sdiff, and cmp programs.

'diff' shows differences between two files, or each corresponding file in two
directories. 'cmp' shows the offsets and line numbers where two files differ.
'cmp' can also show all the characters that differ between the two files, side
by side. 'diff3' shows differences among three files. 'sdiff' merges two files
interactively.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: diffutils
  vars:
    diffutils_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: diffutils
  vars:
    diffutils_state: 'inactive'
```

## Parameters

### Role

`diffutils_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

### Packages

`diffutils`

    Version: >= 3.0
    Name   :
      Debian 11: 'diffutils'
      Debian 12: 'diffutils'

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
