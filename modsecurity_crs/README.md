# modsecurity_crs

## Description

The base rules for mod_security.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: modsecurity_crs
  vars:
    modsecurity_crs_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: modsecurity_crs
  vars:
    modsecurity_crs_state: 'enable'
    modsecurity_crs_sec_default_action:
      - "phase:1,log,auditlog,redirect:'http://%{request_headers.host}/',tag:'Host: %{request_headers.host}'"
      - "phase:2,log,auditlog,redirect:'http://%{request_headers.host}/',tag:'Host: %{request_headers.host}'"
```

### Disable

```
- hosts: all
  roles:
    - role: modsecurity_crs
  vars:
    modsecurity_crs_state: 'disable'
    modsecurity_crs_sec_default_action:
      - "phase:1,log,auditlog,redirect:'http://%{request_headers.host}/',tag:'Host: %{request_headers.host}'"
      - "phase:2,log,auditlog,redirect:'http://%{request_headers.host}/',tag:'Host: %{request_headers.host}'"
```

### Remove

```
- hosts: all
  roles:
    - role: modsecurity_crs
  vars:
    modsecurity_crs_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: modsecurity_crs
  vars:
    modsecurity_crs_state: 'inactive'
```

## Parameters

### Role

`modsecurity_crs_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Enable  : 'start' | 'on' | 'enable'
      Disable : 'stop' | 'off' | 'disable'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`modsecurity_crs_sec_default_action`

    Description: Define the 'modsecurity_crs_sec_default_action' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['phase:1,log,auditlog,deny,status:403', 'phase:2,log,auditlog,deny,status:403']
    Options    :
      Examples: ['phase:1,log,auditlog,pass', 'phase:2,log,auditlog,pass'] |
                ['phase:1,log,auditlog,deny,status:403', 'phase:2,log,auditlog,deny,status:403'] |
                ["phase:1,log,auditlog,redirect:'http://%{request_headers.host}/',tag:'Host: %{request_headers.host}'",
                 "phase:2,log,auditlog,redirect:'http://%{request_headers.host}/',tag:'Host: %{request_headers.host}'"]

## Conflicts

## Dependencies

### Packages

`modsecurity-crs`

    Version: >= 3.0
    Name   :
      Debian 11: 'modsecurity-crs'

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
