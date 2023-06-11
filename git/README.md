# git

## Description

Git is popular version control system designed to handle very large projects
with speed and efficiency; it is used for many high profile open source
projects, most notably the Linux kernel.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: git
  vars:
    git_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: git
  vars:
    git_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: git
  vars:
    git_state: 'inactive'
```

## Parameters

### Role

`git_state`

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

`git`

    Version: >= 2.0
    Name   :
      Debian 11: 'git'
      Debian 12: 'git'

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
