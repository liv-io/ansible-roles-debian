# hostname

## Description

The hostname utility is used to set or print the name of the current host.
If no argument is given, the name of the current host is printed.

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
    hostname_chassis: 'vm'
    hostname_deployment: 'production'
    hostname_hostname: 't101.cyberdyne.com'
    hostname_icon_name: 'computer'
    hostname_location: 'McMurdo Base, Antarctica'
    hostname_pretty_hostname: 'T-101'
```

### Inactive

```
- hosts: all
  roles:
    - role: hostname
  vars:
    hostname_state: 'inactive'
```

## Parameters

### Role

`hostname_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`hostname_chassis`

    Description: Define the chassis type of the system.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'desktop' | 'laptop' | 'server' | 'tablet' | 'handset' |
                'watch' | 'embedded' | 'vm' | 'container'
      None    : ''

`hostname_deployment`

    Description: Define the deployment environment of the system.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'development' | 'integration' | 'staging' | 'production'
      None    : ''

`hostname_hostname`

    Description: Define the hostname of the system.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "{{inventory_hostname}}"
    Options    :
      Examples: 'proxy.domain.tld' | 'nameserver.domain.tld' | 'webserver.domain.tld'

`hostname_icon_name`

    Description: Define the icon of the system.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'computer' | 'phone' | 'pda'
      None    : ''

`hostname_location`

    Description: Define the location of the system.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'Zurich, Switzerland' | 'Rack 01/48' | 'Cyber Shelter'
      None    : ''

`hostname_pretty_hostname`

    Description: Define the pretty hostname of the system.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'forward-proxy' | 'reverse-proxy' | 'web-server'
      None    : ''

## Conflicts

## Dependencies

### Packages

`hostname`

    Version: >= 3.0
    Name   :
      Debian 11: 'hostname'
      Debian 12: 'hostname'

## Parameters

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

    Version: 11
    Version: 12
