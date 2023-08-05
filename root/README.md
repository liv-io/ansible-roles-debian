# root

## Description

Manage the root user account.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: root
  vars:
    root_state: 'install'
    root_password: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1'
    root_shell: '/bin/sh'
```

### Remove

```
- hosts: all
  roles:
    - role: root
  vars:
    root_state: 'remove'
    root_password: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1'
    root_shell: '/bin/sh'
```

### Inactive

```
- hosts: all
  roles:
    - role: root
  vars:
    root_state: 'inactive'
```

## Parameters

### Role

`root_state`

    Description: Control the state of the role.
                 'root' is a core role and should therefore not be removed.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`root_comment`

    Description: Define the 'root_comment' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'root'
    Options    :
      Examples: 'root' | 'superuser'

`root_groups`

    Description: Define the 'root_groups' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['group01'] |
                ['group01', 'group02'] |
                ['group01', 'group02', 'group03']

`root_groups_append`

    Description: Control the 'root_groups_append' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`root_password`

    Description: Define the 'root_password' option.
                 Warning: Define 'root_password' option before applying role.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary cryptographic hash
    Type       : String
    Default    : '!'
    Options    :
      Examples: '$6$qnvq4oxb$F5E0WGpSCSGLYbbgOaqcz/uNagqAWRy8eDEsH1HzQ8Mq5tkfbHrXKhyt9f8XiJpancQw8AOGLnA0ITynFIOrV1' |
                '$6$Dgjf366H$mpoaFpK8rIaGSpaxhpJIu5AvinfCOLK2WQhnfm3UTwLNBfyCU494fXEYPsrUobsQ7hCcbv8GqwiJjmuhoGqL00' |
                '$6$Zmgm4Yd2$d3L6CMZLZk6BFrRelx0YEHeXqmrQqAOVaPhElTq.lqH14MhFS6w6Tupp8LJ1fjvvlicnZ4/Ok9VnC.Pvs0hsQ0'

`root_root_dir_group`

    Description: Define the 'root_root_dir_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'root'
    Options    :
      Examples: 'root' | 'wheel' | 'sysadmin'

`root_root_dir_mode`

    Description: Define the 'root_root_dir_mode' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0700'
    Options    :
      Examples: '0700' | '0750'

`root_root_dir_owner`

    Description: Define the 'root_root_dir_owner' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'root'
    Options    :
      Examples: 'root'

`root_shell`

    Description: Define the 'root_shell' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/bin/bash'
    Options    :
      Examples: '/bin/bash' | '/bin/sh' | '/bin/csh' | '/bin/ksh' | '/bin/zsh'

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
