# nmap

## Description

Nmap is a utility for network exploration or security auditing. It supports ping
scanning (determine which hosts are up), many port scanning techniques, version
detection (determine service protocols and application versions listening behind
ports), and TCP/IP fingerprinting (remote host OS or device identification).
Nmap also offers flexible target and port specification, decoy/stealth
scanning, sunRPC scanning, and more. Most Unix and Windows platforms are
supported in both GUI and commandline modes. Several popular handheld devices
are also supported, including the Sharp Zaurus and the iPAQ.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: nmap
  vars:
    nmap_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: nmap
  vars:
    nmap_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: nmap
  vars:
    nmap_state: 'inactive'
```

## Parameters

### Role

`nmap_state`

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

`nmap`

    Version: >= 7.0
    Name   :
      Debian 11: 'nmap'
      Debian 12: 'nmap'

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
