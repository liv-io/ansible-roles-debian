# vim

## Description

VIM (VIsual editor iMproved) is an updated and improved version of the vi
editor. Vi was the first real screen-based editor for UNIX, and is still very
popular. VIM improves on vi by adding new features: multiple windows,
multi-level undo, block highlighting and more. The vim-enhanced package contains
a version of VIM with extra, recently introduced features like Python and Perl
interpreters.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: vim
  vars:
    vim_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: vim
  vars:
    vim_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: vim
  vars:
    vim_state: 'inactive'
```

## Parameters

### Role

`vim_state`

    Description: Control the state of the role.
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

`vim`

    Version: >= 7.2
    Name   :
      Debian 12: 'vim'
      Debian 13: 'vim'

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
