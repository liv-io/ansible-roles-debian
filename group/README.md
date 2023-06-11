# group

## Description

Create, update and delete groups with this role.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: group
  vars:
    group_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: group
  vars:
    group_state: 'inactive'
```

### Config

```
vars:
  group_config_all:
    - name: 'group01'
      state: 'true'
      gid: '2001'

    - name: 'group02'
      state: 'true'
      system: 'true'

  group_config_group:
    - name: 'group03'
      state: 'false'
      gid: '2003'

  group_config_host:
    - name: 'group04'
      state: 'false'
```

## Parameters

### Config

`state`

    Description: Control the state of the group.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'true'
    Options    :
      Install: 'true' | 'yes' | 'install'
      Remove : 'false' | 'no' | 'remove'

`name`

    Description: Define the name of the group.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'group01' | 'group02' | 'group03' | 'group04'

`gid`

    Description: Set the GID of the group.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '2001' | '2002' | '2003' | '2004'

`system`

    Description: Control whether to create a system group.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

### Role

`group_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`group_config_all`

    Description: Define the 'group_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'group01', state: 'true', gid: '2001'},
                 {name: 'group02', state: 'true', gid: '2002'}]
      None    : []

`group_config_group`

    Description: Define the 'group_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'group01', state: 'true', gid: '2001'},
                 {name: 'group02', state: 'true', gid: '2002'}]
      None    : []

`group_config_host`

    Description: Define the 'group_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'group01', state: 'true', gid: '2001'},
                 {name: 'group02', state: 'true', gid: '2002'}]
      None    : []

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
    Version: 12
