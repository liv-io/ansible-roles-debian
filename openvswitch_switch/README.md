# openvswitch_switch

## Description

Open vSwitch is a production quality, multilayer, software-based, Ethernet
virtual switch. It is designed to enable massive network automation through
programmatic extension, while still supporting standard management interfaces
and protocols (e.g. NetFlow, IPFIX, sFlow, SPAN, RSPAN, CLI, LACP, 802.1ag).
In addition, it is designed to support distribution across multiple physical
servers similar to VMware's vNetwork distributed vswitch or Cisco's Nexus 1000V 

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: openvswitch_switch
  vars:
    openvswitch_switch_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: openvswitch_switch
  vars:
    openvswitch_switch_state: 'inactive'
```

## Parameters

### Role

`openvswitch_switch_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

### Packages

`openvswitch-switch`

    Version: >= 2.0
    Name   :
      Debian 11: 'openvswitch-switch'
      Debian 12: 'openvswitch-switch'

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
    Version: 12
