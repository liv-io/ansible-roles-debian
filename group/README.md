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
      state: True
      gid: '2001'

    - name: 'group02'
      state: True
      system: True

  group_config_group:
    - name: 'group03'
      state: False
      gid: '2003'

  group_config_host:
    - name: 'group04'
      state: False
```

## Parameters

### Config

`state`

    Description: Control the state of the group.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'true'
    Options    :
      Install: 'true' | 'yes' | 'install'
      Remove : 'false' | 'no' | 'remove'

`name`

    Description: Define the name of the group.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'group01' | 'group02' | 'group03' | 'group04'

`gid`

    Description: Set the GID of the group.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '2001' | '2002' | '2003' | '2004'

`system`

    Description: Control whether to create a system group.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

### Role

`group_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`group_config_all`

    Description: Define the 'group_config_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'group01', state: True, gid: '2001'},
                 {name: 'group02', state: True, gid: '2002'}]
      None    : []

`group_config_group`

    Description: Define the 'group_config_group' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'group01', state: True, gid: '2001'},
                 {name: 'group02', state: True, gid: '2002'}]
      None    : []

`group_config_host`

    Description: Define the 'group_config_host' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'group01', state: True, gid: '2001'},
                 {name: 'group02', state: True, gid: '2002'}]
      None    : []

## Conflicts

## Dependencies

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
