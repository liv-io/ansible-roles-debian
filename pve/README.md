# pve_user

## Description

Proxmox VE management

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pve_user
  vars:
    pve_user_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: pve_user
  vars:
    pve_user_state: 'install'
```

### Config

```
vars:
  pve_acl_config_all:
    - groups: ['sysadmin']
      roles: ['Administrator']
      state: True

    - groups: ['appadmin']
      roles: ['PVEAdmin']
      state: True

    - groups: ['auditor']
      roles: ['PVEAuditor']
      state: True

  pve_group_config_all:
    - name: 'sysadmin'
      state: True

    - name: 'appadmin'
      state: True

    - name: 'auditor'
      state: True

    - name: 'pvevmuser'
      state: True

  pve_user_config_all:
    - name: 'user01@pam'
      groups: ['sysadmin']
      state: True

    - name: 'user02@pam'
      groups: ['appadmin']
      state: True

    - name: 'user03@pam'
      groups: ['auditor']
      state: True

    - name: 'user04@pam'
      groups: ['pvevmuser', 'auditor']
      state: False
```

## Parameters

### Role

`pve_user_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`pve_acl_config_all`

    Description: Define the 'pve_acl_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{groups: ['sysadmin'], roles: ['Administrator'], state: True}] |
                [{groups: ['appadmin'], roles: ['PVEAdmin'], state: True}]
      None    : []

`pve_acl_config_group`

    Description: Define the 'pve_acl_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{groups: ['sysadmin'], roles: ['Administrator'], state: True}] |
                [{groups: ['appadmin'], roles: ['PVEAdmin'], state: True}]
      None    : []

`pve_acl_config_host`

    Description: Define the 'pve_acl_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{groups: ['sysadmin'], roles: ['Administrator'], state: True}] |
                [{groups: ['appadmin'], roles: ['PVEAdmin'], state: True}]
      None    : []

`pve_group_config_all`

    Description: Define the 'pve_group_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'sysadmin', state: True},
                 {name: 'appadmin', state: True}]
      None    : []

`pve_group_config_group`

    Description: Define the 'pve_group_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'sysadmin', state: True},
                 {name: 'appadmin', state: True}]
      None    : []

`pve_group_config_host`

    Description: Define the 'pve_group_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'sysadmin', state: True},
                 {name: 'appadmin', state: True}]
      None    : []

`pve_user_config_all`

    Description: Define the 'pve_user_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'user01@pam', groups: ['sysadmin'], state: True},
                 {name: 'user02@pam', groups: ['appadmin'], state: True}]
      None    : []

`pve_user_config_group`

    Description: Define the 'pve_user_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'user01@pam', groups: ['sysadmin'], state: True},
                 {name: 'user02@pam', groups: ['appadmin'], state: True}]
      None    : []

`pve_user_config_host`

    Description: Define the 'pve_user_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'user01@pam', groups: ['sysadmin'], state: True},
                 {name: 'user02@pam', groups: ['appadmin'], state: True}]
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
