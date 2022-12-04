# socat

## Description

Socat (for SOcket CAT) establishes two bidirectional byte streams and transfers
data between them. Data channels may be files, pipes, devices (terminal or
modem, etc.), or sockets (Unix, IPv4, IPv6, raw, UDP, TCP, SSL). It provides
forking, logging and tracing, different modes for interprocess communication and
many more options.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: socat
  vars:
    socat_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: socat
  vars:
    socat_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: socat
  vars:
    socat_state: 'inactive'
```

## Parameters

### Role

`socat_state`

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

`socat`

    Version: >= 1.0
    Name   :
      Debian 11: 'socat'

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
