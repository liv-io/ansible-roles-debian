# coreutils

## Description

This package contains the basic file, shell and text manipulation utilities
which are expected to exist on every operating system.

Specifically, this package includes:
arch base64 basename cat chcon chgrp chmod chown chroot cksum comm cp csplit cut
date dd df dir dircolors dirname du echo env expand expr factor false flock fmt
fold groups head hostid id install join link ln logname ls md5sum mkdir mkfifo
mknod mktemp mv nice nl nohup nproc numfmt od paste pathchk pinky pr printenv
printf ptx pwd readlink realpath rm rmdir runcon sha*sum seq shred sleep sort
split stat stty sum sync tac tail tee test timeout touch tr true truncate tsort
tty uname unexpand uniq unlink users vdir wc who whoami yes

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: coreutils
  vars:
    coreutils_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: coreutils
  vars:
    coreutils_state: 'inactive'
```

## Parameters

### Role

`coreutils_state`

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

`coreutils`

    Version: >= 8.0
    Name   :
      Debian 11: 'coreutils'
      Debian 12: 'coreutils'

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
