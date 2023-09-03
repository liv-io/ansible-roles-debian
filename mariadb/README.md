# mariadb

## Description

MariaDB is a fast, stable and true multi-user, multi-threaded SQL database
server. SQL (Structured Query Language) is the most popular database query
language in the world. The main goals of MariaDB are speed, robustness and ease
of use.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: mariadb
  vars:
    mariadb_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: mariadb
  vars:
    mariadb_state: 'enable'
    mariadb_root_password: 'fg2RPQ3,hc-V3nQ8_gJNBtN4X_p5Cjq9'
    mariadb_run_backup_keep_days: 7
```

### Disable

```
- hosts: all
  roles:
    - role: mariadb
  vars:
    mariadb_state: 'disable'
    mariadb_root_password: 'fg2RPQ3,hc-V3nQ8_gJNBtN4X_p5Cjq9'
    mariadb_run_backup_keep_days: 7
```

### Remove

```
- hosts: all
  roles:
    - role: mariadb
  vars:
    mariadb_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: mariadb
  vars:
    mariadb_state: 'inactive'
```

### Config

```
vars:
  mariadb_database_group:
    - state: True
      name: 'db01'

  mariadb_database_host:
    - state: False
      name: 'db02'

  mariadb_user_group:
    - state: True
      name: 'admin01'
      host: 'localhost'
      password: '*56EC0CB80AF97B7EDA3E7A19E10C55B708FC7174'
      password_encrypted: True
      privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE,CREATE,ALTER,DROP,CREATE VIEW'

    - state: True
      name: 'user01'
      host: 'localhost'
      password: '*2CACC4AEFC023EF42E02069AAB74A6DCBBBEC11A'
      password_encrypted: True
      privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE'

  mariadb_user_host:
    - state: False
      name: 'admin02'
      host: '%'
      password: 'd9xXjPoe3nhQoLQcevWCHm,9Hs97T5rf'
      password_encrypted: False
      privileges: 'db02.*:ALL'

    - state: False
      name: 'user02'
      host: '%'
      password: 'XFjFXxD5ei_qj267uWsgn2,FJtQood!f'
      password_encrypted: False
      privileges: 'db02.*:SELECT,INSERT,UPDATE,DELETE'
