# modsecurity

## Description

ModSecurity is an open source intrusion detection and prevention engine for web
applications. It operates embedded into the web server, acting as a powerful
umbrella - shielding web applications from attacks.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: modsecurity
  vars:
    modsecurity_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: modsecurity
  vars:
    modsecurity_state: 'enable'
    modsecurity_sec_server_signature: 'liv'
```

### Disable

```
- hosts: all
  roles:
    - role: modsecurity
  vars:
    modsecurity_state: 'disable'
    modsecurity_sec_server_signature: 'liv'
```

### Remove

```
- hosts: all
  roles:
    - role: modsecurity
  vars:
    modsecurity_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: modsecurity
  vars:
    modsecurity_state: 'inactive'
```

## Parameters

### Role

`modsecurity_state`

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

`modsecurity_sec_audit_log_parts`

    Description: Define the 'modsecurity_sec_audit_log_parts' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'ABIFHZ'
    Options    :
      Examples: 'ABIFHZ' | 'ABIJDEFHZ'

`modsecurity_sec_pcre_match_limit`

    Description: Set the 'modsecurity_sec_pcre_match_limit' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 1000000
    Options    :
      Examples: 500000 | 1000000 | 2000000

`modsecurity_sec_pcre_match_limit_recursion`

    Description: Set the 'modsecurity_sec_pcre_match_limit_recursion' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 1000000
    Options    :
      Examples: 500000 | 1000000 | 2000000

`modsecurity_sec_request_body_access`

    Description: Control the 'modsecurity_sec_request_body_access' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    :
      True : True
      False: False

`modsecurity_sec_request_body_limit`

    Description: Set the 'modsecurity_sec_request_body_limit' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 41943040
    Options    :
      Examples: 5000000 | 10000000 | 20000000

`modsecurity_sec_request_body_limit_action`

    Description: Define the 'modsecurity_sec_request_body_limit_action' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'reject'
    Options    :
      Reject        : 'reject' | 'Reject'
      ProcessPartial: 'partial' | 'ProcessPartial'

`modsecurity_sec_request_body_no_files_limit`

    Description: Set the 'modsecurity_sec_request_body_no_files_limit' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 13107200
    Options    :
      Examples: 5000000 | 10000000 | 20000000

`modsecurity_sec_response_body_access`

    Description: Control the 'modsecurity_sec_response_body_access' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`modsecurity_sec_response_body_limit_action`

    Description: Define the 'modsecurity_sec_response_body_limit_action' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'reject'
    Options    :
      Reject        : 'reject' | 'Reject'
      ProcessPartial: 'partial' | 'ProcessPartial'

`modsecurity_sec_rule_engine`

    Description: Define the 'modsecurity_sec_rule_engine' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'DetectionOnly'
    Options    :
      Enable       : 'true' | 'yes' | 'enable'
      Disable      : 'false' | 'no' | 'disable'
      DetectionOnly: 'detect' | 'DetectionOnly'

`modsecurity_sec_server_signature`

    Description: Define the 'modsecurity_sec_server_signature' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'custom' | 'example'
      None    : ''

## Conflicts

## Dependencies

### Packages

`modsecurity`

    Version: >= 2.4
    Name   :
      Debian 11: 'libmodsecurity3'
      Debian 12: 'libmodsecurity3'

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
