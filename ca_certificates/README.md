# ca_certificates

## Description

Contains the certificate authorities shipped with Mozilla's browser to allow
SSL-based applications to check for the authenticity of SSL connections.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: ca_certificates
  vars:
    ca_certificates_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: ca_certificates
  vars:
    ca_certificates_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: ca_certificates
  vars:
    ca_certificates_state: 'inactive'
```

## Parameters

### Role

`ca_certificates_state`

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

`ca-certificates`

    Version: >= 20200601
    Name   :
      Debian 11: 'ca-certificates'

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
