# systemd_timesyncd

## Description

systemd-timesyncd is a system service that may be used to synchronize the local
system clock with a remote Network Time Protocol server. It also saves the local
time to disk every time the clock has been synchronized and uses this to
possibly advance the system realtime clock on subsequent reboots to ensure it
monotonically advances even if the system lacks a battery-buffered RTC chip.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Enable

```
- hosts: all
  roles:
    - role: systemd_timesyncd
  vars:
    systemd_timesyncd_state: 'enable'
    systemd_timesyncd_server: ["{{ansible_default_ipv4.gateway}}"]
```

### Disable

```
- hosts: all
  roles:
    - role: systemd_timesyncd
  vars:
    systemd_timesyncd_state: 'disable'
    systemd_timesyncd_server: ["{{ansible_default_ipv4.gateway}}"]
```

### Inactive

```
- hosts: all
  roles:
    - role: systemd_timesyncd
  vars:
    systemd_timesyncd_state: 'inactive'
```

## Parameters

### Role

`systemd_timesyncd_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Enable  : 'start' | 'on' | 'enable'
      Disable : 'stop' | 'off' | 'disable'
      Inactive: 'quiesce' | 'inactive'

`systemd_timesyncd_check_time_day`

    Description: Define the 'systemd_timesyncd_check_time_day' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`systemd_timesyncd_check_time_hour`

    Description: Define the 'systemd_timesyncd_check_time_hour' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '5' | '*/6'

`systemd_timesyncd_check_time_minute`

    Description: Define the 'systemd_timesyncd_check_time_minute' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*/10'
    Options    :
      Examples: '42' | '*/30'

`systemd_timesyncd_check_time_month`

    Description: Define the 'systemd_timesyncd_check_time_month' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`systemd_timesyncd_check_time_weekday`

    Description: Define the 'systemd_timesyncd_check_time_weekday' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '6' | 'Saturday'

`systemd_timesyncd_check_time_state`

    Description: Control the 'systemd_timesyncd_check_time_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`systemd_timesyncd_fallback`

    Description: Define the 'systemd_timesyncd_fallback' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['195.176.26.204', '195.176.26.205', '195.176.26.206', '192.33.96.101', '192.33.96.102']
      None    : []

`systemd_timesyncd_monitor_mail_from_address`

    Description: Define the 'systemd_timesyncd_monitor_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`systemd_timesyncd_monitor_mail_to_address`

    Description: Define the 'systemd_timesyncd_monitor_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`systemd_timesyncd_monitor_mail_state`

    Description: Control the 'systemd_timesyncd_monitor_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`systemd_timesyncd_monitor_monit_state`

    Description: Control the 'systemd_timesyncd_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`systemd_timesyncd_monitor_prom_state`

    Description: Control the 'systemd_timesyncd_monitor_prom_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`systemd_timesyncd_monitor_prom_textfile_collector`

    Description: Define the 'systemd_timesyncd_monitor_prom_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`systemd_timesyncd_nftables_filter_rule`

    Description: Define the 'systemd_timesyncd_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter OUTPUT ct state new udp dport 123 counter accept comment "ntp to any"
      add rule ip6 filter OUTPUT ct state new udp dport 123 counter accept comment "ntp to any"
    Options    :
      Examples: |
        add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new udp dport 123 counter accept comment "ntp to internal-networks"

`systemd_timesyncd_nftables_state`

    Description: Control the 'systemd_timesyncd_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`systemd_timesyncd_offset_limit`

    Description: Set the 'systemd_timesyncd_offset_limit' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 1
    Options    :
      Examples: 0.2 | 0.5 | 1 | 1.5

`systemd_timesyncd_poll_interval_max_sec`

    Description: Define the 'systemd_timesyncd_poll_interval_max_sec' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 2048
    Options    :
      Examples: 512 | 1024 | 4096

`systemd_timesyncd_poll_interval_min_sec`

    Description: Define the 'systemd_timesyncd_poll_interval_min_sec' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 32
    Options    :
      Examples: 16 | 64 | 128

`systemd_timesyncd_server`

    Description: Define the 'systemd_timesyncd_server' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["ntp.{{ansible_domain}}"]
    Options    :
      Examples: ['195.176.26.204', '195.176.26.205', '195.176.26.206', '192.33.96.101', '192.33.96.102']
      None    : []

## Conflicts

## Dependencies

### Packages

`systemd-timesyncd`

    Version: >= 247.0
    Name   :
      Debian 11: 'systemd-timesyncd'
      Debian 12: 'systemd-timesyncd'

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
