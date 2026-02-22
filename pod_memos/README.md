# pod_memos

## Description

An open-source, self-hosted note-taking service. Your thoughts, your data, your control - no tracking, no ads, no subscription fees.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_memos
  vars:
    pod_memos_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_memos
  vars:
    pod_memos_state: 'enable'
    pod_memos_memos_environment_variables:
      PORT: 8080
    pod_memos_memos_version: '0.26.1-1'
    pod_memos_proxy: 'http://proxy.example.com:3128'
    pod_memos_registry_address: 'registry.example.com'
    pod_memos_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_memos_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_memos
  vars:
    pod_memos_state: 'disable'
    pod_memos_memos_environment_variables:
      PORT: 8080
    pod_memos_memos_version: '0.26.1-1'
    pod_memos_proxy: 'http://proxy.example.com:3128'
    pod_memos_registry_address: 'registry.example.com'
    pod_memos_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_memos_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_memos
  vars:
    pod_memos_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_memos
  vars:
    pod_memos_state: 'inactive'
```

## Parameters

### Role

`pod_memos_state`

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

`pod_memos_memos_environment_variables`

    Description: Define the memos environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
        PORT: 8080
    Options    :
      Examples:
        PORT: 8081
      None    : {}

`pod_memos_memos_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_memos_memos_version`

    Description: Define the memos container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.26.1-1'
    Options    :
      Examples: ''

`pod_memos_log_driver`

    Description: Define the 'pod_memos_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_memos_monit_state`

    Description: Control the 'pod_memos_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_memos_nftables_filter_rule`

    Description: Define the 'pod_memos_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8080 counter accept comment "http from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 8080 counter accept comment "http from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport 8080 counter accept comment "http from any"

`pod_memos_nftables_state`

    Description: Control the 'pod_memos_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_memos_proxy`

    Description: Define the 'pod_memos_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_memos_registry_address`

    Description: Define the 'pod_memos_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_memos_registry_password`

    Description: Define the 'pod_memos_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_memos_registry_username`

    Description: Define the 'pod_memos_registry_username' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user' | 'registry'

## Conflicts

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
