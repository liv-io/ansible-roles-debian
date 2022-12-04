# mysqld_exporter

## Description

Simple server that scrapes MySQL stats and exports them via HTTP for
Prometheus consumption.

For proper functioning please also create the following user in MariaDB:

```
vars:
  mariadb_user_all:
    - state: 'true'
      name: 'mysqld_exporter'
      host: 'localhost'
      password: 'ruK.JSj23aN,48vbhELQ2-tUAu3.J5sB'
      password_encrypted: 'false'
      privileges: '*.*:PROCESS,REPLICATION CLIENT'
```

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: mysqld_exporter
  vars:
    mysqld_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: mysqld_exporter
  vars:
    mysqld_exporter_state: 'enable'
    mysqld_exporter_mysql_password: 'crFEM2WG+Wt6N3_n5mu+Tewqc3Jxf2A5'
```

### Disable

```
- hosts: all
  roles:
    - role: mysqld_exporter
  vars:
    mysqld_exporter_state: 'disable'
    mysqld_exporter_mysql_password: 'crFEM2WG+Wt6N3_n5mu+Tewqc3Jxf2A5'
```

### Remove

```
- hosts: all
  roles:
    - role: mysqld_exporter
  vars:
    mysqld_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: mysqld_exporter
  vars:
    mysqld_exporter_state: 'inactive'
```

## Parameters

### Role

`mysqld_exporter_state`

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

`mysqld_exporter_monitor_monit_state`

    Description: Control the 'mysqld_exporter_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`mysqld_exporter_mysql_password`

    Description: Define the 'mysqld_exporter_mysql_password' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'ruK.JSj23aN,48vbhELQ2-tUAu3.J5sB'
    Options    :
      Examples: 'DP,BXtNS_Xq3PoN-SudTqBP.tgJMtBAj' | 'crFEM2WG+Wt6N3_n5mu+Tewqc3Jxf2A5'

`mysqld_exporter_version`

    Description: Define the 'mysqld_exporter_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.12.1'
    Options    :
      Examples: '0.10.0' | '0.11.0'

## Conflicts

## Dependencies

### Archives

`mysqld_exporter`

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
