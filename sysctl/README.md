# sysctl

## Description

'sysctl' is used to modify kernel parameters at runtime. The parameters
available are those listed under /proc/sys/. Procfs is required for sysctl
support in Linux. You can use sysctl to both read and write sysctl data.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: sysctl
  vars:
    sysctl_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: sysctl
  vars:
    sysctl_state: 'inactive'
```

### Config

```
vars:
  sysctl_config_all:
    - name: 'network-hardening'
      order: '10'
      state: 'true'
      sysctl:
        - key: 'net.ipv4.tcp_syncookies'
          value: '1'
          comment: 'TCP SYN cookie protection'
        - key: 'net.ipv4.tcp_rfc1337'
          value: '1'
          comment: 'TCP time-wait assassination hazards'
        - key: 'net.ipv4.conf.all.rp_filter'
          value: '1'
          comment: 'Reverse path filtering'
        - key: 'net.ipv4.conf.default.rp_filter'
          value: '1'
          comment: 'Reverse path filtering'
        - key: 'net.ipv4.icmp_echo_ignore_broadcasts'
          value: '1'
          comment: 'Smurf attack protection'

    - name: 'ip-forwarding'
      order: '10'
      state: 'true'
      sysctl:
        - key: 'net.ipv4.ip_forward'
          value: '1'
          comment: 'IPv4 forwarding'
        - key: 'net.ipv6.conf.all.forwarding'
          value: '1'
          comment: 'IPv6 forwarding'

  sysctl_config_group:
    - name: 'kernel-security'
      order: '00'
      state: 'true'
      sysctl:
        - key: 'kernel.exec-shield'
          value: '1'
          comment: 'ExecShield protection'
        - key: 'kernel.randomize_va_space'
          value: '1'
          comment: 'ASLR full randomization'

  sysctl_config_host:
    - name: 'pids'
      order: '10'
      state: 'false'
      sysctl:
        - key: 'fs.file-max'
          value: '65535'
          comment: 'Set max PIDs'
```

## Parameters

### Role

`sysctl_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`sysctl_config_all`

    Description: Define the 'sysctl_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: 'true', name: 'network-hardening', order: '10',
                  sysctl: [{key: 'net.ipv4.tcp_syncookies', value: '1', comment: 'TCP SYN cookie protection'},
                           {key: 'net.ipv4.tcp_rfc1337', value: '1', comment: 'TCP time-wait assassination hazards'},
                           {key: 'net.ipv4.conf.all.rp_filter', value: '1', comment: 'Reverse path filtering'},
                           {key: 'net.ipv4.conf.default.rp_filter', value: '1', comment: 'Reverse path filtering'},
                           {key: 'net.ipv4.icmp_echo_ignore_broadcasts', value: '1', comment: 'Smurf attack protection'}]}]
      None    : []

`sysctl_config_group`

    Description: Define the 'sysctl_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: 'true', name: 'network-hardening', order: '10',
                  sysctl: [{key: 'net.ipv4.tcp_syncookies', value: '1', comment: 'TCP SYN cookie protection'},
                           {key: 'net.ipv4.tcp_rfc1337', value: '1', comment: 'TCP time-wait assassination hazards'},
                           {key: 'net.ipv4.conf.all.rp_filter', value: '1', comment: 'Reverse path filtering'},
                           {key: 'net.ipv4.conf.default.rp_filter', value: '1', comment: 'Reverse path filtering'},
                           {key: 'net.ipv4.icmp_echo_ignore_broadcasts', value: '1', comment: 'Smurf attack protection'}]}]
      None    : []

`sysctl_config_host`

    Description: Define the 'sysctl_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{state: 'true', name: 'network-hardening', order: '10',
                  sysctl: [{key: 'net.ipv4.tcp_syncookies', value: '1', comment: 'TCP SYN cookie protection'},
                           {key: 'net.ipv4.tcp_rfc1337', value: '1', comment: 'TCP time-wait assassination hazards'},
                           {key: 'net.ipv4.conf.all.rp_filter', value: '1', comment: 'Reverse path filtering'},
                           {key: 'net.ipv4.conf.default.rp_filter', value: '1', comment: 'Reverse path filtering'},
                           {key: 'net.ipv4.icmp_echo_ignore_broadcasts', value: '1', comment: 'Smurf attack protection'}]}]
      None    : []

## Conflicts

## Dependencies

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
