# apache2

## Description

The Apache HTTP Server is a powerful, efficient, and extensible web server.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: apache2
  vars:
    apache2_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: apache2
  vars:
    apache2_state: 'enable'
```

### Disable

```
- hosts: all
  roles:
    - role: apache2
  vars:
    apache2_state: 'disable'
```

### Remove

```
- hosts: all
  roles:
    - role: apache2
  vars:
    apache2_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: apache2
  vars:
    apache2_state: 'inactive'
```

### Config

```
vars:
  apache2_config:
    - name: 'host.domain.tld'
      state: True
      listen: '*'
      port: 80
      document_root: '/data/host'
      config: |
        # ModSecurity
        SecRuleEngine On
        # Debug log
        SecDebugLog ${APACHE_LOG_DIR}/host.domain.tld-80_modsec_debug.log
        SecDebugLogLevel 0
        # Audit log
        SecAuditEngine RelevantOnly
        SecAuditLog ${APACHE_LOG_DIR}/host.domain.tld-80_modsec_audit.log
        SecAuditLogParts ABFHIZ
        SecAuditLogRelevantStatus "^(?:5|4(?!04))"
        SecAuditLogType Serial

        Redirect permanent /  https://host.domain.tld/

    - name: 'host.domain.tld'
      state: True
      listen: '*'
      port: 443
      document_root: '/data/host'
      hsts_state: True
      ssl_state: True
      ssl_certificate: '/etc/ssl/host/host.domain.tld.crt'
      ssl_certificate_key: '/etc/ssl/host/host.domain.tld.key'
      ssl_ca_certificate: '/etc/ssl/host/ca.domain.tld.crt'
      config: |
        # ModSecurity
        SecRuleEngine On
        # Debug log
        SecDebugLog ${APACHE_LOG_DIR}/host.domain.tld-443_modsec_debug.log
        SecDebugLogLevel 0
        # Audit log
        SecAuditEngine RelevantOnly
        SecAuditLog ${APACHE_LOG_DIR}/host.domain.tld-443_modsec_audit.log
        SecAuditLogParts ABFHIZ
        SecAuditLogRelevantStatus "^(?:5|4(?!04))"
        SecAuditLogType Serial

        <Directory '/data/host'>
          # DirectoryIndex
          DirectoryIndex index.html
          # Basic Authentication
          AuthType Basic
          AuthName "Authentication Required"
          AuthUserFile /etc/apache2/conf/htpasswd
          Require valid-user
          # Client Authentication
          SSLOptions +StdEnvVars
          SSLVerifyClient require
        </Directory>
