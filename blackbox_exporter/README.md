# blackbox_exporter

## Description

The blackbox exporter allows blackbox probing of endpoints over HTTP, HTTPS,
DNS, TCP and ICMP.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: blackbox_exporter
  vars:
    blackbox_exporter_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: blackbox_exporter
  vars:
    blackbox_exporter_state: 'enable'
    blackbox_exporter_config:
      - name: 'icmp_ip4'
        prober: 'icmp'
        timeout: '5s'
        config: |
          preferred_ip_protocol: "ip4"
          source_ip_address: "10.1.1.10"
```

### Disable

```
- hosts: all
  roles:
    - role: blackbox_exporter
  vars:
    blackbox_exporter_state: 'disable'
    blackbox_exporter_config:
      - name: 'icmp_ip4'
        prober: 'icmp'
        timeout: '5s'
        config: |
          preferred_ip_protocol: "ip4"
          source_ip_address: "10.1.1.10"
```

### Remove

```
- hosts: all
  roles:
    - role: blackbox_exporter
  vars:
    blackbox_exporter_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: blackbox_exporter
  vars:
    blackbox_exporter_state: 'inactive'
```

## Parameters

### Role

`blackbox_exporter_state`

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

`blackbox_exporter_config`

    Description: Define the 'blackbox_exporter_config' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : - name: 'icmp_ip4'
                   prober: 'icmp'
                   timeout: '5s'
                   config: |
                     preferred_ip_protocol: "ip4"

                 - name: 'tcp_ip4'
                   prober: 'tcp'
                   timeout: '5s'
                   config: |
                     preferred_ip_protocol: "ip4"

                 - name: 'http_ip4_basic'
                   prober: 'http'
                   timeout: '5s'
                   config: |
                     valid_http_versions: ["HTTP/1.1", "HTTP/2.0"]
                     valid_status_codes: [200, 201, 202, 203, 204, 205, 206, 207, 208, 226, 301, 400, 401]
                     method: GET
                     no_follow_redirects: false
                     fail_if_ssl: false
                     fail_if_not_ssl: false
                     tls_config: {insecure_skip_verify: true}
                     preferred_ip_protocol: "ip4"

    Options    :
      Examples: - name: 'icmp_ip4'
                  prober: 'icmp'
                  timeout: '5s'
                  config: |
                    preferred_ip_protocol: "ip4"

                - name: 'icmp_ip6'
                  prober: 'icmp'
                  timeout: '5s'
                  config: |
                    preferred_ip_protocol: "ip6"

                - name: 'tcp_ip4'
                  prober: 'tcp'
                  timeout: '5s'
                  config: |
                    preferred_ip_protocol: "ip4"

                - name: 'tcp_ip6'
                  prober: 'tcp'
                  timeout: '5s'
                  config: |
                    preferred_ip_protocol: "ip6"

                - name: 'http_ip4_basic'
                  prober: 'http'
                  timeout: '5s'
                  config: |
                    valid_http_versions: ["HTTP/1.1", "HTTP/2.0"]
                    valid_status_codes: [200, 201, 202, 203, 204, 205, 206, 207, 208, 226, 301, 400]
                    method: GET
                    no_follow_redirects: false
                    fail_if_ssl: false
                    fail_if_not_ssl: false
                    tls_config: {insecure_skip_verify: true}
                    preferred_ip_protocol: "ip4"

                - name: 'http_ip6_basic'
                  prober: 'http'
                  timeout: '5s'
                  config: |
                    valid_http_versions: ["HTTP/1.1", "HTTP/2.0"]
                    valid_status_codes: [200, 201, 202, 203, 204, 205, 206, 207, 208, 226, 301, 400]
                    method: GET
                    no_follow_redirects: false
                    fail_if_ssl: false
                    fail_if_not_ssl: false
                    tls_config: {insecure_skip_verify: true}
                    preferred_ip_protocol: "ip6"

`blackbox_exporter_monitor_monit_state`

    Description: Control the 'blackbox_exporter_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`blackbox_exporter_nftables_filter_rule`

    Description: Define the 'blackbox_exporter_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 9115 counter accept comment "blackbox_exporter from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 9115 counter accept comment "blackbox_exporter from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 9115 counter accept comment "blackbox_exporter from internal-networks"

`blackbox_exporter_nftables_state`

    Description: Control the 'blackbox_exporter_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`blackbox_exporter_version`

    Description: Define the 'blackbox_exporter_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.27.0'
    Options    :
      Examples: '0.11.0' | '0.12.0'

## Conflicts

## Dependencies

### Packages

`blackbox_exporter`

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
