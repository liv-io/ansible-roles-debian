# openssl

## Description

This package is part of the OpenSSL project's implementation of the SSL and TLS
cryptographic protocols for secure communication over the Internet.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: openssl
  vars:
    openssl_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: openssl
  vars:
    openssl_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: openssl
  vars:
    openssl_state: 'inactive'
```

## Parameters

### Role

`openssl_state`

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

`openssl`

    Version: >= 1.0
    Name   :
      Debian 11: 'openssl'
      Debian 12: 'openssl'

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
