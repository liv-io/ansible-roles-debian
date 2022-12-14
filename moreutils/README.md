# moreutils

## Description

This is a growing collection of the Unix tools that nobody thought to write long
ago, when Unix was young.

So far, it includes the following utilities:
- chronic: runs a command quietly unless it fails
- combine: combine the lines in two files using boolean operations
- errno: look up errno names and descriptions
- ifdata: get network interface info without parsing ifconfig output
- ifne: run a program if the standard input is not empty
- isutf8: check if a file or standard input is utf-8
- lckdo: execute a program with a lock held
- mispipe: pipe two commands, returning the exit status of the first
- parallel: run multiple jobs at once
- pee: tee standard input to pipes
- sponge: soak up standard input and write to a file
- ts: timestamp standard input
- vidir: edit a directory in your text editor
- vipe: insert a text editor into a pipe
- zrun: automatically uncompress arguments to command

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: moreutils
  vars:
    moreutils_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: moreutils
  vars:
    moreutils_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: moreutils
  vars:
    moreutils_state: 'inactive'
```

## Parameters

### Role

`moreutils_state`

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

`moreutils`

    Version: >= 0.6
    Name   :
      Debian 11: 'moreutils'

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