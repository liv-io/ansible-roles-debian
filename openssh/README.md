# openssh

## Description

SSH (Secure SHell) is a program for logging into and executing commands on a
remote machine. SSH is intended to replace rlogin and rsh, and to provide secure
encrypted communications between two untrusted hosts over an insecure network.
X11 connections and arbitrary TCP/IP ports can also be forwarded over the secure
channel.
OpenSSH is OpenBSD's version of the last free version of SSH, bringing it up to
date in terms of security and features.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: openssh
  vars:
    openssh_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: openssh
  vars:
    openssh_state: 'enable'
    openssh_allow_users: ['user01', 'user02', 'user03']
    openssh_password_authentication: False
    openssh_listen_address: ['0.0.0.0']
```

### Disable

```
- hosts: all
  roles:
    - role: openssh
  vars:
    openssh_state: 'disable'
    openssh_allow_users: ['user01', 'user02', 'user03']
    openssh_password_authentication: False
    openssh_listen_address: ['0.0.0.0']
```

### Remove

```
- hosts: all
  roles:
    - role: openssh
  vars:
    openssh_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: openssh
  vars:
    openssh_state: 'inactive'
```

## Parameters

### Role

`openssh_state`

    Description: Control the state of the role.
                 'openssh' is a core service and should therefore not be
                 disabled.
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

`openssh_address_family`

    Description: AddressFamily
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'any'
    Options    :
      IPv4/IPv6: 'any' | 'all'
      IPv4     : 'inet' | 'ipv4'
      IPv6     : 'inet6' | 'ipv6'

`openssh_allow_groups`

    Description: AllowGroups
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['group1', 'group2', 'group3']
      None    : []

`openssh_allow_users`

    Description: AllowUsers
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['user1', 'user2', 'user3']
      None    : []

`openssh_banner`

    Description: Banner
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`openssh_ciphers`

    Description: Ciphers
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['aes256-ctr', 'aes256-gcm@openssh.com', 'chacha20-poly1305@openssh.com']
    Options    :
      Examples: ['aes256-ctr']

`openssh_compression`

    Description: Compression
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`openssh_debian_banner`

    Description: DebianBanner
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_deny_groups`

    Description: DenyGroups
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['group1', 'group2', 'group3']
      None    : []

`openssh_deny_users`

    Description: DenyUsers
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: ['user1', 'user2', 'user3']
      None    : []

`openssh_host_key`

    Description: HostKey
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['/etc/ssh/ssh_host_rsa_key', '/etc/ssh/ssh_host_ed25519_key']
    Options    :
      Examples: ['/etc/ssh/ssh_host_ed25519_key']

`openssh_host_key_algorithms`

    Description: HostKeyAlgorithms
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['ssh-ed25519', 'ssh-ed25519-cert-v01@openssh.com', 'sk-ssh-ed25519@openssh.com', 'sk-ssh-ed25519-cert-v01@openssh.com']
    Options    :
      Examples: ['ssh-ed25519']

`openssh_kex_algorithms`

    Description: KexAlgorithms
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    :
      Debian 11: ['sntrup4591761x25519-sha512@tinyssh.org', 'curve25519-sha256', 'curve25519-sha256@libssh.org']
      debian 12: ['sntrup761x25519-sha512', 'sntrup761x25519-sha512@openssh.com']
    Options    :
      Examples: ['sntrup761x25519-sha512', 'sntrup761x25519-sha512@openssh.com']

`openssh_listen_address`

    Description: ListenAddress
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['0.0.0.0']
    Options    :
      Examples: ['0.0.0.0'] | ['127.0.0.1', '::', '::1'] |
                ['192.168.1.1', '2001:0ec9:96b4:19e4:2421:9b3f:1480:8458']

`openssh_login_grace_time`

    Description: LoginGraceTime
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 60
    Options    :
      Examples: 60 | 120 | 240

`openssh_macs`

    Description: MACs
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['hmac-sha2-512-etm@openssh.com', 'umac-128-etm@openssh.com']
    Options    :
      Examples: ['hmac-sha2-512-etm@openssh.com']

`openssh_match`

    Description: Match
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'sftpuser', type: 'User', config: {'ChrootDirectory': '/opt/sftp', 'ForceCommand': 'internal-sftp'}},
                 {name: 'sftpgroup', type: 'Group', config: {'ChrootDirectory': '/opt/sftp', 'ForceCommand': 'internal-sftp'}}]
      None    : []

`openssh_max_auth_tries`

    Description: MaxAuthTries
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 3
    Options    :
      Examples: 5 | 10

`openssh_max_startups`

    Description: MaxAuthTries
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '10:30:100'
    Options    :
      Examples: '10:30:60'

`openssh_monitor_monit_state`

    Description: Control the 'openssh_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_nftables_filter_rule`

    Description: Define the 'openssh_nftables_filter_rule' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      add rule ip filter INPUT ip saddr { 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 } ct state new tcp dport 22 counter accept comment "ssh from internal private addresses"
      add rule ip6 filter INPUT ip6 saddr fc00::/7 ct state new tcp dport 22 counter accept comment "ssh from unique local addresses"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 22 counter accept comment "ssh from internal-networks"

`openssh_nftables_state`

    Description: Control the 'openssh_nftables_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_password_authentication`

    Description: PasswordAuthentication
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_permit_root_login`

    Description: PermitRootLogin
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_port`

    Description: Port
    Required   : False
    Value      : Arbitrary
    Type       : Array, Integer, String
    Default    : ['22']
    Options    :
      Examples: ['22'] | ['22', '222'] | ['22', '8022']

`openssh_print_motd`

    Description: PrintMotd
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_print_last_log`

    Description: PrintLastLog
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`openssh_pubkey_accepted_algorithms`

    Description: PubkeyAcceptedAlgorithms
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : ['ssh-ed25519', 'ssh-ed25519-cert-v01@openssh.com', 'sk-ssh-ed25519@openssh.com', 'sk-ssh-ed25519-cert-v01@openssh.com']
    Options    :
      Examples:  ['ssh-ed25519', 'ssh-ed25519-cert-v01@openssh.com']

`openssh_pubkey_authentication`

    Description: PubkeyAuthentication
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`openssh_tcp_keep_alive`

    Description: TCPKeepAlive
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`openssh_use_dns`

    Description: UseDNS
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_version_addendum`

    Description: VersionAddendum
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'none'
    Options    :
      Examples: 'hostname' | 'Operating System'

`openssh_x11_display_offset`

    Description: X11DisplayOffset
    Required   : False
    Value      : Arbitrary
    Type       : Integer, String
    Default    : 22
    Options    :
      Examples: 10 | 15

`openssh_x11_forwarding`

    Description: X11Forwarding
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`openssh_x11_use_localhost`

    Description: X11UseLocalhost
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`openssh`

    Version: >= 7.0
    Name   :
      Debian 11: 'openssh-server'
      Debian 12: 'openssh-server'

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
