# file

## Description

The file command is "a file type guesser", a command-line tool that tells you in
words what kind of data a file contains.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: file
  vars:
    file_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: file
  vars:
    file_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: file
  vars:
    file_state: 'inactive'
```

## Parameters

### Role

`file_state`

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

`file`

    Version: >= 5.0
    Name   :
      Debian 11: 'file'
      Debian 12: 'file'

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
