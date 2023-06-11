# gnu_grep

## Description

The GNU versions of commonly used grep utilities. Grep searches through textual
input for lines which contain a match to a specified pattern and then prints the
matching lines. GNU's grep utilities include grep, egrep and fgrep.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gnu_grep
  vars:
    gnu_grep_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: gnu_grep
  vars:
    gnu_grep_state: 'inactive'
```

## Parameters

### Role

`gnu_grep_state`

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

`gnu-grep`

    Version: >= 2.6
    Name   :
      Debian 11: 'grep'
      Debian 12: 'grep'

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
