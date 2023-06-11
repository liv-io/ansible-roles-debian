# restic

## Description

Restic is a program that does backups right and was designed to be easy, fast
verifiable, secure and efficient.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: restic
  vars:
    restic_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: restic
  vars:
    restic_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: restic
  vars:
    restic_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: restic
  vars:
    restic_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: restic
  vars:
    restic_state: 'inactive'
```

## Parameters

### Role

`restic_state`

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

`restic_cacert`

    Description: Define the 'restic_cacert' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/etc/pki/file.crt' | '/etc/ssl/file.crt'
      None    : ''

`restic_exclude`

    Description: Define the 'restic_exclude' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['/data/restic', '/data/rest-server', '/tmp', '/var/tmp']
    Options    :
      Examples: ['/tmp', '/data/example/*.tmp']
      None    : []

`restic_include`

    Description: Define the 'restic_include' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['/app', '/backup', '/data', '/etc', '/home', '/opt', '/root', '/usr/local/etc', '/var/log', '/var/opt', '/var/www']
    Options    :
      Examples: ['/backup', '/data/example/*.data']
      None    : []

`restic_keep_daily`

    Description: Set the 'restic_keep_daily' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 7
    Options    :
      Examples: 1 | 2 | 3

`restic_keep_hourly`

    Description: Set the 'restic_keep_hourly' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 12
    Options    :
      Examples: 3 | 12 | 24

`restic_keep_monthly`

    Description: Set the 'restic_keep_monthly' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 3
    Options    :
      Examples: 1 | 2 | 3

`restic_keep_weekly`

    Description: Set the 'restic_keep_weekly' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 4
    Options    :
      Examples: 1 | 2 | 3

`restic_limit_download`

    Description: Set the 'restic_limit_download' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 0
    Options    :
      Examples: 0 | 1024 | 4096 | 8192

`restic_limit_upload`

    Description: Set the 'restic_limit_upload' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 0
    Options    :
      Examples: 0 | 1024 | 4096 | 8192

`restic_monitor_mail_from_address`

    Description: Define the 'restic_monitor_mail_from_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`restic_monitor_mail_to_address`

    Description: Define the 'restic_monitor_mail_to_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`restic_monitor_mail_state`

    Description: Control the 'restic_monitor_mail_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`restic_monitor_prom_state`

    Description: Control the 'restic_monitor_prom_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`restic_monitor_prom_textfile_collector`

    Description: Define the 'restic_monitor_prom_textfile_collector' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`restic_password`

    Description: Define the 'restic_password' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '2t-C7s9fC_VR4jtm-Nv5,Uj7UdM3kv.8'
    Options    :
      Examples: 'qW.t_hvfFp9BHtFt-xsFqCq_42jwNDgs' | 'pLj6.us3u-CHMSd5FHV8oq28q3NKfn_i'

`restic_run_backup_day`

    Description: Define the 'restic_run_backup_day' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`restic_run_backup_hour`

    Description: Define the 'restic_run_backup_hour' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '2'
    Options    :
      Examples: '5' | '*/6'

`restic_run_backup_minute`

    Description: Define the 'restic_run_backup_minute' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{(10|random(seed=inventory_hostname))}}"
    Options    :
      Examples: '42' | '*/30'

`restic_run_backup_month`

    Description: Define the 'restic_run_backup_month' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`restic_run_backup_weekday`

    Description: Define the 'restic_run_backup_weekday' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`restic_server_address`

    Description: Define the 'restic_server_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "backup.{{ansible_domain}}"
    Options    :
      Examples: 'backup.domain.tld' | 'restic.domain.tld'

`restic_server_password`

    Description: Define the 'restic_server_password' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'GV4ajws_aG4nKR.7bgn3'
    Options    :
      Examples: 'vHK.kQ9bsWrL4ePaDn_5' | 'm2wL.E57MdnrSgFSP_AC'

`restic_server_port`

    Description: Define the 'restic_server_port' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '443'
    Options    :
      Examples: '443' | '8000'

`restic_server_username`

    Description: Define the 'restic_server_username' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'restic'
    Options    :
      Examples: 'restic' | 'backup'

`restic_version`

    Description: Define the 'restic_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.15.2'
    Options    :
      Examples: '0.9.3' | '0.9.2'

## Conflicts

## Dependencies

### Packages

`restic`

### Roles

`bzip2`

`mailx`

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
