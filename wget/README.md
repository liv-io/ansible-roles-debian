# wget

## Description

Wget is a network utility to retrieve files from the web using HTTP(S) and FTP,
the two most widely used internet protocols. It works non-interactively, so it
will work in the background, after having logged off. The program supports
recursive retrieval of web-authoring pages as well as FTP sites -- you can use
Wget to make mirrors of archives and home pages or to travel the web like a WWW
robot.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: wget
  vars:
    wget_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: wget
  vars:
    wget_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: wget
  vars:
    wget_state: 'inactive'
```

## Parameters

### Role

`wget_state`

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

`wget`

    Version: >= 1.0
    Name   :
      Debian 11: 'wget'
      Debian 12: 'wget'

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
