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
    pod_woodpecker_woodpecker_agent_woodpecker_agent_secret: 'Ch4N.wtbm2,4G6MDt-XE'
    pod_woodpecker_woodpecker_server_woodpecker_agent_secret: 'Ch4N.wtbm2,4G6MDt-XE'
    pod_woodpecker_woodpecker_server_woodpecker_github: True
    pod_woodpecker_woodpecker_server_woodpecker_github_client: '255b8a99e0bc8c02348f'
    pod_woodpecker_woodpecker_server_woodpecker_github_secret: 'f2186078bf6cffd4432a1d9e2822bb54e1528b2d'
    pod_woodpecker_woodpecker_server_woodpecker_github_url: 'https://github.com'
    pod_woodpecker_woodpecker_server_woodpecker_grpc_secret: 'BG_V-4BCPfvG.ps53pCk'
    pod_woodpecker_woodpecker_server_woodpecker_host: 'https://ci.example.com'
    pod_woodpecker_woodpecker_server_woodpecker_open: True
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
    pod_woodpecker_woodpecker_agent_woodpecker_agent_secret: 'Ch4N.wtbm2,4G6MDt-XE'
    pod_woodpecker_woodpecker_server_woodpecker_agent_secret: 'Ch4N.wtbm2,4G6MDt-XE'
    pod_woodpecker_woodpecker_server_woodpecker_github: True
    pod_woodpecker_woodpecker_server_woodpecker_github_client: '255b8a99e0bc8c02348f'
    pod_woodpecker_woodpecker_server_woodpecker_github_secret: 'f2186078bf6cffd4432a1d9e2822bb54e1528b2d'
    pod_woodpecker_woodpecker_server_woodpecker_github_url: 'https://github.com'
    pod_woodpecker_woodpecker_server_woodpecker_grpc_secret: 'BG_V-4BCPfvG.ps53pCk'
    pod_woodpecker_woodpecker_server_woodpecker_host: 'https://ci.example.com'
    pod_woodpecker_woodpecker_server_woodpecker_open: True
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

`pod_woodpecker_monitor_monit_state`

    Description: Control the 'pod_woodpecker_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`pod_woodpecker_log_driver`

    Description: Define the 'pod_woodpecker_proxy' option.
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
    Options    : true | false

`pod_woodpecker_woodpecker_agent_version`

    Description: Define the woodpecker-agent container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '2.1.1-1'
    Options    :
      Examples: '2.1.1-1'

`pod_woodpecker_woodpecker_agent_woodpecker_agent_secret`

    Description: --grpc-token | WOODPECKER_AGENT_SECRET
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'Ch4N.wtbm2,4G6MDt-XE' | 'bdF-q5vwq,aeW3VmC.Sv'
      None    : ''

