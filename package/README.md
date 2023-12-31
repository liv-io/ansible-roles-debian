# package

## Description

Install or remove packages.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Inactive

```
- package: all
  roles:
    - role: package
  vars:
    package_state: 'inactive'
```

### Config

```
vars:
  package_config_all:
    - {name: 'arping', state: True}
    - {name: 'bc', state: True}
    - {name: 'bsd-mailx', state: True}
    - {name: 'bzip2', state: True}
    - {name: 'ca-certificates', state: True}
    - {name: 'cloc', state: True}
    - {name: 'colordiff', state: True}
    - {name: 'coreutils', state: True}
    - {name: 'curl', state: True}
    - {name: 'diffutils', state: True}
    - {name: 'dnsutils', state: True}
    - {name: 'dstat', state: True}
    - {name: 'file', state: True}
    - {name: 'findutils', state: True}
    - {name: 'gawk', state: True}
    - {name: 'gdisk', state: True}
    - {name: 'git', state: True}
    - {name: 'gnupg', state: True}
    - {name: 'gnupg1', state: True}
    - {name: 'gpatch', state: True}
    - {name: 'grep', state: True}
    - {name: 'gzip', state: True}
    - {name: 'htop', state: True}
    - {name: 'iftop', state: True}
    - {name: 'iperf', state: True}
    - {name: 'iperf3', state: True}
    - {name: 'iproute2', state: True}
    - {name: 'iputils-arping', state: True}
    - {name: 'iputils-ping', state: True}
    - {name: 'jq', state: True}
    - {name: 'ldnsutils', state: True}
    - {name: 'less', state: True}
    - {name: 'lowdown', state: True}
    - {name: 'lsof', state: True}
    - {name: 'man-db', state: True}
    - {name: 'moreutils', state: True}
    - {name: 'mtr-tiny', state: True}
    - {name: 'nano', state: True}
    - {name: 'ncat', state: True}
    - {name: 'net-tools', state: True}
    - {name: 'netcat-openbsd', state: True}
    - {name: 'nload', state: True}
    - {name: 'nmap', state: True}
    - {name: 'openssl', state: True}
    - {name: 'openvswitch-switch', state: True}
    - {name: 'patchutils', state: True}
    - {name: 'picocom', state: True}
    - {name: 'psmisc', state: True}
    - {name: 'rsync', state: True}
    - {name: 'sed', state: True}
    - {name: 'socat', state: True}
    - {name: 'stress', state: True}
    - {name: 'sysstat', state: True}
    - {name: 'tar', state: True}
    - {name: 'tcpdump', state: True}
    - {name: 'tcptraceroute', state: True}
    - {name: 'telnet', state: True}
    - {name: 'traceroute', state: True}
    - {name: 'unzip', state: True}
    - {name: 'wget', state: True}
    - {name: 'zip', state: True}

  package_config_group:
    - {name: 'tcpdump', state: True}
    - {name: 'telnet', state: True}

  package_config_host:
    - {name: 'nyancat', state: False}
```

## Parameters

### Config

`state`

    Description: Control the package state.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`name`

    Description: Define the package name.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'htop' | 'nyancat'

### Role

`package_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`package_config_all`

    Description: Define the 'package_config_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ca-certificates', state: True}, {name: 'colordiff', state: True}, {name: 'curl', state: True}, {name: 'dnsutils', state: True}, {name: 'dstat', state: True}, {name: 'htop', state: True}, {name: 'iproute2', state: True}, {name: 'iputils-ping', state: True}, {name: 'jq', state: True}, {name: 'less', state: True}, {name: 'net-tools', state: True}, {name: 'wget', state: True}]
      None    : []

`package_config_group`

    Description: Define the 'package_config_group' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ca-certificates', state: True}, {name: 'colordiff', state: True}, {name: 'curl', state: True}, {name: 'dnsutils', state: True}, {name: 'dstat', state: True}, {name: 'htop', state: True}, {name: 'iproute2', state: True}, {name: 'iputils-ping', state: True}, {name: 'jq', state: True}, {name: 'less', state: True}, {name: 'net-tools', state: True}, {name: 'wget', state: True}]
      None    : []

`package_config_host`

    Description: Define the 'package_config_host' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ca-certificates', state: True}, {name: 'colordiff', state: True}, {name: 'curl', state: True}, {name: 'dnsutils', state: True}, {name: 'dstat', state: True}, {name: 'htop', state: True}, {name: 'iproute2', state: True}, {name: 'iputils-ping', state: True}, {name: 'jq', state: True}, {name: 'less', state: True}, {name: 'net-tools', state: True}, {name: 'wget', state: True}]
      None    : []

## Conflicts

## Dependencies

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