```

## Parameters

### Config

`alias`

    Description: Define the 'alias' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['domain.tld', 'www.domain.tld', 'web.domain.tld]
      None    : []

`config`

    Description: Define the 'config' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        <Directory "/data/host">
          AllowOverride none
          Require all granted
        </Directory>
      None: ''

`document_root`

    Description: Define the 'document_root' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/var/www/html' | '/var/www/html/host.domain.tld'

`hsts_max_age`

    Description: Set the 'hsts_max_age' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : "{{apache2_hsts_max_age}}"
    Options    :
      Examples: 15768000 | 31536000 | 47304000

`hsts_state`

    Description: Control the 'hsts_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`listen`

    Description: Define the 'listen' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '*'
    Options    :
      Examples: '*' | '127.0.0.1' | 'localhost'

`log_level`

    Description: Define the 'log_level' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'warn'
    Options    :
      Examples: 'emerg' | 'alert' | 'crit' | 'error' | 'warn' |
                'notice' | 'info' | 'debug' | 'trace1' | 'trace2'

`name`

    Description: Define the 'name' option.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'host.domain.tld'

`port`

    Description: Set the 'port' option.
    Required   : True
    Value      : Arbitrary
    Type       : Integer, String
    Default    : ''
    Options    :
      Examples: '80' | '8080' | '443' | 8443'

`server_admin`

    Description: Define the 'server_admin' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'admin@domain.tld'
      None    : ''

`ssl_ca_certificate`

    Description: Define the 'ssl_ca_certificate' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/etc/ssl/host/host.domain.tld.ca'
      None    : ''

`ssl_certificate`

    Description: Define the 'ssl_certificate_file' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/etc/ssl/host/host.domain.tld.crt'
      None    : ''

`ssl_certificate_chain`

    Description: Define the 'ssl_certificate_chain' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/etc/ssl/host/host.domain.tld.chain'
      None    : ''

`ssl_certificate_key`

    Description: Define the 'ssl_certificate_key' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/etc/ssl/host/host.domain.tld.key'
      None    : ''

`ssl_ciphers`

    Description: Define the 'ssl_ciphers' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305'
    Options    :
      Examples: 'TLS_AES_256_GCM_SHA384'

`ssl_compression`

    Description: Control the 'ssl_compression' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`ssl_honor_cipher_order`

    Description: Control the 'ssl_honor_cipher_order' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`ssl_protocols`

    Description: Define the 'ssl_protocols' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['-ALL', '+TLSv1.2', '+TLSv1.3']
    Options    :
      Examples: ['-ALL', '+TLSv1.3']

`ssl_session_tickets`

    Description: Control the 'ssl_session_tickets' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`ssl_state`

    Description: Control the 'ssl_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`xss_protection_state`

    Description: Control the 'xss_protection_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

### Role

`apache2_state`

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

`apache2_config`

    Description: Define the 'apache2_config' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'host.domain.tld', state: 'true', port: '80',
                  document_root: '/var/www/host.domain.tld'}] |
                [{name: 'host.domain.tld', state: 'true', port: '443',
                  document_root: '/var/www/host.domain.tld', ssl_state: 'true',
                  ssl_certificate: '/etc/ssl/host/host.domain.tld.crt',
                  ssl_certificate_key: '/etc/ssl/host/host.domain.tld.key',
                  ssl_certificate_chain: '/etc/ssl/host/host.domain.tld.chain',
                  ssl_ca_certificate: '/etc/ssl/host/ca.domain.tld.crt'}]
      None    : []

`apache2_enable_mmap`

    Description: Control the 'apache2_enable_mmap' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`apache2_enable_sendfile`

    Description: Control the 'apache2_enable_sendfile' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`apache2_global_config`

    Description: Define the 'apache2_global_config' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        <Location /server-status>
          SetHandler server-status
          Require all denied
          # Localhost
          Require ip 127.0.0.1
        </Location>
      None    : ''

`apache2_hsts_max_age`

    Description: Set the 'apache2_hsts_max_age' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : '31536000'
    Options    :
      Examples: '15768000' | '31536000' | '47304000'

`apache2_listen`

    Description: Set the 'apache2_listen' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['80', '443']
    Options    :
      Examples: ['80'] | ['8080']
      None    : []

`apache2_log_format_combined`

    Description: Define the 'apache2_log_format_combined' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\"'
    Options    :
      Examples: 'remote_addr:%h %l remote_user:%u %t request:\"%r\" status:%>s %b \"%{Referer}i\" \"%{User-Agent}i\"'

`apache2_log_format_combined_io`

    Description: Define the 'apache2_log_format_combined_io' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\" %I %O'
    Options    :
      Examples: 'remote_addr:%h %l remote_user:%u %t request:\"%r\" status:%>s %b \"%{Referer}i\" \"%{User-Agent}i\" %I %O'

`apache2_log_format_combined_ssl`

    Description: Define the 'apache2_log_format_combined_ssl' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-agent}i\" %{SSL_PROTOCOL}x %{SSL_CIPHER}x'
    Options    :
      Examples: 'remote_addr:%h %l remote_user:%u %t request:\"%r\" status:%>s %b \"%{Referer}i\" \"%{User-agent}i\" %{SSL_PROTOCOL}x %{SSL_CIPHER}x'

`apache2_log_format_common`

    Description: Define the 'apache2_log_format_common' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '%h %l %u %t \"%r\" %>s %b'
    Options    :
      Examples: 'remote_addr:%h %l remote_user:%u %t request:\"%r\" status:%>s %b'

`apache2_log_format_vhost_combined`

    Description: Define the 'apache2_log_format_vhost_combined' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '%v:%p %h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\"'
    Options    :
      Examples: '%v:%p %h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\"'

`apache2_modules`

    Description: Control the 'apache2_modules' option.
    Required   : False
    Value      : Predetermined
    Type       : Array/Hash
    Default    : [{name: auth_basic, state: 'true'}, {name: headers, state: 'true'}, {name: proxy, state: 'true'}, {name: proxy_wstunnel, state: 'true'}, {name: socache_shmcb, state: 'true'}, {name: ssl, state: 'true'}]
    Options    :
      Examples: [{name: 'brotli', state: 'false'}, {name: 'http2', state: 'true'}, {name: 'rewrite', state: 'true'}]
      None    : []

`apache2_monitor_monit_state`

    Description: Control the 'apache2_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`apache2_nftables_filter_rule`

    Description: Define the 'apache2_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport { 80, 443 } counter accept comment "apache2 from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport { 80, 443 }counter accept comment "apache2 from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport { 80, 443 } counter accept comment "apache2 from internal-networks"

`apache2_nftables_state`

    Description: Control the 'apache2_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`apache2_server_admin`

    Description: Define the 'apache2_server_admin' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "admin@{{ansible_domain}}"
    Options    :
      Examples: 'admin@domain.tld'
      None    : ''

`apache2_server_signature`

    Description: Control the 'apache2_server_signature' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'On'
    Options    :
      On   : 'true' | 'yes' | 'enable'
      Off  : 'false' | 'no' | 'disable'
      EMail: 'email

`apache2_server_tokens`

    Description: Control the 'apache2_server_tokens' option.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'prod'
    Options    :
      Full   : 'true'
      OS     : 'false'
      Minor  : 'minor'
      Minimal: 'minimal'
      Major  : 'major'
      Prod   : 'prod'

`apache2_trace_enable`

    Description: Control the 'apache2_trace_enable' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`apache2`

    Version: >= 2.4
    Name   :
      Debian 12: 'apache2'
      Debian 13: 'apache2'

`apache2-utils`

    Version: >= 2.4
    Name   :
      Debian 12: 'apache2-utils'
      Debian 13: 'apache2-utils'

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

    Version: 12
    Version: 13
