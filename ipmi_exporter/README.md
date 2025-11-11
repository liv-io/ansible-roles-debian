# ipmi_exporter

## Description

Local and remote IPMI exporter for Prometheus

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: ipmi_exporter
  vars:
    ipmi_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: ipmi_exporter
  vars:
    ipmi_exporter_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: ipmi_exporter
  vars:
    ipmi_exporter_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: ipmi_exporter
  vars:
    ipmi_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: ipmi_exporter
  vars:
    ipmi_exporter_state: 'inactive'
```

## Parameters

### Role

`ipmi_exporter_state`

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

`ipmi_exporter_config`

    Description: Define the 'ipmi_exporter_config' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : |
                   modules:
                     default:
                       collectors:
                         - bmc
                         - chassis
                         - dcmi
                         - ipmi
                         - sel
                       collector_cmd:
                         bmc: sudo
                         chassis: sudo
                         dcmi: sudo
                         ipmi: sudo
                         sel: sudo
                       custom_args:
                         bmc:
                           - "bmc-info"
                         chassis:
                           - "ipmi-chassis"
                         dcmi:
                           - "ipmi-dcmi"
                         ipmi:
                           - "ipmimonitoring"
                         sel:
                           - "ipmi-sel"
    Options    :
      Examples: |
        modules:
          default:
            collectors:
              - bmc
              - ipmi
            collector_cmd:
              bmc: sudo
              ipmi: sudo
            custom_args:
              bmc:
                - "bmc-info"
              ipmi:
                - "ipmimonitoring"

`ipmi_exporter_monit_state`

    Description: Control the 'ipmi_exporter_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`ipmi_exporter_nftables_filter_rule`

    Description: Define the 'ipmi_exporter_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 9290 counter accept comment "ipmi_exporter from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9290 counter accept comment "ipmi_exporter from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 9290 counter accept comment "ipmi_exporter from internal-networks"

`ipmi_exporter_nftables_state`

    Description: Control the 'ipmi_exporter_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`ipmi_exporter_version`

    Description: Define the 'ipmi_exporter_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '1.10.1'
    Options    :
      Examples: '1.6.1' | '1.7.0'

## Conflicts

## Dependencies

### Packages

`freeipmi-tools`

`ipmi_exporter`

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
