# picocom

## Description

picocom was designed to serve as a simple, manual, modem configuration, testing,
and debugging tool. It has also served (quite well) as a low-tech
"terminal-window" to allow operator intervention in PPP connection scripts
(something like the ms-windows "open terminal window before / after dialing"
feature). It could also prove useful in many other similar tasks. It is ideal
for embedded systems since its memory footprint is minimal.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: picocom
  vars:
    picocom_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: picocom
  vars:
    picocom_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: picocom
  vars:
    picocom_state: 'inactive'
```

## Parameters

### Role

`picocom_state`

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

`picocom`

    Version: >= 3.0
    Name   :
      Debian 11: 'picocom'

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