`pod_woodpecker_woodpecker_agent_woodpecker_backend`

    Description: --backend-engine | WOODPECKER_BACKEND
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'docker'
    Options    : 'docker' | 'local'

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_api_version`

    Description: --backend-docker-api-version | WOODPECKER_BACKEND_DOCKER_API_VERSION
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: '1.43'

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_cert_path`

    Description: --backend-docker-cert | WOODPECKER_BACKEND_DOCKER_CERT_PATH
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: '/var/local/woodpecker-agent/cert'

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_enable_ipv6`

    Description: --backend-docker-ipv6 | WOODPECKER_BACKEND_DOCKER_ENABLE_IPV6
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : false
    Options    : true | false

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_host`

    Description: --backend-docker-host | WOODPECKER_BACKEND_DOCKER_HOST
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'unix://run/podman/podman.sock'
    Options    :
      Examples: 'unix://run/podman/podman.sock'

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_network`

    Description: --backend-docker-network | WOODPECKER_BACKEND_DOCKER_NETWORK
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: 'existing-network-name'
      None    : ''

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_tls_verify`

    Description: --backend-docker-tls-verify | WOODPECKER_BACKEND_DOCKER_TLS_VERIFY
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_woodpecker_woodpecker_agent_woodpecker_backend_docker_volumes`

    Description: --backend-docker-volumes | WOODPECKER_BACKEND_DOCKER_VOLUMES
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: '/etc/ssl/certs:/etc/ssl/certs:ro,/etc/timezone:/etc/timezone:ro'
      None    : ''

`pod_woodpecker_woodpecker_agent_woodpecker_backend_local_temp_dir`

    Description: --backend-local-temp-dir | WOODPECKER_BACKEND_LOCAL_TEMP_DIR
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/woodpecker-agent/tmp'
    Options    :
      Examples: '/var/local/woodpecker-agent/tmp'

`pod_woodpecker_woodpecker_agent_woodpecker_grpc_secure`

    Description: --grpc-secure | WOODPECKER_GRPC_SECURE
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : false
    Options    : true | false

`pod_woodpecker_woodpecker_agent_woodpecker_grpc_verify`

    Description: --grpc-skip-insecure | WOODPECKER_GRPC_VERIFY
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_woodpecker_woodpecker_agent_woodpecker_healthcheck`

    Description: --healthcheck | WOODPECKER_HEALTHCHECK
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_woodpecker_woodpecker_agent_woodpecker_healthcheck_addr`

    Description: --healthcheck-addr | WOODPECKER_HEALTHCHECK_ADDR
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: ':3000' | 'localhost:3000'

`pod_woodpecker_woodpecker_agent_woodpecker_hostname`

    Description: --hostname | WOODPECKER_HOSTNAME
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'woodpecker-agent'
    Options    :
      Examples: 'host' | 'hostname'

`pod_woodpecker_woodpecker_agent_woodpecker_log_level`

    Description: --log-level | WOODPECKER_LOG_LEVEL
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'info'
    Options    :
      Examples: 'trace' | 'debug' | 'info' | 'warn' | 'error' | 'fatal' | 'panic' | 'disabled'

`pod_woodpecker_woodpecker_agent_woodpecker_server`

    Description: --server | WOODPECKER_SERVER
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: 'localhost:9000' | 'ci.example.com:9000'

`pod_woodpecker_woodpecker_server_read_only_root_filesystem`

    Description: Define the readOnlyRootFilesystem option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : true | false

`pod_woodpecker_woodpecker_server_version`

    Description: Define the woodpecker-server container image version.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '2.1.1-1'
    Options    :
      Examples: '2.1.1-1'

`pod_woodpecker_woodpecker_server_woodpecker_admin`

    Description: --admin | WOODPECKER_ADMIN
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'administrator' | 'admin01 admin02'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_agent_secret`

    Description: --agent-secret | WOODPECKER_AGENT_SECRET
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'Ch4N.wtbm2,4G6MDt-XE' | 'bdF-q5vwq,aeW3VmC.Sv'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_backend_https_proxy`

    Description: --backend-https-proxy | WOODPECKER_BACKEND_HTTPS_PROXY
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.example.com:3128'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_backend_http_proxy`

    Description: --backend-http-proxy | WOODPECKER_BACKEND_HTTP_PROXY
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.example.com:3128'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_backend_no_proxy`

    Description: --backend-no-proxy | WOODPECKER_BACKEND_NO_PROXY
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'localhost 127.0.0.1 ::1' | 'example.org example.com'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_github`

    Description: --github | WOODPECKER_GITHUB
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_woodpecker_woodpecker_server_woodpecker_github_client`

    Description: --github-client | WOODPECKER_GITHUB_CLIENT
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: '255b8a99e0bc8c02348f' | 'f8b4fe1cfe6fa4bff43d'

`pod_woodpecker_woodpecker_server_woodpecker_github_secret`

    Description: --github-secret | WOODPECKER_GITHUB_SECRET
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: 'f2186078bf6cffd4432a1d9e2822bb54e1528b2d' | '633fbc1f4124fb22abd15b96dba73b799172b01c'

`pod_woodpecker_woodpecker_server_woodpecker_github_url`

    Description: --github-server | WOODPECKER_GITHUB_URL
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : 'https://github.com'
    Options    :
      Examples: 'https://github.com' | 'https://github.co'

`pod_woodpecker_woodpecker_server_woodpecker_grpc_addr`

    Description: --grpc-addr | WOODPECKER_GRPC_ADDR
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: ':9000' | 'localhost:9000'

`pod_woodpecker_woodpecker_server_woodpecker_grpc_secret`

    Description: --grpc-secret | WOODPECKER_GRPC_SECRET
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'BG_V-4BCPfvG.ps53pCk' | '7cp8Kwfb5g-vCH.vtGt9'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_host`

    Description: --server-host | WOODPECKER_HOST
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'https://ci.example.com' | 'https://ci.example.org'

`pod_woodpecker_woodpecker_server_woodpecker_log_level`

    Description: --log-level | WOODPECKER_LOG_LEVEL
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'info'
    Options    :
      Examples: 'trace' | 'debug' | 'info' | 'warn' | 'error' | 'fatal' | 'panic' | 'disabled'

`pod_woodpecker_woodpecker_server_woodpecker_metrics_server_addr`

    Description: --metrics-server-addr | WOODPECKER_METRICS_SERVER_ADDR
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: ':9001' | 'localhost:9001'

`pod_woodpecker_woodpecker_server_woodpecker_open`

    Description: --open | WOODPECKER_OPEN
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : true
    Options    : true | false

`pod_woodpecker_woodpecker_server_woodpecker_orgs`

    Description: --orgs | WOODPECKER_ORGS
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'organization' | 'org01 org02'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_repo_owners`

    Description: --repo-owners | WOODPECKER_REPO_OWNERS
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'username' | 'user01 user02'
      None    : ''

`pod_woodpecker_woodpecker_server_woodpecker_server_addr`

    Description: --server-addr | WOODPECKER_SERVER_ADDR
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    :
    Options    :
      Examples: ':8000' | 'localhost:8000'

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

    Version: 11
    Version: 12
