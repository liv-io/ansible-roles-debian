# lego

## Description

Let's Encrypt/ACME client and library written in Go.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: lego
  vars:
    lego_state: 'inactive'
```

## Parameters

### Role

`lego_state`

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

`lego_domains`

    Description: Define the 'lego_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['host.domain.tld'] | ['host.example.com', 'host.example.org']
      None     : []

`lego_email`

    Description: Define the 'lego_email' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user@domain.tld' | 'admin@example.com'

`fstrim_prometheus_state`

    Description: Control the 'fstrim_prometheus_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`fstrim_prometheus_textfile_collector`

    Description: Define the 'fstrim_prometheus_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`lego_discard_blocks_day`

    Description: Define the 'lego_discard_blocks_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`lego_discard_blocks_hour`

    Description: Define the 'lego_discard_blocks_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '5'
    Options    :
      Examples: '5' | '*/6'

`lego_discard_blocks_minute`

    Description: Define the 'lego_discard_blocks_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{45|random(seed=inventory_hostname)}}"
    Options    :
      Examples: '42' | '*/30'

`lego_discard_blocks_month`

    Description: Define the 'lego_discard_blocks_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`lego_discard_blocks_weekday`

    Description: Define the 'lego_discard_blocks_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`lego_mail_from_address`

    Description: Define the 'lego_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`lego_mail_to_address`

    Description: Define the 'lego_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`lego_mail_state`

    Description: Control the 'lego_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lego_prometheus_state`

    Description: Control the 'lego_prometheus_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`lego_prometheus_textfile_collector`

    Description: Define the 'lego_prometheus_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`lego_server`

    Description: Define the 'lego_server' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'https://acme-v02.api.letsencrypt.org/directory' | 'https://ca.example.com/acme/acme/directory'

`lego_version`

    Description: Define the 'lego_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '4.30.1'
    Options    :
      Examples: '4.22.0' | '4.22.1'

## Conflicts

## Dependencies

### Archives

`lego`

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
