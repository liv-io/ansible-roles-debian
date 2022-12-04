# slirp4netns

## Description

slirp4netns allows connecting a network namespace to the Internet in a
completely unprivileged way, by connecting a TAP device in a network namespace
to the usermode TCP/IP stack ("slirp").

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: slirp4netns
  vars:
    slirp4netns_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: slirp4netns
  vars:
    slirp4netns_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: slirp4netns
  vars:
    slirp4netns_state: 'inactive'
```

## Parameters

### Role

`slirp4netns_state`

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

`slirp4netns`

    Version: >= 1.0
    Name   :
      Debian 11: 'slirp4netns'

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
