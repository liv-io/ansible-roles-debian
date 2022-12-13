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
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Enable  : 'start' | 'on' | 'enable'
      Disable : 'stop' | 'off' | 'disable'
      Inactive: 'quiesce' | 'inactive'

`systemd_timesyncd_fallback`

    Description: Define the 'systemd_timesyncd_fallback' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['195.176.26.204', '195.176.26.205', '195.176.26.206', '192.33.96.101', '192.33.96.102']
      None    : []

`systemd_timesyncd_monitor_monit_state`

    Description: Control the 'systemd_timesyncd_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`systemd_timesyncd_server`

    Description: Define the 'systemd_timesyncd_server' option.
    Implemented: 0.1.0
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
