# zfs

## Description

ZFS is a combined file system and logical volume manager designed by Sun
Microsystems.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: zfs
  vars:
    zfs_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: zfs
  vars:
    zfs_state: 'enable'
    zfs_check_pools_state: True
    zfs_scrub_pools_state: True
    zfs_scrub_pools_pools: ['hdd_pool', 'ssd-slc_pool', 'ssd-mlc_pool']
    zfs_mail_from_address: 'root@domain.tld'
    zfs_mail_to_address: ["user@domain.tld"]
    zfs_mail_state: True
```

### Disable

```
- hosts: all
  roles:
    - role: zfs
  vars:
    zfs_state: 'disable'
    zfs_check_pools_state: True
    zfs_scrub_pools_state: False
    zfs_scrub_pools_pools: ['hdd_pool', 'ssd-slc_pool', 'ssd-mlc_pool']
    zfs_mail_from_address: 'root@domain.tld'
    zfs_mail_to_address: ["user@domain.tld"]
    zfs_mail_state: True
```

### Remove

```
- hosts: all
  roles:
    - role: zfs
  vars:
    zfs_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: zfs
  vars:
    zfs_state: 'inactive'
```

## Parameters

### Role

`zfs_state`

    Description: Control the state of the role.
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

`zfs_check_pools_day`

    Description: Define the 'zfs_check_pools_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`zfs_check_pools_hour`

    Description: Define the 'zfs_check_pools_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '5' | '*/6'

`zfs_check_pools_minute`

    Description: Define the 'zfs_check_pools_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*/15'
    Options    :
      Examples: '42' | '*/30'

`zfs_check_pools_month`

    Description: Define the 'zfs_check_pools_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`zfs_check_pools_weekday`

    Description: Define the 'zfs_check_pools_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`zfs_check_pools_state`

    Description: Control the 'zfs_check_pools_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`zfs_mail_from_address`

    Description: Define the 'zfs_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`zfs_mail_to_address`

    Description: Define the 'zfs_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld'] |
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`zfs_mail_state`

    Description: Control the 'zfs_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`zfs_prometheus_state`

    Description: Control the 'zfs_prometheus_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`zfs_prometheus_textfile_collector`

    Description: Define the 'zfs_prometheus_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`zfs_scrub_pools_day`

    Description: Define the 'zfs_scrub_pools_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`zfs_scrub_pools_hour`

    Description: Define the 'zfs_scrub_pools_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '1'
    Options    :
      Examples: '5' | '*/6'

`zfs_scrub_pools_minute`

    Description: Define the 'zfs_scrub_pools_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{30|random(seed=inventory_hostname)}}"
    Options    :
      Examples: '42' | '*/30'

`zfs_scrub_pools_month`

    Description: Define the 'zfs_scrub_pools_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`zfs_scrub_pools_weekday`

    Description: Define the 'zfs_scrub_pools_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '5'
    Options    :
      Examples: '6' | 'Saturday'

`zfs_scrub_pools_pools`

    Description: Define the 'zfs_scrub_pools_pools' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['*']
    Options    :
      Examples: ['*'] | ['tank'] | ['ssd_pool', 'hdd_pool'] |
                ['ssd-slc_pool', 'ssd-mlc_pool', 'ssd-tlc_pool']
      None    : []

`zfs_scrub_pools_state`

    Description: Control the 'zfs_scrub_pools_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`zfs_trim_pools_day`

    Description: Define the 'zfs_trim_pools_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`zfs_trim_pools_hour`

    Description: Define the 'zfs_trim_pools_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '6'
    Options    :
      Examples: '5' | '*/6'

`zfs_trim_pools_minute`

    Description: Define the 'zfs_trim_pools_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{30|random(seed=inventory_hostname)}}"
    Options    :
      Examples: '42' | '*/30'

`zfs_trim_pools_month`

    Description: Define the 'zfs_trim_pools_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`zfs_trim_pools_weekday`

    Description: Define the 'zfs_trim_pools_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '5'
    Options    :
      Examples: '6' | 'Saturday'

`zfs_trim_pools_pools`

    Description: Define the 'zfs_trim_pools_pools' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['*']
    Options    :
      Examples: ['*'] | ['tank'] | ['ssd_pool', 'hdd_pool'] |
                ['ssd-slc_pool', 'ssd-mlc_pool', 'ssd-tlc_pool']
      None    : []

`zfs_trim_pools_state`

    Description: Control the 'zfs_trim_pools_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`mailx`

    Version: >= 8.0
    Name   :
      Debian 12: 'bsd-mailx'
      Debian 13: 'bsd-mailx'

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

    Version: 12
    Version: 13
