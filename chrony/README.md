# chrony

## Description

chrony is a versatile implementation of the Network Time Protocol (NTP). It can
synchronise the system clock with NTP servers, reference clocks (e.g. GPS
receiver), and manual input using wristwatch and keyboard. It can also operate
as an NTPv4 (RFC 5905) server and peer to provide a time service to other
computers in the network.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: chrony
  vars:
    chrony_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: chrony
  vars:
    chrony_state: 'enable'
    chrony_server:
      - {address: "{{ansible_default_ipv4.gateway}}", options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Default IPv4 gateway'}
```

### Disable

```
- hosts: all
  roles:
    - role: chrony
  vars:
    chrony_state: 'disable'
    chrony_server:
      - {address: "{{ansible_default_ipv4.gateway}}", options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Default IPv4 gateway'}
```

### Cronjob

```
- hosts: all
  roles:
    - role: chrony
  vars:
    chrony_state: 'cronjob'
    chrony_server:
      - {address: '195.176.26.204', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'}
      - {address: '195.176.26.205', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'}
      - {address: '195.176.26.206', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'}
      - {address: '192.33.96.101', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Swiss Federal Institute of Technology Zurich'}
      - {address: '192.33.96.102', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Swiss Federal Institute of Technology Zurich'}
```

### Remove

```
- hosts: all
  roles:
    - role: chrony
  vars:
    chrony_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: chrony
  vars:
    chrony_state: 'inactive'
```

## Parameters

### Role

`chrony_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Enable  : 'start' | 'on' | 'enable'
      Disable : 'stop' | 'off' | 'disable'
      Cronjob : 'cron' | 'cronjob'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

`chrony_access`

    Description: Define the 'chrony_access' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{action: 'deny', source: 'all', comment: 'Deny from all'}]
    Options    :
      Examples: [{action: 'allow', source: '10.0.0.0/24', comment: '10.0.0.0/24'},
                 {action: 'allow', source: '10.0.1.0/24', comment: '10.0.1.0/24'},
                 {action: 'allow', source: '127.0.0.1', comment: 'IPv4 localhost'},
                 {action: 'allow', source: '::1', comment: 'IPv6 localhost'}] |
                [{action: 'allow', source: '2001:0db8:85a3:08d3:1319:8a2e:0370:7347', comment: 'IPv6 host'},
                 {action: 'allow', source: '2001:0ec9:96b4:19e4:2421:9b3f:1480:8458', comment: 'IPv6 host'},
                 {action: 'allow', source: '127.0.0.1', comment: 'IPv4 localhost'},
                 {action: 'allow', source: '-6 ::1', comment: 'IPv6 localhost'}]

`chrony_bind_address`

    Description: Define the 'chrony_bind_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['0.0.0.0'] | ['127.0.0.1', '::1'] |
                ['192.168.1.1', '2001:0ec9:96b4:19e4:2421:9b3f:1480:8458']
      None    : []

`chrony_check_time_day`

    Description: Define the 'chrony_check_time_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`chrony_check_time_hour`

    Description: Define the 'chrony_check_time_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '5' | '*/6'

`chrony_check_time_minute`

    Description: Define the 'chrony_check_time_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*/10'
    Options    :
      Examples: '42' | '*/30'

`chrony_check_time_month`

    Description: Define the 'chrony_check_time_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`chrony_check_time_weekday`

    Description: Define the 'chrony_check_time_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`chrony_check_time_offset_limit`

    Description: Set the 'chrony_check_time_offset_limit' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 1
    Options    :
      Examples: 0.2 | 0.5 | 1 | 1.5

`chrony_check_time_state`

    Description: Control the 'chrony_check_time_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`chrony_mail_from_address`

    Description: Define the 'chrony_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`chrony_mail_to_address`

    Description: Define the 'chrony_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`chrony_mail_state`

    Description: Control the 'chrony_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`chrony_monit_state`

    Description: Control the 'chrony_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`chrony_nftables_filter_rule`

    Description: Define the 'chrony_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter OUTPUT ct state new udp dport 123 counter accept comment "ntp to any"
      add rule ip6 filter OUTPUT ct state new udp dport 123 counter accept comment "ntp to any"
    Options    :
      Examples: |
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new udp dport 123 counter accept comment "ntp to internal-networks"

`chrony_nftables_state`

    Description: Control the 'chrony_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`chrony_pool`

    Description: Define the 'chrony_pool' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{address: 'pool.domain.tld', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'}]
      None    : []

`chrony_prometheus_state`

    Description: Control the 'chrony_prometheus_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`chrony_prometheus_textfile_collector`

    Description: Define the 'chrony_prometheus_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`chrony_server`

    Description: Define the 'chrony_server' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{address: "chrony.{{ansible_domain}}", options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Default NTP server'}]
    Options    :
      Examples: [{address: '195.176.26.204', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'},
                 {address: '195.176.26.205', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'},
                 {address: '195.176.26.206', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Federal Institute of Metrology METAS'},
                 {address: '192.33.96.101', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Swiss Federal Institute of Technology Zurich'},
                 {address: '192.33.96.102', options: {'burst', 'prefer', 'minpoll 4', 'maxpoll 6'}, comment: 'Swiss Federal Institute of Technology Zurich'}]
      None    : []

`chrony_update_time_day`

    Description: Define the 'chrony_update_time_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`chrony_update_time_hour`

    Description: Define the 'chrony_update_time_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '5' | '*/6'

`chrony_update_time_minute`

    Description: Define the 'chrony_update_time_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*/10'
    Options    :
      Examples: '42' | '*/30'

`chrony_update_time_month`

    Description: Define the 'chrony_update_time_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`chrony_update_time_weekday`

    Description: Define the 'chrony_update_time_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

## Conflicts

### Roles

`openntpd`

## Dependencies

### Packages

`chrony`

    Version: >= 3.0
    Name   :
      Debian 12: 'chrony'
      Debian 13: 'chrony'

`bc`

    Version: >= 1.0
    Name   :
      Debian 12: 'bc'
      Debian 13: 'bc'

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
