# pod_open_webui

## Description

Open WebUI is an extensible, self-hosted interface for AI that adapts to your
workflow, all while operating entirely offline.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: pod_open_webui
  vars:
    pod_open_webui_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: pod_open_webui
  vars:
    pod_open_webui_state: 'enable'
    pod_open_webui_proxy: 'http://proxy.example.com:3128'
    pod_open_webui_open_webui_environment_variables:
      DEFAULT_MODELS: "qwen2.5:14b"
      WEBUI_AUTH: False
      WEBUI_NAME: "ai.example.com"
      WEBUI_URL: "https://ai.example.com"
```

### Disable

```
- hosts: all
  roles:
    - role: pod_open_webui
  vars:
    pod_open_webui_state: 'disable'
    pod_open_webui_proxy: 'http://proxy.example.com:3128'
    pod_open_webui_open_webui_environment_variables:
      DEFAULT_MODELS: "qwen2.5:14b"
      WEBUI_AUTH: False
      WEBUI_NAME: "ai.example.com"
      WEBUI_URL: "https://ai.example.com"
```

### Remove

```
- hosts: all
  roles:
    - role: pod_open_webui
  vars:
    pod_open_webui_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: pod_open_webui
  vars:
    pod_open_webui_state: 'inactive'
```

## Parameters

### Role

`pod_open_webui_state`

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

`pod_open_webui_log_driver`

    Description: Define the 'pod_open_webui_log_driver' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'journald'
    Options    :
      Examples: 'journald'
      None    : ''

`pod_open_webui_monitor_prom_state`

    Description: Control the 'pod_open_webui_monitor_prom_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_open_webui_nftables_filter_rule`

    Description: Define the 'pod_open_webui_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8080 counter accept comment "http from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 8080 counter accept comment "http from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"
      add rule ip6 filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 8080 counter accept comment "http from internal private addresses"
        add rule ip filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"

`pod_open_webui_nftables_state`

    Description: Control the 'pod_open_webui_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_open_webui_open_webui_address`

    Description: Define the open-webui container image address.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'ghcr.io/open-webui'
    Options    :
      Examples: 'ghcr.io/open-webui'

`pod_open_webui_open_webui_environment_variables`

    Description: Define the open-webui environment variables.
    Required   : False
    Value      : Arbitrary
    Type       : Dictionary
    Default    :
      WEBUI_AUTH: "False"
    Options    :
      Examples:
        WEBUI_AUTH: "False"
      None    : {}

`pod_open_webui_open_webui_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_open_webui_open_webui_version`

    Description: Define the open_webui container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'ollama'
    Options    :
      Examples: 'ollama'

`pod_open_webui_proxy`

    Description: Define the 'pod_open_webui_proxy' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

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

    Version: 11
    Version: 12
