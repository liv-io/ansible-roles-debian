# rest_server

## Description

Rest Server is a high performance HTTP server that implements restic's REST
backend API.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: rest_server
  vars:
    rest_server_state: 'inactive'
```

## Parameters

### Role

`rest_server_state`

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

`rest_server_monitor_monit_state`

    Description: Control the 'rest_server_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`rest_server_options`

    Description: Define the 'rest_server_options' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['--path /data/rest-server', '--prometheus', '--no-auth']
    Options    :
      Examples: ['--prometheus'] | ['--path /data/restic', '--prometheus']
      None    : []

`rest_server_version`

    Description: Define the 'rest_server_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.12.0'
    Options    :
      Examples: '0.9.5' | '0.9.6'

## Conflicts

## Dependencies

### Archives

`rest-server`

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
