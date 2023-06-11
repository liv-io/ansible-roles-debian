# sysstat

## Description

The sysstat package contains the following system performance tools:
- sar: collects and reports system activity information
- iostat: reports CPU utilization and disk I/O statistics
- tapestat: reports statistics for tapes connected to the system
- mpstat: reports global and per-processor statistics
- pidstat: reports statistics for Linux tasks (processes)
- sadf: displays data collected by sar in various formats
- cifsiostat: reports I/O statistics for CIFS filesystems

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: sysstat
  vars:
    sysstat_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: sysstat
  vars:
    sysstat_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: sysstat
  vars:
    sysstat_state: 'inactive'
```

## Parameters

### Role

`sysstat_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

### Packages

`sysstat`

    Version: >= 12.0
    Name   :
      Debian 11: 'sysstat'
      Debian 12: 'sysstat'

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
