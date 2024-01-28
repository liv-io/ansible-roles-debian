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
    pod_forgejo_authorized_keys:
      - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINy32iAhakwnk2w9uBQgFx8+tJWPgjbz9mjMRXNQM0tp user@host01'
      - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC2yYQ2Q95SKxt71jXDNqtCtBQvcnMd8lqRsIdGZK375 user@host02'
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
    pod_forgejo_authorized_keys:
      - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINy32iAhakwnk2w9uBQgFx8+tJWPgjbz9mjMRXNQM0tp user@host01'
      - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC2yYQ2Q95SKxt71jXDNqtCtBQvcnMd8lqRsIdGZK375 user@host02'
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

`pod_forgejo_authorized_keys`

    Description: Define the authorized_keys for the forgejo user.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINy32iAhakwnk2w9uBQgFx8+tJWPgjbz9mjMRXNQM0tp user@host01',
                 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC2yYQ2Q95SKxt71jXDNqtCtBQvcnMd8lqRsIdGZK375 user@host02']
      None    : []

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
    Default    : '1.21.4-0-2'
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

`pod_forgejo_monitor_monit_state`

    Description: Control the 'pod_forgejo_monitor_monit_state' option.
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
