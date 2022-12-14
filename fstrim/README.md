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

`fstrim_discard_blocks_day`

    Description: Define the 'fstrim_discard_blocks_day' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`fstrim_discard_blocks_hour`

    Description: Define the 'fstrim_discard_blocks_hour' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '1'
    Options    :
      Examples: '5' | '*/6'

`fstrim_discard_blocks_minute`

    Description: Define the 'fstrim_discard_blocks_minute' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{(15|random(seed=inventory_hostname))}}"
    Options    :
      Examples: '42' | '*/30'

`fstrim_discard_blocks_month`

    Description: Define the 'fstrim_discard_blocks_month' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`fstrim_discard_blocks_weekday`

    Description: Define the 'fstrim_discard_blocks_weekday' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`fstrim_monitor_mail_from_address`

    Description: Define the 'fstrim_monitor_mail_from_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`fstrim_monitor_mail_to_address`

    Description: Define the 'fstrim_monitor_mail_to_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`fstrim_monitor_mail_state`

    Description: Control the 'fstrim_monitor_mail_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`fstrim_monitor_prom_state`

    Description: Control the 'fstrim_monitor_prom_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`fstrim_monitor_prom_textfile_collector`

    Description: Define the 'fstrim_monitor_prom_textfile_collector' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

## Conflicts

## Dependencies

### Roles

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