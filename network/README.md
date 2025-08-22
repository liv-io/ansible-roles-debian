# network

## Description

network interface configuration for ifupdown

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: hostname
  vars:
    hostname_state: 'install'
    network_config:
      - {name: 'lo', type: 'loopback'}
      - {name: 'eno1', type: 'manual'}
      - {name: 'eno2', type: 'manual'}
      - {name: 'eno3', type: 'manual'}
      - {name: 'eno4', type: 'manual'}

      - name: 'bond0'
        type: 'manual'
        mtu: 1500
        ovs_type: 'OVSBond'
        ovs_bridge: 'vmbr0'
        ovs_bonds: ['eno1', 'eno2', 'eno3', 'eno4']
        ovs_options: ['bond_mode=balance-slb', 'lacp=active', 'other_config:lacp-time=fast']

      - name: 'vmbr0'
        type: 'manual'
        mtu: 1500
        ovs_type: 'OVSBridge'
        ovs_ports: ['bond0', 'mgmt', 'dmz']

      - name: 'mgmt'
        type: 'static'
        mtu: 1500
        ovs_type: 'OVSIntPort'
        ovs_bridge: 'vmbr0'
        ovs_options: ['tag=10']
        address: '10.1.10.10'
        netmask: '255.255.255.0'
        gateway: '10.1.10.1'

      - name: 'dmz'
        type: 'static'
        mtu: 1500
        ovs_type: 'OVSIntPort'
        ovs_bridge: 'vmbr0'
        ovs_options: ['tag=11']
```

### Inactive

```
- hosts: all
  roles:
    - role: hostname
  vars:
    hostname_state: 'inactive'
    network_config:
      - {name: 'lo', type: 'loopback'}
      - {name: 'eno1', type: 'manual'}
      - {name: 'eno2', type: 'manual'}
      - {name: 'eno3', type: 'manual'}
      - {name: 'eno4', type: 'manual'}

      - name: 'bond0'
        type: 'manual'
        mtu: 1500
        ovs_type: 'OVSBond'
        ovs_bridge: 'vmbr0'
        ovs_bonds: ['eno1', 'eno2', 'eno3', 'eno4']
        ovs_options: ['bond_mode=balance-slb', 'lacp=active', 'other_config:lacp-time=fast']

      - name: 'vmbr0'
        type: 'manual'
        mtu: 1500
        ovs_type: 'OVSBridge'
        ovs_ports: ['bond0', 'mgmt', 'dmz']

      - name: 'mgmt'
        type: 'static'
        mtu: 1500
        ovs_type: 'OVSIntPort'
        ovs_bridge: 'vmbr0'
        ovs_options: ['tag=10']
        address: '10.1.10.10'
        netmask: '255.255.255.0'
        gateway: '10.1.10.1'

      - name: 'dmz'
        type: 'static'
        mtu: 1500
        ovs_type: 'OVSIntPort'
        ovs_bridge: 'vmbr0'
        ovs_options: ['tag=11']
```

## Parameters

### Config

`name`

    Description: Define the network interface name.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'lo' | 'eno1' | 'eno2' | 'eno3' | 'eno4' | 'bond0' | 'vmbr0' | 'mgmt' | 'dmz'
      None    : ''

`comment`

    Description: Define a comment for the network interface.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'primary interface' | 'bond interface'
      None    : ''

`type`

    Description: Define the network interface type.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'loopback' | 'manual' | 'static'
      None    : ''

`mtu`

    Description: Define the network interface mtu.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : ''
    Options    :
      Examples: 1500 | 9000
      None    : ''

`ovs_type`

    Description: Define the Open vSwitch type.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'OVSBridge'
      None    : ''

`ovs_bridge`

    Description: Define the Open vSwitch bridge.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'vmbr0'
      None    : ''

`ovs_bonds`

    Description: Define the Open vSwitch bonds.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['eno1', 'eno2', 'eno3', 'eno4']
      None    : []

`ovs_options`

    Description: Define the Open vSwitch options.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['bond_mode=balance-slb', 'lacp=active', 'other_config:lacp-time=fast']
      None    : []

`ovs_ports`

    Description: Define the Open vSwitch ports.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['bond0', 'mgmt', 'dmz']
      None    : []

`address`

    Description: Define the network interface address.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '10.1.10.10'
      None    : ''

`netmask`

    Description: Define the network interface netmask.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '255.255.255.0'
      None    : ''

`gateway`

    Description: Define the network interface gateway.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '10.1.10.1'
      None    : ''

### Role

`network_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`network_config`

    Description: Define the 'network_config_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: lo, type: loopback}, {name: eno1, type: manual}, {name: eno2, type: manual}, {name: eno3, type: manual}, {name: eno4, type: manual}, {name: bond0, type: manual, mtu: 1500, ovs_type: OVSBond, ovs_bridge: vmbr0, ovs_bonds: [eno1, eno2, eno3, eno4], ovs_options: [bond_mode=balance-slb, lacp=active, 'other_config:lacp-time=fast']}, {name: vmbr0, type: manual, mtu: 1500, ovs_type: OVSBridge, ovs_ports: [bond0, mgmt, dmz]}, {name: mgmt, type: static, mtu: 1500, ovs_type: OVSIntPort, ovs_bridge: vmbr0, ovs_options: [tag=10], address: 10.1.10.10, netmask: 255.255.255.0, gateway: 10.1.10.1}, {name: dmz, type: static, mtu: 1500, ovs_type: OVSIntPort, ovs_bridge: vmbr0, ovs_options: [tag=11]}]
      None    : []

## Conflicts

## Dependencies

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
