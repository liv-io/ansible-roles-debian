# apt

## Description

APT (for Advanced Package Tool) is a set of tools for managing Debian packages,
and therefore the applications installed on your Debian system.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: apt
  vars:
    apt_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: apt
  vars:
    apt_state: 'inactive'
```

### Config

```
vars:
  apt_config_all:
    - path: '/etc/apt/sources.list'
      state: 'true'
      repositories:
        - url: 'http://ftp.ch.debian.org/debian'
          state: 'true'
          comment: 'Debian - Base'
          distribution: "{{ansible_distribution_release}}"
          components: ['main']

        - url: 'http://ftp.ch.debian.org/debian'
          state: 'true'
          comment: 'Debian - Updates'
          distribution: "{{ansible_distribution_release}}-updates"
          components: ['main']

        - url: 'http://security.debian.org/debian-security'
          state: 'true'
          comment: 'Debian - Security'
          distribution: "{{ansible_distribution_release}}-security"
          components: ['main']

        - url: 'http://ftp.ch.debian.org/debian'
          state: 'true'
          comment: 'Debian - Backports'
          distribution: "{{ansible_distribution_release}}-backports"
          components: ['main']
```

## Parameters

### Role

`apt_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`apt_check_update_day`

    Description: Define the 'apt_check_update_day' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '1' | '*/2'

`apt_check_update_hour`

    Description: Define the 'apt_check_update_hour' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '5'
    Options    :
      Examples: '5' | '*/6'

`apt_check_update_minute`

    Description: Define the 'apt_check_update_minute' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{(30|random(seed=inventory_hostname))}}"
    Options    :
      Examples: '42' | '*/30'

`apt_check_update_month`

    Description: Define the 'apt_check_update_month' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: '10' | '*/1'

`apt_check_update_state`

    Description: Control the 'apt_check_update_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'enable'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`apt_check_update_weekday`

    Description: Define the 'apt_check_update_weekday' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '*'
    Options    :
      Examples: 6 | 'Saturday'

`apt_config_all`

    Description: Define the 'apt_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Base, distribution: {{ansible_distribution_release}}, components: [main]}, {url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Updates, distribution: {{ansible_distribution_release}}-updates, components: [main]}, {url: 'http://security.debian.org/debian-security', state: 'true', comment: Debian - Security, distribution: {{ansible_distribution_release}}-security, components: [main]}, {url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Backports, distribution: {{ansible_distribution_release}}-backports, components: [main]}]
    Options    :
      Examples: [{url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Base, distribution: {{ansible_distribution_release}}, components: [main]}, {url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Updates, distribution: {{ansible_distribution_release}}-updates, components: [main]}, {url: 'http://security.debian.org/debian-security', state: 'true', comment: Debian - Security, distribution: {{ansible_distribution_release}}-security, components: [main]}]
      None    : []

`apt_config_group`

    Description: Define the 'apt_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Base, distribution: {{ansible_distribution_release}}, components: [main]}, {url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Updates, distribution: {{ansible_distribution_release}}-updates, components: [main]}, {url: 'http://security.debian.org/debian-security', state: 'true', comment: Debian - Security, distribution: {{ansible_distribution_release}}-security, components: [main]}]
      None    : []

`apt_config_host`

    Description: Define the 'apt_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Base, distribution: {{ansible_distribution_release}}, components: [main]}, {url: 'http://ftp.ch.debian.org/debian', state: 'true', comment: Debian - Updates, distribution: {{ansible_distribution_release}}-updates, components: [main]}, {url: 'http://security.debian.org/debian-security', state: 'true', comment: Debian - Security, distribution: {{ansible_distribution_release}}-security, components: [main]}]
      None    : []

`apt_http_proxy`

    Description: Define the 'apt_http_proxy' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`apt_https_proxy`

    Description: Define the 'apt_https_proxy' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'http://proxy.domain.tld:3128'
      None    : ''

`apt_monitor_mail_from_address`

    Description: Define the 'apt_monitor_mail_from_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "root@{{ansible_domain}}"
    Options    :
      Examples: 'root@domain.tld' | 'admin@domain.tld' | 'user@domain.tld'

`apt_monitor_mail_to_address`

    Description: Define the 'apt_monitor_mail_to_address' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ["admin@{{ansible_domain}}"]
    Options    :
      Examples: ['root@domain.tld'] | ['root@domain.tld', 'admin@domain.tld']
                ['root@domain.tld', 'admin@domain.tld', 'user@domain.tld']

`apt_monitor_mail_state`

    Description: Control the 'apt_monitor_mail_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`apt_nftables_state`

    Description: Control the 'apt_nftables_state' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`apt_nftables_filter_rule`

    Description: Define the 'apt_nftables_filter_rule' option.
    Implemented: 1.2.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"
      add rule ip6 filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"
    Options    :
      Examples: |
        add rule ip filter OUTPUT ip daddr { 10.0.0.0/8 } ct state new tcp dport 3128 counter accept comment "squid to internal-networks"

`apt_monitor_prom_state`

    Description: Control the 'apt_monitor_prom_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`apt_monitor_prom_textfile_collector`

    Description: Define the 'apt_monitor_prom_textfile_collector' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '/var/local/node_exporter/textfile_collector'
    Options    :
      Examples: '/var/local/node_exporter/textfile_collector'

## Conflicts

## Dependencies

### Packages

`apt`

    Version: >= 1.0
    Name   :
      Debian 11: 'apt'
      Debian 12: 'apt'

`gnupg1`

    Version: >= 1.0
    Name   :
      Debian 11: 'gnupg1'
      Debian 12: 'gnupg1'

`mailx`

    Version: >= 8.0
    Name   :
      Debian 11: 'bsd-mailx'
      Debian 12: 'bsd-mailx'

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
    Version: 12