```

## Parameters

### Role

`mariadb_state`

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

`mariadb_database_all`

    Description: Define the 'mariadb_database_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: True, name: 'db01'},
                 {state: False, name: 'db02'}]
      None    : []

`mariadb_database_group`

    Description: Define the 'mariadb_database_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: True, name: 'db01'},
                 {state: False, name: 'db02'}]
      None    : []

`mariadb_database_host`

    Description: Define the 'mariadb_database_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: True, name: 'db01'},
                 {state: False, name: 'db02'}]
      None    : []

`mariadb_config_server`

    Description: Define the 'mariadb_config_server' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        innodb_read_io_threads=4
        innodb_write_io_threads=8
        innodb_buffer_pool_size=20G
        innodb_buffer_pool_load_at_startup=ON
        innodb_log_file_size
        innodb_log_files_in_group=2
        innodb_file_per_table=1
        innodb_log_buffer_size=8M
        innodb_flush_method=O_DIRECT
        innodb_flush_log_at_trx_commit=0
        skip-innodb_doublewrite

`mariadb_monitor_mail_from_address`

    Description: Define the 'mariadb_monitor_mail_from_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`mariadb_monitor_mail_to_address`

    Description: Define the 'mariadb_monitor_mail_to_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`mariadb_monitor_mail_state`

    Description: Control the 'mariadb_monitor_mail_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`mariadb_monitor_monit_state`

    Description: Control the 'mariadb_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`mariadb_monitor_prom_state`

    Description: Control the 'mariadb_monitor_prom_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`mariadb_monitor_prom_textfile_collector`

    Description: Define the 'mariadb_monitor_prom_textfile_collector' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`mariadb_nftables_filter_rule`

    Description: Define the 'mariadb_nftables_filter_rule' option.
    Implemented: 2.0.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3306 counter accept comment "mariadb from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 3306 counter accept comment "mariadb from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 3306 counter accept comment "mariadb from internal-networks"

`mariadb_nftables_state`

    Description: Control the 'mariadb_nftables_state' option.
    Implemented: 2.0.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`mariadb_root_password`

    Description: Define the 'mariadb_root_password' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '6q7FMh2w-KGskqDX82B.g3E_3r7LgS2F' | '3X5wBEMtx-uJaj5bfCq.EeDT5Qd2eMTh'

`mariadb_run_backup_day`

    Description: Define the 'mariadb_run_backup_day' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`mariadb_run_backup_exclude`

    Description: Define the 'mariadb_run_backup_exclude' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['database01', 'name02', 'db03']
      None    : []

`mariadb_run_backup_hour`

    Description: Define the 'mariadb_run_backup_hour' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '1'
    Options    :
      Examples: '5' | '*/6'

`mariadb_run_backup_minute`

    Description: Define the 'mariadb_run_backup_minute' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{30|random(seed=inventory_hostname)}}"
    Options    :
      Examples: '42' | '*/30'

`mariadb_run_backup_month`

    Description: Define the 'mariadb_run_backup_month' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`mariadb_run_backup_state`

    Description: Control the 'mariadb_run_backup_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`mariadb_run_backup_weekday`

    Description: Define the 'mariadb_run_backup_weekday' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`mariadb_user_all`

    Description: Define the 'mariadb_user_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: True, name: 'admin01', host: 'localhost', password: '*56EC0CB80AF97B7EDA3E7A19E10C55B708FC7174', password_encrypted: 'true', privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE,CREATE,ALTER,DROP,CREATE VIEW' },
                 {state: True, name: 'user01', host: 'localhost', password: '*2CACC4AEFC023EF42E02069AAB74A6DCBBBEC11A', password_encrypted: 'true', privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE' },
                 {state: False, name: 'admin02', host: '%', password: 'd9xXjPoe3nhQoLQcevWCHm,9Hs97T5rf', password_encrypted: 'false', privileges: 'db02.*:ALL' },
                 {state: False, name: 'user02', host: '%', password: 'XFjFXxD5ei_qj267uWsgn2,FJtQood!f', password_encrypted: 'false', privileges: 'db02.*:SELECT,INSERT,UPDATE,DELETE' }]
      None    : []

`mariadb_user_group`

    Description: Define the 'mariadb_user_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: True, name: 'admin01', host: 'localhost', password: '*56EC0CB80AF97B7EDA3E7A19E10C55B708FC7174', password_encrypted: 'true', privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE,CREATE,ALTER,DROP,CREATE VIEW' },
                 {state: True, name: 'user01', host: 'localhost', password: '*2CACC4AEFC023EF42E02069AAB74A6DCBBBEC11A', password_encrypted: 'true', privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE' },
                 {state: False, name: 'admin02', host: '%', password: 'd9xXjPoe3nhQoLQcevWCHm,9Hs97T5rf', password_encrypted: 'false', privileges: 'db02.*:ALL' },
                 {state: False, name: 'user02', host: '%', password: 'XFjFXxD5ei_qj267uWsgn2,FJtQood!f', password_encrypted: 'false', privileges: 'db02.*:SELECT,INSERT,UPDATE,DELETE' }]
      None    : []

`mariadb_user_host`

    Description: Define the 'mariadb_user_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: True, name: 'admin01', host: 'localhost', password: '*56EC0CB80AF97B7EDA3E7A19E10C55B708FC7174', password_encrypted: 'true', privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE,CREATE,ALTER,DROP,CREATE VIEW' },
                 {state: True, name: 'user01', host: 'localhost', password: '*2CACC4AEFC023EF42E02069AAB74A6DCBBBEC11A', password_encrypted: 'true', privileges: 'db01.*:SELECT,INSERT,UPDATE,DELETE' },
                 {state: False, name: 'admin02', host: '%', password: 'd9xXjPoe3nhQoLQcevWCHm,9Hs97T5rf', password_encrypted: 'false', privileges: 'db02.*:ALL' },
                 {state: False, name: 'user02', host: '%', password: 'XFjFXxD5ei_qj267uWsgn2,FJtQood!f', password_encrypted: 'false', privileges: 'db02.*:SELECT,INSERT,UPDATE,DELETE' }]
      None    : []

## Conflicts

## Dependencies

### Packages

`mariadb-client`

    Version: >= 10.0
    Name   :
      Debian 11: 'mariadb-client'
      Debian 12: 'mariadb-client'

`mariadb-server`

    Version: >= 10.0
    Name   :
      Debian 11: 'mariadb-server'
      Debian 12: 'mariadb-server'

`mailx`

    Version: >= 8.0
    Name   :
      Debian 11: 'bsd-mailx'
      Debian 12: 'bsd-mailx'

## Parameters

## Requirements

### Control Node

`ansible`

    Version: >= 2.8.0

### Managed Node

`python`

    Version: >= 2.7.0

  Python-MySQL
    Version: >= 1.2.0

## Support

### Operating Systems

`debian`

    Version: 11
    Version: 12
