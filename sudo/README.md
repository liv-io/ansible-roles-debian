# sudo

## Description

Sudo (superuser do) allows a system administrator to give certain users (or
groups of users) the ability to run some (or all) commands as root while logging
all commands and arguments. Sudo operates on a per-command basis. It is not a
replacement for the shell. Features include: the ability to restrict what
commands a user may run on a per-host basis, copious logging of each command
(providing a clear audit trail of who did what), a configurable timeout of the
sudo command, and the ability to use the same configuration file (sudoers) on
many different machines.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: sudo
  vars:
    sudo_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: sudo
  vars:
    sudo_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: sudo
  vars:
    sudo_state: 'inactive'
```

### Config

```
vars:
  sudo_config_all:
    - name: 'root'
      state: True
      config: |
        # root
        root ALL=(ALL) ALL

    - name: 'ansible'
      state: True
      config: |
        # Ansible Configuration Management
        ansible ALL=(root) NOPASSWD: ALL

  sudo_config_group:
    - name: 'sysadmin'
      state: True
      config: |
        # System Administrators
        %sysadmin ALL=(ALL) ALL

    - name: 'dbadmin'
      state: True
      config: |
        # Database Administrators
        %dbadmin ALL=(root) service mysqld restart, service mysql restart

    - name: 'appadmin'
      state: True
      config: |
        # Application Administrators
        %appadmin ALL=(root) NOPASSWD: service apache2 graceful, NOPASSWD: service httpd graceful

  sudo_config_host:
    - name: 'obsolete'
      state: False
```

## Parameters

### Config

`state`

    Description: Control the 'state' of the sudo file.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`name`

    Description: Define the 'name' of the sudo file.
                 For more details see 'man sudo' or 'sudo --help'.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : 'config'
    Options    :
      Examples: 'sysadmin' | 'dbadmin' | 'appadmin'

`config`

    Description: Define the 'config' entry/entries.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        # System Administrators
        %sysadmin ALL=(ALL) ALL
        # Database Administrators
        %dbadmin ALL=(root) service mysqld restart, service mysql restart
        # Application Administrators
        %appadmin ALL=(root) NOPASSWD: service apache2 graceful, NOPASSWD: service httpd graceful
      None    : ''

`order`

    Description: Define the 'order' of the sudo file.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : ''
    Options    :
      Examples: '05' | '23' | '42' | '55'
      None    : ''

### Role

`sudo_state`

    Description: Control the state of the role.
                 'sudo' is a core package and should therefore not be removed.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`sudo_config_all`

    Description: Define the 'sudo_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: - name: 'root'
                  state: True
                  order: '10'
                  config: |
                    root ALL=(ALL) ALL
                - name: 'sysadmin'
                  state: True
                  order: '50'
                  config: |
                    %sysadmin ALL=(ALL) ALL
      None    : []

`sudo_config_group`

    Description: Define the 'sudo_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: - name: 'root'
                  state: True
                  order: '10'
                  config: |
                    root ALL=(ALL) ALL
                - name: 'sysadmin'
                  state: True
                  order: '50'
                  config: |
                    %sysadmin ALL=(ALL) ALL
      None    : []

`sudo_config_host`

    Description: Define the 'sudo_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: - name: 'root'
                  state: True
                  order: '10'
                  config: |
                    root ALL=(ALL) ALL
                - name: 'sysadmin'
                  state: True
                  order: '50'
                  config: |
                    %sysadmin ALL=(ALL) ALL
      None    : []

`sudo_insults`

    Description: Control the 'sudo_insults' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`sudo_lecture`

    Description: Control the 'sudo_lecture' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`sudo`

    Version: >= 1.8
    Name   :
      Debian 11: 'sudo'
      Debian 12: 'sudo'

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
