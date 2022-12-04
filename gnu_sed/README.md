# gnu_sed

## Description

GNU sed is the Free Software Foundation's version of the sed editor. GNU sed
isn't really a true text editor or text processor. Instead, it is used to filter
text, i.e., it takes text input and performs some operation (or set of
operations) on it and outputs the modified text. Sed is typically used for
extracting part of a file using pattern matching or substituting multiple
occurrences of a string within a file.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gnu_sed
  vars:
    gnu_sed_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: gnu_sed
  vars:
    gnu_sed_state: 'inactive'
```

## Parameters

### Role

`gnu_sed_state`

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

`gnu-sed`

    Version: >= 4.2
    Name   :
      Debian 11: 'sed'

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
