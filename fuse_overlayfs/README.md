# fuse_overlayfs

## Description

This package provides an overlayfs FUSE implementation so that it can be used
since Linux 4.18 by unprivileged users in an user namespace.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: fuse_overlayfs
  vars:
    fuse_overlayfs_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: fuse_overlayfs
  vars:
    fuse_overlayfs_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: fuse_overlayfs
  vars:
    fuse_overlayfs_state: 'inactive'
```

## Parameters

### Role

`fuse_overlayfs_state`

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

`fuse-overlayfs`

    Version: >= 1.0
    Name   :
      Debian 11: 'fuse-overlayfs'

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
