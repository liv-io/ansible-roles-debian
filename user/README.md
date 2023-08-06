# user

## Description

Create, update and delete user accounts and manage the user's 'authorized keys'.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: user
  vars:
    user_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: user
  vars:
    user_state: 'inactive'
```

### Config

```
vars:
  user_config_all:
    - name: 'user01'
      state: True
      comment: 'Example User 01'
      uid: '1001'
      groups: ['group01', 'group02']
      groups_append: True
      password: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1'
      password_update: True
      shell: '/bin/bash'
      authorized_keys:
        - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINy32iAhakwnk2w9uBQgFx8+tJWPgjbz9mjMRXNQM0tp user@host01'
        - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC2yYQ2Q95SKxt71jXDNqtCtBQvcnMd8lqRsIdGZK375 user@host02'

  user_config_group:
    - name: 'user02'
      state: True
      comment: 'Example User 02'
      uid: '1002'
      groups: ['group02']
      groups_append: True
      password: '$6$Zmgm4Yd2$d3L6CMZLZk6BFrRelx0YEHeXqmrQqAOVaPhElTq.lqH14MhFS6w6Tupp8LJ1fjvvlicnZ4/Ok9VnC.Pvs0hsQ0'
      password_update: True
      shell: '/bin/bash'
      authorized_keys: []

  user_config_host:
    - name: 'user03'
      state: False
      uid: '1003'
      home_remove: True
      home_force: True
      authorized_keys: []
```

## Parameters

### Config

`state`

    Description: Control the state of the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    :
      True : True
      False: False

`name`

    Description: Define the name of the user.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user01' | 'user02' | 'user03'

`comment`

    Description: Define a comment for the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "{{user.name}}"
    Options    :
      Examples: 'Example User' | 'Test User' | 'Service User'

`uid`

    Description: Set the UID of the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '1001' | '1002' | '1003'

`group`

    Description: Define the primary group of the user.
                 Ensure the group exists before specifing
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'nobody'
    Options    :
      Examples: 'group01' | 'group02' | 'group03'

`groups`

    Description: Define the groups of the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['nobody']
    Options    :
      Examples: ['group01'] |
                ['group01', 'group02'] |
                ['group01', 'group02', 'group03']

`groups_append`

    Description: Control whether to append or overwrite the group membership.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`home`

    Description: Define the home of the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "/home/{{user.name}}"
    Options    :
      Examples: '/home/user01' | '/opt/user02' | '/user03'

`home_create`

    Description: Control whether to create the home directory.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`home_move`

    Description: Control whether to move the home directory.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`home_remove`

    Description: Control whether to remove the home directory when removing the
                 user.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`home_force`

    Description: Control whether to force the removal of the home directory when
                 removing the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`password`

    Description: Define the password for the user.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary cryptographic hash
    Type       : String
    Default    : '!'
    Options    :
      Examples: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1' |
                '$6$Dgjf366H$mpoaFpK8rIaGSpaxhpJIu5AvinfCOLK2WQhnfm3UTwLNBfyCU494fXEYPsrUobsQ7hCcbv8GqwiJjmuhoGqL00' |
                '$6$Zmgm4Yd2$d3L6CMZLZk6BFrRelx0YEHeXqmrQqAOVaPhElTq.lqH14MhFS6w6Tupp8LJ1fjvvlicnZ4/Ok9VnC.Pvs0hsQ0'

`password_update`

    Description: Control whether to initially set or continuously update the
                 password.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    :
      True : True
      False: False

`system`

    Description: Control whether to create a system user.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    :
      True : True
      False: False

`authorized_keys`

    Description: Define the authorized_keys of the user.
    Implemented: 2.0.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINy32iAhakwnk2w9uBQgFx8+tJWPgjbz9mjMRXNQM0tp user@host01',
                 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC2yYQ2Q95SKxt71jXDNqtCtBQvcnMd8lqRsIdGZK375 user@host02']
      None    : []

### Role

`user_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`user_config_all`

    Description: Define the 'user_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'user01', state: True, comment: 'Example User 01', uid: '1001', groups: {'group01'},
                 groups_append: True, password: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1',
                 password_update: True, shell: '/bin/bash', authorized_keys: []}]
      None    : []

`user_config_group`

    Description: Define the 'user_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'user01', state: True, comment: 'Example User 01', uid: '1001', groups: {'group01'},
                 groups_append: True, password: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1',
                 password_update: True, shell: '/bin/bash', authorized_keys: []}]
      None    : []

`user_config_host`

    Description: Define the 'user_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'user01', state: True, comment: 'Example User 01', uid: '1001', groups: {'group01'},
                 groups_append: True, password: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1',
                 password_update: True, shell: '/bin/bash', authorized_keys: []}]
      None    : []

## Conflicts

## Dependencies

### Roles

`passwd`

`shadow`

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
