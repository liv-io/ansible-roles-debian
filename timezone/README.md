# timezone

## Description

Control the system time and date.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: timezone
  vars:
    timezone_state: 'install'
    timezone_timezone: 'Europe/Zurich'
```

### Inactive

```
- hosts: all
  roles:
    - role: timezone
  vars:
    timezone_state: 'inactive'
```

## Parameters

### Role

`timezone_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`timezone_timezone`

    Description: Define the 'timezone_timezone' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'UTC'
    Options    :
      Examples: 'Antarctica/McMurdo' | 'Europe/Zurich' | 'Europe/London'

## Conflicts

## Dependencies

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
