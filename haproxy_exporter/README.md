# haproxy_exporter

## Description

Simple server that scrapes HAProxy stats and exports them via HTTP for
Prometheus consumption.

For proper functioning please also define the following settings in HAProxy:

```
vars:
  haproxy_stats_listen_state: 'enable'
  haproxy_stats_auth:
    - username: 'haproxy_exporter'
      password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'
      comment: 'haproxy_exporter'
```

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'enable'
    haproxy_exporter_haproxy_scrape_uri:
      - {address: 'localhost', port: '9000', uri: '/haproxy?stats;csv', username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}
```

### Disable

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'disable'
    haproxy_exporter_haproxy_scrape_uri:
      - {address: 'localhost', port: '9000', uri: '/haproxy?stats;csv', username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}
```

### Remove

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: haproxy_exporter
  vars:
    haproxy_exporter_state: 'inactive'
```

## Parameters

### Role

`haproxy_exporter_state`

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

`haproxy_exporter_haproxy_scrape_uri`

    Description: Define the 'haproxy_exporter_haproxy_scrape_uri' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}] }
                [{address: 'localhost', port: '80', uri: '/admin?stats;csv', username: 'haproxy_exporter', password: 'WjA+bU_E2PdA5w9.F5n3CEH,8WG-S3k7'}]
      None    : []

`haproxy_exporter_monitor_monit_state`

    Description: Control the 'haproxy_exporter_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`haproxy_exporter_version`

    Description: Define the 'haproxy_exporter_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.14.0'
    Options    :
      Examples: '0.8.0' | '0.9.0'

## Conflicts

## Dependencies

### Packages

`haproxy_exporter`

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
