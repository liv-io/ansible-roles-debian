# rsync

## Description

rsync is a fast and versatile file-copying tool which can copy locally and
to/from a remote host. It offers many options to control its behavior, and its
remote-update protocol can minimize network traffic to make transferring updates
between machines fast and efficient.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: rsync
  vars:
    rsync_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: rsync
  vars:
    rsync_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: rsync
  vars:
    rsync_state: 'inactive'
```

## Parameters

### Role

`rsync_state`

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

`rsync`

    Version: >= 3.0
    Name   :
      Debian 11: 'rsync'

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
