# fstab

## Description

The file fstab contains descriptive information about the various file systems.
fstab is only read by programs, and not written; it is the duty of the system
administrator to properly create and maintain this file. Each filesystem is
described on a separate line; fields on each line are separated by tabs or
spaces. Lines starting with '#' are comments, blank lines are ignored. The order
of records in fstab is important because fsck, mount, and umount sequentially
iterate through fstab doing their thing.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: fstab
  vars:
    fstab_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: fstab
  vars:
    fstab_state: 'inactive'
```

### Config

```
vars:
  fstab_config_all:
    - filesystem: '/dev/mapper/system-root'
      state: True
      mountpoint: '/'
      type: 'xfs'
      dump: 1
      pass: 0
      comment: 'Root File System'

    - filesystem: '192.168.1.10:/nfs'
      state: True
      mountpoint: '/nfs'
      type: 'nfs'
      dump: 0
      pass: 0
      comment: 'NFS File System'

  fstab_config_group:
    - filesystem: '/dev/mapper/data-opt'
      state: True
      mountpoint: '/opt'
      type: 'xfs'
      dump: 1
      pass: 1
      comment: 'Optional File System'

  fstab_config_host:
    - filesystem: '/dev/mapper/data-remove'
      state: False
      mountpoint: '/remove'
      type: 'ext4'
      dump: 0
      pass: 0
      comment: 'Unused File System'
```

## Parameters

### Config

`state`

    Description: Control the state of the fstab entry.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'true'
    Options    :
      Install: 'true' | 'yes' | 'install'
      Remove : 'false' | 'no' | 'remove'

`comment`

    Description: Define a comment for the fstab entry.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'Data File System' | 'Opt File System' | 'Var File System'
      None    : ''

`dump`

    Description: Set the dump option for the fstab entry.
    Required   : False
    Value      : Arbitrary
    Type       : String, Integer
    Default    : 0
    Options    :
      Examples: 0 | 1

`filesystem`

    Description: Define the filesystem of the fstab entry.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/dev/mapper/fs-data' | '/dev/mapper/data-opt' |
                '/dev/mapper/host-var'

`mountpoint`

    Description: Define the mountpoint of the fstab entry.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/data' | '/opt' | '/var'

`options`

    Description: Define the options for the fstab entry.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['defaults']
    Options    :
      Examples: ['defaults', 'noatime'] |
                ['defaults', 'nodev', 'nosuid', 'noexec'] |
                ['nfsvers=4', 'bg', 'soft', 'intr', 'tcp', 'timeo=15'] |
                ['nfsvers=4', 'bg', 'soft', 'intr', 'tcp', 'timeo=15', 'x-systemd.automount', 'x-systemd.device-timeout=10']

`pass`

    Description: Set the pass option for the fstab entry.
    Required   : False
    Value      : Arbitrary
    Type       : String, Integer
    Default    : 0
    Options    :
      Examples: 0 | 1 | 2

`type`

    Description: Define the type of the fstab entry.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'ext4' | 'xfs' | 'zfs'

### Role

`fstab_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`fstab_config_all`

    Description: Define the 'fstab_config_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{filesystem: '192.168.1.10:/nfs', state: True, mountpoint: '/nfs', type: 'nfs'},
                 {filesystem: '/dev/mapper/data-opt', state: True, mountpoint: '/opt', type: 'xfs'}]
      None    : []

`fstab_config_group`

    Description: Define the 'fstab_config_group' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{filesystem: '192.168.1.10:/nfs', state: True, mountpoint: '/nfs', type: 'nfs'},
                 {filesystem: '/dev/mapper/data-opt', state: True, mountpoint: '/opt', type: 'xfs'}]
      None    : []

`fstab_config_host`

    Description: Define the 'fstab_config_host' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{filesystem: '192.168.1.10:/nfs', state: True, mountpoint: '/nfs', type: 'nfs'},
                 {filesystem: '/dev/mapper/data-opt', state: True, mountpoint: '/opt', type: 'xfs'}]
      None    : []

## Conflicts

## Dependencies

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
