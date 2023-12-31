# alertmanager

## Description

The Alertmanager handles alerts sent by client applications such as the
Prometheus server. It takes care of deduplicating, grouping, and routing them to
the correct receiver integrations such as email, PagerDuty, or OpsGenie. It also
takes care of silencing and inhibition of alerts.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: alertmanager
  vars:
    alertmanager_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: alertmanager
  vars:
    alertmanager_state: 'enable'
    alertmanager_config:
      - section: 'global'
        config: |
          smtp_from: 'alertmanager@domain.tld'
          smtp_hello: 'ms.domain.tld'
          smtp_smarthost: 'mail.domain.tld:587'
          smtp_auth_username: 'alertmanager@domain.tld'
          smtp_auth_password: 'TFvPtx-64pUMmBH2HMp5MRW.r_VYx45q'
          smtp_require_tls: true

      - section: 'route'
        config: |
          receiver: 'itops'
          group_by: ['instance', 'alert']
          group_wait: 1m
          group_interval: 30m
          repeat_interval: 150m
          routes:
          - match:
              severity: 'critical'
              receiver: 'itops'

      - section: 'inhibit_rules'
        config: |
          - source_match:
              severity: 'critical'
            target_match:
              severity: 'warning'
            equal: ['alertname']

      - section: 'receivers'
        config: |
          - name: 'itops'
            email_configs:
            - to: 'user01@domain.tld, user02@domain.tld'
```

### Disable

```
- hosts: all
  roles:
    - role: alertmanager
  vars:
    alertmanager_state: 'disable'
    alertmanager_config:
      - section: 'global'
        config: |
          smtp_from: 'alertmanager@domain.tld'
          smtp_hello: 'ms.example.com'
          smtp_smarthost: 'mail.domain.tld:587'
          smtp_auth_username: 'alertmanager@domain.tld'
          smtp_auth_password: 'TFvPtx-64pUMmBH2HMp5MRW.r_VYx45q'
          smtp_require_tls: true

      - section: 'route'
        config: |
          receiver: 'itops'
          group_by: ['instance', 'alert']
          group_wait: 1m
          group_interval: 30m
          repeat_interval: 150m
          routes:
          - match:
              severity: 'critical'
              receiver: 'itops'

      - section: 'inhibit_rules'
        config: |
          - source_match:
              severity: 'critical'
            target_match:
              severity: 'warning'
            equal: ['alertname']

      - section: 'receivers'
        config: |
          - name: 'itops'
            email_configs:
            - to: 'user01@domain.tld, user02@domain.tld'
```

### Remove

```
- hosts: all
  roles:
    - role: alertmanager
  vars:
    alertmanager_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: alertmanager
  vars:
    alertmanager_state: 'inactive'
```

## Parameters

### Role

`alertmanager_state`

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

`alertmanager_config`

    Description: Define the 'alertmanager_config' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: section: 'global'
                config: |
                  smtp_from: 'alertmanager@domain.tld'
                  smtp_hello: 'ms.domain.tld'
                  smtp_smarthost: 'mail.domain.tld:587'
                  smtp_auth_username: 'alertmanager@domain.tld'
                  smtp_auth_password: 'TFvPtx-64pUMmBH2HMp5MRW.r_VYx45q'
                  smtp_require_tls: true

                section: 'receivers'
                config: |
                  name: 'itops'
                  email_configs:
                    - to: 'user01@domain.tld, user02@domain.tld'

`alertmanager_monitor_monit_state`

    Description: Control the 'alertmanager_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`alertmanager_nftables_filter_rule`

    Description: Define the 'alertmanager_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 9093, 9093 } counter accept comment "alertmanager from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport { 9093, 9093 } counter accept comment "alertmanager from unique local addresses"
      add rule ip filter OUTPUT ct state new tcp dport 25 counter accept comment "smtp to any"
      add rule ip6 filter OUTPUT ct state new tcp dport 25 counter accept comment "smtp to any"
      add rule ip filter OUTPUT ct state new tcp dport { 465, 587 } counter accept comment "smtps to any"
      add rule ip6 filter OUTPUT ct state new tcp dport { 465, 587 } counter accept comment "smtps to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport { 9093, 9093 } counter accept comment "alertmanager from internal-networks"

`alertmanager_nftables_state`

    Description: Control the 'alertmanager_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`alertmanager_version`

    Description: Define the 'alertmanager_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '0.26.0'
    Options    :
      Examples: '0.15.3' | '0.16.0'

`alertmanager_web_external_url`

    Description: Define the 'alertmanager_web_external_url' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "https://alertmanager.{{ansible_domain}}"
    Options    :
      Examples: 'https://host.domain.tld'

## Conflicts

## Dependencies

### Archives

`alertmanager`

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
