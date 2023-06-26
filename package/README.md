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
    - {name: 'arping', state: 'true'}
    - {name: 'bc', state: 'true'}
    - {name: 'bsd-mailx', state: 'true'}
    - {name: 'bzip2', state: 'true'}
    - {name: 'ca-certificates', state: 'true'}
    - {name: 'cloc', state: 'true'}
    - {name: 'colordiff', state: 'true'}
    - {name: 'coreutils', state: 'true'}
    - {name: 'curl', state: 'true'}
    - {name: 'diffutils', state: 'true'}
    - {name: 'dnsutils', state: 'true'}
    - {name: 'dstat', state: 'true'}
    - {name: 'file', state: 'true'}
    - {name: 'findutils', state: 'true'}
    - {name: 'gawk', state: 'true'}
    - {name: 'gdisk', state: 'true'}
    - {name: 'git', state: 'true'}
    - {name: 'gnupg', state: 'true'}
    - {name: 'gnupg1', state: 'true'}
    - {name: 'gpatch', state: 'true'}
    - {name: 'grep', state: 'true'}
    - {name: 'gzip', state: 'true'}
    - {name: 'htop', state: 'true'}
    - {name: 'iftop', state: 'true'}
    - {name: 'iperf', state: 'true'}
    - {name: 'iperf3', state: 'true'}
    - {name: 'iproute2', state: 'true'}
    - {name: 'iputils-arping', state: 'true'}
    - {name: 'iputils-ping', state: 'true'}
    - {name: 'jq', state: 'true'}
    - {name: 'ldnsutils', state: 'true'}
    - {name: 'less', state: 'true'}
    - {name: 'lowdown', state: 'true'}
    - {name: 'lsof', state: 'true'}
    - {name: 'man-db', state: 'true'}
    - {name: 'moreutils', state: 'true'}
    - {name: 'mtr-tiny', state: 'true'}
    - {name: 'nano', state: 'true'}
    - {name: 'ncat', state: 'true'}
    - {name: 'net-tools', state: 'true'}
    - {name: 'netcat-openbsd', state: 'true'}
    - {name: 'nload', state: 'true'}
    - {name: 'nmap', state: 'true'}
    - {name: 'openssl', state: 'true'}
    - {name: 'openvswitch-switch', state: 'true'}
    - {name: 'patchutils', state: 'true'}
    - {name: 'picocom', state: 'true'}
    - {name: 'psmisc', state: 'true'}
    - {name: 'rsync', state: 'true'}
    - {name: 'sed', state: 'true'}
    - {name: 'socat', state: 'true'}
    - {name: 'stress', state: 'true'}
    - {name: 'sysstat', state: 'true'}
    - {name: 'tar', state: 'true'}
    - {name: 'tcpdump', state: 'true'}
    - {name: 'tcptraceroute', state: 'true'}
    - {name: 'telnet', state: 'true'}
    - {name: 'traceroute', state: 'true'}
    - {name: 'unzip', state: 'true'}
    - {name: 'wget', state: 'true'}
    - {name: 'zip', state: 'true'}

  package_config_group:
    - {name: 'tcpdump', state: 'true'}
    - {name: 'telnet', state: 'true'}

  package_config_host:
    - {name: 'nyancat', state: 'false'}
```

## Parameters

### Config

`state`

    Description: Control the package state.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'true'
    Options    :
      Install: 'true' | 'yes' | 'install'
      Remove : 'false' | 'no' | 'remove'

`name`

    Description: Define the package name.
    Implemented: 0.1.0
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'htop' | 'nyancat'

### Role

`package_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`package_config_all`

    Description: Define the 'package_config_all' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ca-certificates', state: 'true'}, {name: 'colordiff', state: 'true'}, {name: 'curl', state: 'true'}, {name: 'dnsutils', state: 'true'}, {name: 'dstat', state: 'true'}, {name: 'htop', state: 'true'}, {name: 'iproute2', state: 'true'}, {name: 'iputils-ping', state: 'true'}, {name: 'jq', state: 'true'}, {name: 'less', state: 'true'}, {name: 'net-tools', state: 'true'}, {name: 'wget', state: 'true'}]
      None    : []

`package_config_group`

    Description: Define the 'package_config_group' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ca-certificates', state: 'true'}, {name: 'colordiff', state: 'true'}, {name: 'curl', state: 'true'}, {name: 'dnsutils', state: 'true'}, {name: 'dstat', state: 'true'}, {name: 'htop', state: 'true'}, {name: 'iproute2', state: 'true'}, {name: 'iputils-ping', state: 'true'}, {name: 'jq', state: 'true'}, {name: 'less', state: 'true'}, {name: 'net-tools', state: 'true'}, {name: 'wget', state: 'true'}]
      None    : []

`package_config_host`

    Description: Define the 'package_config_host' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ca-certificates', state: 'true'}, {name: 'colordiff', state: 'true'}, {name: 'curl', state: 'true'}, {name: 'dnsutils', state: 'true'}, {name: 'dstat', state: 'true'}, {name: 'htop', state: 'true'}, {name: 'iproute2', state: 'true'}, {name: 'iputils-ping', state: 'true'}, {name: 'jq', state: 'true'}, {name: 'less', state: 'true'}, {name: 'net-tools', state: 'true'}, {name: 'wget', state: 'true'}]
      None    : []

## Conflicts

## Dependencies

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
