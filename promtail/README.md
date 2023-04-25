# promtail

## Description

Promtail is an agent which ships the contents of local logs to a private Loki
instance or Grafana Cloud. It is usually deployed to every machine that has
applications needed to be monitored.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: promtail
  vars:
    promtail_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: promtail
  vars:
    promtail_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: promtail
  vars:
    promtail_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: promtail
  vars:
    promtail_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: promtail
  vars:
    promtail_state: 'inactive'
```

## Parameters

### Role

`promtail_state`

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

`promtail_monitor_monit_state`

    Description: Control the 'promtail_monitor_monit_state' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'false'
    Options    :
      Enable : 'true' | 'yes' | 'enable'
      Disable: 'false' | 'no' | 'disable'

`promtail_pipeline_stages_all`

    Description: Define the 'promtail_pipeline_stages_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      {% raw %}
      # Extract SSH user and source IP address and generate metrics
      - match:
          selector: '{job="syslog"}'
          stages:
          - regex:
              expression: 'Accepted\spublickey\sfor\s(?P<ssh_user>(\w+))\sfrom\s(?P<ssh_source_ip>(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3})'
          - labels:
              ssh_user:
              ssh_source_ip:
          - metrics:
              ssh_login:
                type: Counter
                description: "SSH login counter"
                source: ssh_user
                config:
                  action: inc
  
      # Extract SSH user and session status (opened or closed)
      - match:
          selector: '{job="syslog"}'
          stages:
          - regex:
              expression: 'sshd.*session\s(?P<ssh_session_state>(\w+))\sfor user\s(?P<ssh_session_user>(\w+)).*'
          - labels:
              ssh_session_user:
              ssh_session_state:
          - metrics:
              ssh_session:
                type: Counter
                description: "SSH login/logout counter"
                source: ssh_session_state
                config:
                  action: inc
  
      # Extract name for users called su or sudo
      - match:
          selector: '{job="syslog"}'
          stages:
          - regex:
              expression: "su.*session\\sopened\\sfor\\suser\\sroot\\sby\\s(?P<root_login_user>(\\w+))\\("
          - labels:
              root_login_user:
      {% endraw %}
    Options    :
      Examples: ''
        {% raw %}
        # Extract Suricata labels
        - match:
            selector: '{app="suricata"}'
            stages:
            - regex:
                expression: '\[\d{1,10}:(?P<suricata_sid>(\d{1,10})):\d{1,10}\]'
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\]\s)(?P<suricata_msg>(.+?))\s\['
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\[Classification:\s)(?P<suricata_class>(.+?))\]\s\['
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\[Priority:\s)(?P<suricata_priority>([1-4]))\]\s\{'
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\]\s\{)(?P<suricata_protocol>(.+?))\}\s'
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\}\s)(?P<suricata_src_ip>((?:[0-9]{1,3}\.){3}[0-9]{1,3})):[0-9]+\s->\s'
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\}\s)(?:[0-9]{1,3}\.){3}[0-9]{1,3}:(?P<suricata_src_port>([0-9]+))\s->\s'
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\s->\s)(?P<suricata_dst_ip>((?:[0-9]{1,3}\.){3}[0-9]{1,3})):[0-9]+'
            - regex:
                expression: '(?:.+\[\d{1,10}:\d{1,10}:\d{1,10}\])(?:.+\s->\s(?:[0-9]{1,3}\.){3}[0-9]{1,3}:)(?P<suricata_dst_port>([0-9]+))'
            - labels:
                suricata_sid:
                suricata_msg:
                suricata_class:
                suricata_priority:
                suricata_protocol:
                suricata_src_ip:
                suricata_src_port:
                suricata_dst_ip:
                suricata_dst_port:
        {% endraw %}
      None: ''

`promtail_pipeline_stages_group`

    Description: Define the 'promtail_pipeline_stages_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
    Options    :
      Examples: |
        {% raw %}
        # Extract Nginx labels
        - match:
            selector: '{app="nginx"}'
            stages:
            - regex:
                expression: 'remote_addr:(?P<nginx_remote_addr>(\S+))'
            - regex:
                expression: 'request:"(?P<nginx_header>(\w+))'
            - regex:
                expression: 'status:(?P<nginx_status>([0-9]{3}))'
            - regex:
                expression: 'http_x_forwarded_for:"(?P<nginx_http_x_forwarded_for>((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3})|\-)"'
            - labels:
                nginx_remote_addr:
                nginx_header:
                nginx_status:
                nginx_http_x_forwarded_for:
        {% endraw %}
      None: ''

`promtail_pipeline_stages_host`

    Description: Define the 'promtail_pipeline_stages_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
    Options    :
      Examples: ''
        {% raw %}
        # Extract Apache HTTPD labels
        - match:
            selector: '{app="httpd"}'
            stages:
            - regex:
                expression: 'remote_addr:(?P<httpd_remote_addr>(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3})'
            - regex:
                expression: 'remote_user:(?P<httpd_user>(\S+))'
            - regex:
                expression: 'request:"(?P<httpd_header>(\S+))'
            - regex:
                expression: 'status:(?P<httpd_status>([0-9]{3}))'
            - labels:
                httpd_remote_addr:
                httpd_user:
                httpd_header:
                httpd_status:
        {% endraw %}
      None: ''

`promtail_version`

    Description: Define the 'promtail_version' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '2.8.1'
    Options    :
      Examples: '1.5.0' | '1.6.0'

## Conflicts

## Dependencies

### Archives

`promtail`

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
