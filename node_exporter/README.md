# node_exporter

## Description

Prometheus exporter for hardware and OS metrics exposed by *NIX kernels, written
in Go with pluggable metric collectors.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: node_exporter
  vars:
    node_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: node_exporter
  vars:
    node_exporter_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: node_exporter
  vars:
    node_exporter_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: node_exporter
  vars:
    node_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: node_exporter
  vars:
    node_exporter_state: 'inactive'
```

## Parameters

### Role

`node_exporter_state`

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

`node_exporter_monitor_monit_state`

    Description: Control the 'node_exporter_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`node_exporter_version`

    Description: Define the 'node_exporter_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '1.5.0'
    Options    :
      Examples: '0.15.0' | '0.16.0'

## Conflicts

## Dependencies

### Archives

`node_exporter`

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