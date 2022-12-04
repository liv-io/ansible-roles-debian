# gnu_patch

## Description

Patch will take a patch file containing any of the four forms of difference
listing produced by the diff program and apply those differences to an original
file, producing a patched version.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gnu_patch
  vars:
    gnu_patch_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: gnu_patch
  vars:
    gnu_patch_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: gnu_patch
  vars:
    gnu_patch_state: 'inactive'
```

## Parameters

### Role

`gnu_patch_state`

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

`gnu-patch`

    Version: >= 2.0
    Name   :
      Debian 11: 'gpatch'

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
