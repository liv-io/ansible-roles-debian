# unbound_adblock

## Description

Unbound-Adblock is a script/cronjob downloading an upstream hosts file,
transforming it into Unbound syntax and reloading the service on a regular
basis. It blocks annoying and malicious advertisement, telemetry and social
media sites by overriding DNS records.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: unbound_adblock
  vars:
    unbound_adblock_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: unbound_adblock
  vars:
    unbound_adblock_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: unbound_adblock
  vars:
    unbound_adblock_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: unbound_adblock
  vars:
    unbound_adblock_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: unbound_adblock
  vars:
    unbound_adblock_state: 'inactive'
```

## Parameters

### Role

`unbound_adblock_state`

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

`unbound_adblock_mail_from_address`

    Description: Define the 'unbound_adblock_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`unbound_adblock_mail_to_address`

    Description: Define the 'unbound_adblock_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`unbound_adblock_mail_state`

    Description: Control the 'unbound_adblock_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_adblock_prometheus_state`

    Description: Control the 'unbound_adblock_prometheus_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`unbound_adblock_prometheus_textfile_collector`

    Description: Define the 'unbound_adblock_prometheus_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`unbound_adblock_source`

    Description: Define the 'unbound_adblock_source' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts'
    Options    :
      Examples: 'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts'

`unbound_adblock_update_list_day`

    Description: Define the 'unbound_adblock_update_list_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`unbound_adblock_update_list_hour`

    Description: Define the 'unbound_adblock_update_list_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '5'
    Options    :
      Examples: '5' | '*/6'

`unbound_adblock_update_list_minute`

    Description: Define the 'unbound_adblock_update_list_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*/20'
    Options    :
      Examples: '42' | '*/30'

`unbound_adblock_update_list_month`

    Description: Define the 'unbound_adblock_update_list_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`unbound_adblock_update_list_weekday`

    Description: Define the 'unbound_adblock_update_list_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`unbound_adblock_update_list_offset_limit`

    Description: Set the 'unbound_adblock_update_list_offset_limit' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 1000
    Options    :
      Examples: 200 | 500 | 1000 | 1500

`unbound_adblock_update_list_state`

    Description: Control the 'unbound_adblock_update_list_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`curl`

    Version: >= 7.0
    Name   :
      Debian 12: 'curl'
      Debian 13: 'curl'

### Roles

`sudo`

`unbound`

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
