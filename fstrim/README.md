# fstrim

## Description

Discard unused blocks on a mounted filesystem.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: fstrim
  vars:
    fstrim_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: fstrim
  vars:
    fstrim_state: 'enable'
    fstrim_discard_blocks_weekday: '5'
```

### Disable

```
- hosts: all
  roles:
    - role: fstrim
  vars:
    fstrim_state: 'disable'
    fstrim_discard_blocks_weekday: '5'
```

### Remove

```
- hosts: all
  roles:
    - role: fstrim
  vars:
    fstrim_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: fstrim
  vars:
    fstrim_state: 'inactive'
```

## Parameters

### Role

`fstrim_state`

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

`fstrim_discard_blocks_day`

    Description: Define the 'fstrim_discard_blocks_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`fstrim_discard_blocks_hour`

    Description: Define the 'fstrim_discard_blocks_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '1'
    Options    :
      Examples: '5' | '*/6'

`fstrim_discard_blocks_minute`

    Description: Define the 'fstrim_discard_blocks_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{15|random(seed=inventory_hostname)}}"
    Options    :
      Examples: '42' | '*/30'

`fstrim_discard_blocks_month`

    Description: Define the 'fstrim_discard_blocks_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`fstrim_discard_blocks_weekday`

    Description: Define the 'fstrim_discard_blocks_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`fstrim_monitor_mail_from_address`

    Description: Define the 'fstrim_monitor_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`fstrim_monitor_mail_to_address`

    Description: Define the 'fstrim_monitor_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`fstrim_monitor_mail_state`

    Description: Control the 'fstrim_monitor_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`fstrim_monitor_prom_state`

    Description: Control the 'fstrim_monitor_prom_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`fstrim_monitor_prom_textfile_collector`

    Description: Define the 'fstrim_monitor_prom_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

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
