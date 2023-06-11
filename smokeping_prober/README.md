# smokeping_prober

## Description

Prometheus style "smokeping" prober.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: smokeping_prober
  vars:
    smokeping_prober_state: 'inactive'
```

## Parameters

### Role

`smokeping_prober_state`

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

`smokeping_prober_monitor_monit_state`

    Description: Control the 'smokeping_prober_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`smokeping_prober_hosts`

    Description: Define the 'smokeping_prober_hosts' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['host.domain.tld'] | ['host01.domain.tld', 'host02.domain.tld'] |
                ['host01.domain01.tld', 'host02.domain02.tld', 'host01.domain03.tld']
      None    : []

`smokeping_prober_version`

    Description: Define the 'smokeping_prober_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.6.1'
    Options    :
      Examples: '0.1.0' | '0.2.0'

## Conflicts

## Dependencies

### Packages

`smokeping_prober`

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
