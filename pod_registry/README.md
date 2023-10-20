# pod_registry

## Description

The Docker Registry 2.0 implementation for storing and distributing Docker
images.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_registry
  vars:
    pod_registry_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_registry
  vars:
    pod_registry_state: 'enable'
    pod_registry_proxy: 'http://proxy.example.com:3128'
    pod_registry_username: 'registry'
    pod_registry_password: 'TmE9r!wn8Z8mqE,BFDCg8Q,K8nX_EN.d'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_registry
  vars:
    pod_registry_state: 'disable'
    pod_registry_proxy: 'http://proxy.example.com:3128'
    pod_registry_username: 'registry'
    pod_registry_password: 'TmE9r!wn8Z8mqE,BFDCg8Q,K8nX_EN.d'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_registry
  vars:
    pod_registry_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_registry
  vars:
    pod_registry_state: 'inactive'
```

## Parameters

### Role

`pod_registry_state`

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

`pod_registry_monitor_monit_state`

    Description: Control the 'pod_registry_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_registry_nftables_filter_rule`

    Description: Define the 'pod_registry_nftables_filter_rule' option.
    Implemented: 0.3.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 5000 counter accept comment "registry from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 5000 counter accept comment "registry from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 5000 counter accept comment "registry from internal-networks"

`pod_registry_nftables_state`

    Description: Control the 'pod_registry_nftables_state' option.
    Implemented: 0.3.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_registry_password`

    Description: Define the 'pod_registry_password' option.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'qW.t_hvfFp9BHtFt-xsFqCq_42jwNDgs' | 'pLj6.us3u-CHMSd5FHV8oq28q3NKfn_i'

`pod_registry_proxy`

    Description: Define the 'pod_registry_proxy' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_registry_username`

    Description: Define the 'pod_registry_username' option.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'podman' | 'docker'

`pod_registry_version`

    Description: Define the 'pod_registry_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'latest'
    Options    :
      Examples: '1.0.0' | '2.0.0'

## Conflicts

## Dependencies

### Containers

`k8s.gcr.io/pause`

`docker.io/library/registry`

### Packages

`apache2-utils`

    Version: >= 2.4
    Name   :
      Debian 11: 'apache2-utils'
      Debian 12: 'apache2-utils'

### Roles

`podman`

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
