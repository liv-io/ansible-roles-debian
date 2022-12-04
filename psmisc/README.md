# psmisc

## Description

This package contains miscellaneous utilities that use the proc FS:
- fuser: identifies processes that are using files or sockets
- killall: kills processes by name (e.g. "killall -HUP named")
- peekfd: shows the data traveling over a file descriptor
- pstree: shows currently running processes as a tree
- prtstat: print the contents of /proc/<pid>/stat

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: psmisc
  vars:
    psmisc_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: psmisc
  vars:
    psmisc_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: psmisc
  vars:
    psmisc_state: 'inactive'
```

## Parameters

### Role

`psmisc_state`

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

`psmisc`

    Version: >= 23.0
    Name   :
      Debian 11: 'psmisc'

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
