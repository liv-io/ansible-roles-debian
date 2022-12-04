# gnu_awk

## Description

GNU AWK is a pattern scanning and processing tool. It conforms to the definition
of the language in the POSIX 1003.1 Standard. This version in turn is based on
the description in The AWK Programming Language, by Aho, Kernighan, and
Weinberger. Gawk provides the additional features found in the current version
of Brian Kernighan's awk(1) and a number of GNU-specific extensions.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gnu_awk
  vars:
    gnu_awk_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: gnu_awk
  vars:
    gnu_awk_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: gnu_awk
  vars:
    gnu_awk_state: 'inactive'
```

## Parameters

### Role

`gnu_awk_state`

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

`gnu-awk`

    Version: >= 4.1
    Name   :
      Debian 11: 'gawk'

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
