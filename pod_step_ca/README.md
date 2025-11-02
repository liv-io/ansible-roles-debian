# pod_step_ca

## Description

step-ca is an online Certificate Authority (CA) for secure, automated X.509 and SSH certificate management.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_step_ca
  vars:
    pod_step_ca_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_step_ca
  vars:
    pod_step_ca_state: 'enable'
    pod_step_ca_step_ca_environment_variables:
      ADDRESS: ":1443"
      ALLOW_DNS: "*.example.com"
      ALLOW_EMAIL: "@example.com"
      COMMON_NAME: "liv CA"
      DNS_NAMES: "ca.example.com"

    pod_step_ca_proxy: 'http://proxy.example.com:3128'
    pod_step_ca_registry_address: 'registry.example.com'
    pod_step_ca_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_step_ca_registry_username: 'registry'
```

### Disable

```
- hosts: all
  roles:
    - role: pod_step_ca
  vars:
    pod_step_ca_state: 'disable'
    pod_step_ca_step_ca_environment_variables:
      ADDRESS: ":1443"
      ALLOW_DNS: "*.example.com"
      ALLOW_EMAIL: "@example.com"
      COMMON_NAME: "liv CA"
      DNS_NAMES: "ca.example.com"

    pod_step_ca_proxy: 'http://proxy.example.com:3128'
    pod_step_ca_registry_address: 'registry.example.com'
    pod_step_ca_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_step_ca_registry_username: 'registry'
```

### Remove

```
- hosts: all
  roles:
    - role: pod_step_ca
  vars:
    pod_step_ca_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_step_ca
  vars:
    pod_step_ca_state: 'inactive'
```

## Parameters

### Role

`pod_step_ca_state`

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

`pod_step_ca_step_ca_environment_variables`

    Description: Define the step_ca environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      ADDRESS: ":1443"
    Options    :
      Examples:
        ADDRESS: ":1443"
        ALLOW_DNS: "*.example.com"
        ALLOW_EMAIL: "@example.com"
        COMMON_NAME: "liv CA"
        DNS_NAMES: "ca.example.com"
      None    : {}

`pod_step_ca_step_ca_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_step_ca_step_ca_version`

    Description: Define the step_ca container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.28.4-1'
    Options    :
      Examples: ''

`pod_step_ca_log_driver`

    Description: Define the 'pod_step_ca_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : ''
    Options    :
      Examples: 'journald'
      None    : ''

`pod_step_ca_monitor_monit_state`

    Description: Control the 'pod_step_ca_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_step_ca_nftables_filter_rule`

    Description: Define the 'pod_step_ca_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 443 counter accept comment "https from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 443 counter accept comment "https from unique local addresses"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 80 counter accept comment "http to internal private addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new tcp dport 80 counter accept comment "http to unique local addresses"
    Options    :
      Examples: |
      add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 443 counter accept comment "https from internal-networks"
      add rule ip filter OUTPUT ip daddr 10.0.0.0/8 ct state new tcp dport 80 counter accept comment "http to internal-networks"

`pod_step_ca_nftables_state`

    Description: Control the 'pod_step_ca_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_step_ca_proxy`

    Description: Define the 'pod_step_ca_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_step_ca_registry_address`

    Description: Define the 'pod_step_ca_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_step_ca_registry_password`

    Description: Define the 'pod_step_ca_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_step_ca_registry_username`

    Description: Define the 'pod_step_ca_registry_username' option.
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
