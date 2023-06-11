# gnu_zip

## Description

This package provides the standard GNU file compression utilities, which are
also the default compression tools for Debian. They typically operate on files
with names ending in '.gz', but can also decompress files ending in '.Z' created
with 'compress'.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: gnu_zip
  vars:
    gnu_zip_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: gnu_zip
  vars:
    gnu_zip_state: 'inactive'
```

## Parameters

### Role

`gnu_zip_state`

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

`gnu-zip`

    Version: >= 1.0
    Name   :
      Debian 11: 'gzip'
      Debian 12: 'gzip'

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
