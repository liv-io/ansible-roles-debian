# hddtemp

## Description

The hddtemp program monitors and reports the temperature of PATA, SATA or SCSI
hard drives by reading Self-Monitoring Analysis and Reporting Technology
(S.M.A.R.T.) information on drives that support this feature.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: hddtemp
  vars:
    hddtemp_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: hddtemp
  vars:
    hddtemp_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: hddtemp
  vars:
    hddtemp_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: hddtemp
  vars:
    hddtemp_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: hddtemp
  vars:
    hddtemp_state: 'inactive'
```

## Parameters

### Role

`hddtemp_state`

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

`hddtemp_daemonize`

    Description: Control the 'hddtemp_daemonize' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'true'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`hddtemp_monitor_monit_state`

    Description: Control the 'hddtemp_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

## Conflicts

## Dependencies

### Packages

`hddtemp`

    Version: >= 0.3
    Name   :
      Debian 11: 'hddtemp'

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
