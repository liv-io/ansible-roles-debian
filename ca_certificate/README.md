# ca_certificate

## Description

Manages user-defined certificate authorities to allow SSL-based applications to
check for the authenticity of SSL connections.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: ca_certificate
  vars:
    ca_certificate_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: ca_certificate
  vars:
    ca_certificate_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: ca_certificate
  vars:
    ca_certificate_state: 'inactive'
```

### Config

```
vars:
  ca_certificate_config:
  - name: 'root-ca.example.com.crt'
    state: True
    content: |
      -----BEGIN CERTIFICATE-----
      MIIKMzCCBhugAwIBAgIJAO93j1VvN+Y1MA0GCSqGSIb3DQEBCwUAMIGOMQswCQYD
      VQQGEwJDQzEUMBIGA1UECAwLY3liZXIgc3RhdGUxEzARBgNVBAcMCmN5YmVyIGNp
      dHkxDDAKBgNVBAoMA2xpdjETMBEGA1UECwwKY3liZXIgdGVhbTEUMBIGA1UEAwwL
      -----END CERTIFICATE-----

  - name: 'root-ca.domain.tld.crt'
    state: True
    content: |
      -----BEGIN CERTIFICATE-----
      MIIKTzCCBjegAwIBAgIJAJ+iOsEGhwYYMA0GCSqGSIb3DQEBCwUAMIGaMQswCQYD
      VQQGEwJDQzEUMBIGA1UECAwLY3liZXIgc3RhdGUxEzARBgNVBAcMCmN5YmVyIGNp
      dHkxEDAOBgNVBAoMB2NvcmVtb24xEzARBgNVBAsMCmN5YmVyIHRlYW0xGDAWBgNV
      -----END CERTIFICATE-----
```

## Parameters

### Config

`state`

    Description: Control the state of the ca-certificate.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`name`

    Description: Define the name of the ca-certificate.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'root-ca.example.com.crt' | 'root-ca.domain.tld.crt'

`content`

    Description: Define the content of the ca-certificate.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        -----BEGIN CERTIFICATE-----
        MIIKTzCCBjegAwIBAgIJAJ+iOsEGhwYYMA0GCSqGSIb3DQEBCwUAMIGaMQswCQYD
        VQQGEwJDQzEUMBIGA1UECAwLY3liZXIgc3RhdGUxEzARBgNVBAcMCmN5YmVyIGNp
        dHkxEDAOBgNVBAoMB2NvcmVtb24xEzARBgNVBAsMCmN5YmVyIHRlYW0xGDAWBgNV
        -----END CERTIFICATE-----

### Role

`ca_certificate_state`

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

`ca_certificate_config`

    Description: Define the 'ca_certificate_config' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: |
        - name: 'root-ca.example.com.crt'
          state: True
          content: |
            -----BEGIN CERTIFICATE-----
            MIIKMzCCBhugAwIBAgIJAO93j1VvN+Y1MA0GCSqGSIb3DQEBCwUAMIGOMQswCQYD
            VQQGEwJDQzEUMBIGA1UECAwLY3liZXIgc3RhdGUxEzARBgNVBAcMCmN5YmVyIGNp
            dHkxDDAKBgNVBAoMA2xpdjETMBEGA1UECwwKY3liZXIgdGVhbTEUMBIGA1UEAwwL
            -----END CERTIFICATE-----

        - name: 'root-ca.domain.tld.crt'
          state: True
          content: |
            -----BEGIN CERTIFICATE-----
            MIIKTzCCBjegAwIBAgIJAJ+iOsEGhwYYMA0GCSqGSIb3DQEBCwUAMIGaMQswCQYD
            VQQGEwJDQzEUMBIGA1UECAwLY3liZXIgc3RhdGUxEzARBgNVBAcMCmN5YmVyIGNp
            dHkxEDAOBgNVBAoMB2NvcmVtb24xEzARBgNVBAsMCmN5YmVyIHRlYW0xGDAWBgNV
            -----END CERTIFICATE-----
      None: []

## Conflicts

## Dependencies

### Packages

`ca-certificates`

    Version: >= 20200601
    Name   :
      Debian 11: 'ca-certificates'
      Debian 12: 'ca-certificates'

## Parameters

## Requirements

### Control Node

`ansible`

    Version: >= 2.15.0

### Managed Node

`python`

    Version: >= 3.10.0

## Support

### Operating Systems

`debian`

    Version: 11
    Version: 12
