# pod_woodpecker

## Description

Woodpecker is a simple yet powerful CI/CD engine with great extensibility.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_woodpecker
  vars:
    pod_woodpecker_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: nftables
    - role: pod_woodpecker
  vars:
    nftables_state: 'remove'
    pod_woodpecker_state: 'enable'
    pod_woodpecker_proxy: 'http://proxy.example.com:3128'
    pod_woodpecker_registry_address: 'registry.example.com'
    pod_woodpecker_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_woodpecker_registry_username: 'registry'
    pod_woodpecker_woodpecker_agent_variables:
      WOODPECKER_AGENT_SECRET: 'Ch4N.wtbm2,4G6MDt-XE'
    pod_woodpecker_woodpecker_server_variables: ''
      WOODPECKER_AGENT_SECRET: 'Ch4N.wtbm2,4G6MDt-XE'
      WOODPECKER_GITHUB: 'true'
      WOODPECKER_GITHUB_CLIENT: '255b8a99e0bc8c02348f'
      WOODPECKER_GITHUB_SECRET: 'f2186078bf6cffd4432a1d9e2822bb54e1528b2d'
      WOODPECKER_GRPC_SECRET: 'BG_V-4BCPfvG.ps53pCk'
      WOODPECKER_HOST: 'https://ci.example.com'
      WOODPECKER_OPEN: 'true'
```

### Disable

```
- hosts: all
  roles:
    - role: nftables
    - role: pod_woodpecker
  vars:
    nftables_state: 'remove'
    pod_woodpecker_state: 'disable'
    pod_woodpecker_proxy: 'http://proxy.example.com:3128'
    pod_woodpecker_registry_address: 'registry.example.com'
    pod_woodpecker_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_woodpecker_registry_username: 'registry'
    pod_woodpecker_woodpecker_agent_variables:
      WOODPECKER_AGENT_SECRET: 'Ch4N.wtbm2,4G6MDt-XE'
    pod_woodpecker_woodpecker_server_variables: ''
      WOODPECKER_AGENT_SECRET: 'Ch4N.wtbm2,4G6MDt-XE'
      WOODPECKER_GITHUB: 'true'
      WOODPECKER_GITHUB_CLIENT: '255b8a99e0bc8c02348f'
      WOODPECKER_GITHUB_SECRET: 'f2186078bf6cffd4432a1d9e2822bb54e1528b2d'
      WOODPECKER_GRPC_SECRET: 'BG_V-4BCPfvG.ps53pCk'
      WOODPECKER_HOST: 'https://ci.example.com'
      WOODPECKER_OPEN: 'true'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_woodpecker
  vars:
    pod_woodpecker_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_woodpecker
  vars:
    pod_woodpecker_state: 'inactive'
```

## Parameters

### Role

`pod_woodpecker_state`

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

`pod_woodpecker_monit_state`

    Description: Control the 'pod_woodpecker_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False


`pod_woodpecker_nftables_filter_rule`

    Description: Define the 'pod_woodpecker_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8000 counter accept comment "http from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 8000 counter accept comment "http from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 8000 counter accept comment "http from internal-networks"

`pod_woodpecker_nftables_state`

    Description: Control the 'pod_woodpecker_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_woodpecker_log_driver`

    Description: Define the 'pod_woodpecker_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'journald'
    Options    :
      Examples: 'journald'
      None    : ''

`pod_woodpecker_proxy`

    Description: Define the 'pod_woodpecker_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_woodpecker_registry_address`

    Description: Define the 'pod_woodpecker_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_woodpecker_registry_password`

    Description: Define the 'pod_woodpecker_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_woodpecker_registry_username`

    Description: Define the 'pod_woodpecker_registry_username' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user' | 'registry'

`pod_woodpecker_woodpecker_agent_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_woodpecker_woodpecker_agent_variables`

    Description: Define the woodpecker-agent environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      TODO: 'todo'
    Options    :
      Examples:
        TODO: 'todo'
      None    : {}

`pod_woodpecker_woodpecker_agent_version`

    Description: Define the woodpecker-agent container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '3.12.0-2'
    Options    :
      Examples: '2.1.1-1'

`pod_woodpecker_woodpecker_server_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_woodpecker_woodpecker_server_variables

    Description: Define the woodpecker-server environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      TODO: 'todo'
    Options    :
      Examples:
        TODO: 'todo'
      None    : {}

`pod_woodpecker_woodpecker_server_version`

    Description: Define the woodpecker-server container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '3.12.0-1'
    Options    :
      Examples: '2.1.1-1'

## Conflicts

`nftables`

## Dependencies

### Roles

`podman`

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
