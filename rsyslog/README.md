# rsyslog

## Description

Rsyslog is a multi-threaded implementation of syslogd (a system utility
providing support for message logging), with features that include:
- reliable syslog over TCP, SSL/TLS and RELP
- on-demand disk buffering
- email alerting
- writing to MySQL or PostgreSQL databases (via separate output plugins)
- permitted sender lists
- filtering on any part of the syslog message
- on-the-wire message compression
- fine-grained output format control
- failover to backup destinations
- enterprise-class encrypted syslog relaying

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: rsyslog
  vars:
    rsyslog_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: rsyslog
  vars:
    rsyslog_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: rsyslog
  vars:
    rsyslog_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: rsyslog
  vars:
    rsyslog_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: rsyslog
  vars:
    rsyslog_state: 'inactive'
```

### Config

```
vars:
  rsyslog_config_all:
    - name: "httpd"
      comment: "Apache HTTPD"
      section: "input"
      config:
        - {type: imfile, File: /var/log/httpd/*access_log, Tag: httpd, Severity: info, Facility: local6}
        - {type: imfile, File: /var/log/httpd/*error_log, Tag: httpd, Severity: info, Facility: local6}

    - name: nginx
      comment: Nginx
      section: input
      config:
        - {type: imfile, File: /var/log/nginx/*_access.log, Tag: nginx, Severity: info, Facility: local6}
        - {type: imfile, File: /var/log/nginx/*_error.log, Tag: nginx, Severity: info, Facility: local6}
```

## Parameters

### Role

`rsyslog_state`

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

`rsyslog_config_all`

    Description: Define the 'rsyslog_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: [{name: httpd, comment: Apache HTTPD, section: input, config: [{type: imfile, File: /var/log/httpd/*access_log, Tag: httpd, Severity: info, Facility: local6}, {type: imfile, File: /var/log/httpd/*error_log, Tag: httpd, Severity: info, Facility: local6}]}]
      None    : []

`rsyslog_config_group`

    Description: Define the 'rsyslog_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: [{name: httpd, comment: Apache HTTPD, section: input, config: [{type: imfile, File: /var/log/httpd/*access_log, Tag: httpd, Severity: info, Facility: local6}, {type: imfile, File: /var/log/httpd/*error_log, Tag: httpd, Severity: info, Facility: local6}]}]
      None    : []

`rsyslog_config_host`

    Description: Define the 'rsyslog_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: [{name: httpd, comment: Apache HTTPD, section: input, config: [{type: imfile, File: /var/log/httpd/*access_log, Tag: httpd, Severity: info, Facility: local6}, {type: imfile, File: /var/log/httpd/*error_log, Tag: httpd, Severity: info, Facility: local6}]}]
      None    : []

`rsyslog_monitor_monit_state`

    Description: Control the 'rsyslog_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`rsyslog_nftables_filter_rule`

    Description: Define the 'rsyslog_nftables_filter_rule' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 514 counter accept comment "syslog from internal private addresses"
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new udp dport 514 counter accept comment "syslog from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 514 counter accept comment "syslog from unique local addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new udp dport 514 counter accept comment "syslog from unique local addresses"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 514 counter accept comment "syslog to internal private addresses"
      add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new udp dport 514 counter accept comment "syslog to unique local addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new tcp dport 514 counter accept comment "syslog to internal private addresses"
      add rule ip6 filter OUTPUT ip6 daddr fc00::/7 ct state new udp dport 514 counter accept comment "syslog to unique local addresses"
    Options    :
      Examples: |
        add rule ip filter OUTPUT ip daddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 514 counter accept comment "syslog to internal private addresses"

`rsyslog_nftables_state`

    Description: Control the 'rsyslog_nftables_state' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`rsyslog_role`

    Description: Set the 'rsyslog_role' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'client'
    Options    :
      Client: 'client'
      Server: 'server'

`rsyslog_server`

    Description: Define the 'rsyslog_server' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "log.{{ansible_domain}}"
    Options    :
      Examples: 'log.example.com' | 'logs.example.com'
      None    : ''

## Conflicts

## Dependencies

### Packages

`rsyslog`

    Version: >= 8.0
    Name   :
      Debian 11: 'rsyslog'
      Debian 12: 'rsyslog'

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
