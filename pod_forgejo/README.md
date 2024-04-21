# pod_forgejo

## Description

Forgejo is a self-hosted lightweight software forge.
Easy to install and low maintenance, it just does the job.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_forgejo
  vars:
    pod_forgejo_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_forgejo
  vars:
    pod_forgejo_state: 'enable'
    pod_forgejo_proxy: 'http://proxy.example.com:3128'
    pod_forgejo_registry_address: 'registry.example.com'
    pod_forgejo_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_forgejo_registry_username: 'registry'
    openssh_match:
      - {name: 'forgejo', type: 'User', config: {'AuthorizedKeysCommandUser': 'forgejo', 'AuthorizedKeysCommand': '/usr/bin/podman exec -i pod_forgejo-forgejo /usr/local/bin/forgejo keys -e git -u %u -t %t -k %k'}}
```

### Disable

```
- hosts: all
  roles:
    - role: pod_forgejo
  vars:
    pod_forgejo_state: 'disable'
    pod_forgejo_proxy: 'http://proxy.example.com:3128'
    pod_forgejo_registry_address: 'registry.example.com'
    pod_forgejo_registry_password: 'sUlJr0kPZ1S0TX44aUdOVdQ90GbOBk6L'
    pod_forgejo_registry_username: 'registry'
    openssh_match:
      - {name: 'forgejo', type: 'User', config: {'AuthorizedKeysCommandUser': 'forgejo', 'AuthorizedKeysCommand': '/usr/bin/podman exec -i pod_forgejo-forgejo /usr/local/bin/forgejo keys -e git -u %u -t %t -k %k'}}
```

### Remove

```
- hosts: all
  roles:
    - role: pod_forgejo
  vars:
    pod_forgejo_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_forgejo
  vars:
    pod_forgejo_state: 'inactive'
```

## Parameters

### Role

`pod_forgejo_state`

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

`pod_forgejo_forgejo_config`

    Description: --config
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/work/custom/conf/app.ini'
      None    : ''

`pod_forgejo_forgejo_custom_path`

    Description: --custom-path
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/work/custom'
      None    : ''

`pod_forgejo_forgejo_install_port`

    Description: --install-port
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '6000'
      None    : ''

`pod_forgejo_forgejo_pid`

    Description: --pid
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '' | ''
      None    : ''

`pod_forgejo_forgejo_port`

    Description: --port
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '6000'
      None    : ''

`pod_forgejo_forgejo_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`pod_forgejo_forgejo_version`

    Description: Define the forgejo container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '1.21.11-1-1'
    Options    :
      Examples: '1.21.4-0-1'

`pod_forgejo_forgejo_work_path`

    Description: --work-path
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/mnt/work'

`pod_forgejo_log_driver`

    Description: Define the 'pod_forgejo_proxy' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'journald'
    Options    :
      Examples: 'journald'
      None    : ''

`pod_forgejo_monitor_mail_from_address`

    Description: Define the 'pod_forgejo_monitor_mail_from_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`pod_forgejo_monitor_mail_state`

    Description: Control the 'pod_forgejo_monitor_mail_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_forgejo_monitor_mail_to_address`

    Description: Define the 'pod_forgejo_monitor_mail_to_address' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`pod_forgejo_monitor_monit_state`

    Description: Control the 'pod_forgejo_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_forgejo_monitor_prom_state`

    Description: Control the 'pod_forgejo_monitor_prom_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_forgejo_monitor_prom_textfile_collector`

    Description: Define the 'pod_forgejo_monitor_prom_textfile_collector' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

`pod_forgejo_nftables_filter_rule`

    Description: Define the 'pod_forgejo_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 3000 counter accept comment "http from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 3000 counter accept comment "http from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 3000 counter accept comment "http from internal-networks"

`pod_forgejo_nftables_state`

    Description: Control the 'pod_forgejo_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_forgejo_proxy`

    Description: Define the 'pod_forgejo_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`pod_forgejo_registry_address`

    Description: Define the 'pod_forgejo_registry_address' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'registry.example.com' | 'registry.example.org'

`pod_forgejo_registry_password`

    Description: Define the 'pod_forgejo_registry_password' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'S,VqtnSg95.ksUr8S9_9' | 'Q8S.65wtBW-4ua,nQ+tk'

`pod_forgejo_registry_username`

    Description: Define the 'pod_forgejo_registry_username' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'user' | 'registry'

## Conflicts

## Dependencies

### Roles

`openssh`

`sudo`

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

    Version: 11
    Version: 12
