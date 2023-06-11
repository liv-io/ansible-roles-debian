# man_db

## Description

This package provides the man command, the primary way of examining the on-line
help files (manual pages). Other utilities provided include the whatis and
apropos commands for searching the manual page database, the manpath utility for
determining the manual page search path, and the maintenance utilities mandb,
catman and zsoelim. man-db uses the groff suite of programs to format and
display the manual pages.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: man_db
  vars:
    man_db_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: man_db
  vars:
    man_db_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: man_db
  vars:
    man_db_state: 'inactive'
```

## Parameters

### Role

`man_db_state`

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

`man-db`

    Version: >= 2.0
    Name   :
      Debian 11: 'man-db'
      Debian 12: 'man-db'

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
