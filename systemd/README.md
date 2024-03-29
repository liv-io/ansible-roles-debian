# systemd

## Description

systemd is a system and service manager for Linux, compatible with SysV and LSB
init scripts. systemd provides aggressive parallelization capabilities, uses
socket and D-Bus activation for starting services, offers on-demand starting of
daemons, keeps track of processes using Linux cgroups, supports snapshotting and
restoring of the system state, maintains mount and automount points and
implements an elaborate transactional dependency-based service control logic. It
can work as a drop-in replacement for sysvinit.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: systemd
  vars:
    systemd_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: systemd
  vars:
    systemd_state: 'inactive'
```

### Config

```
vars:
  systemd_config_all:
    - name: 'ctrl-alt-del'
      state: True
      mode: 'system'
      type: 'target'
      comment: "Disable 'ctrl+alt+del' hotkey"
      options: []

    - name: 'emergency-net'
      state: True
      mode: 'system'
      type: 'target'
      comment: 'Emergency Mode with Networking'
      options:
        - section: 'Unit'
        - key: 'Description'
          value: 'Emergency Mode with Networking'
        - key: 'Requires'
          value: 'emergency.target systemd-networkd.service'
        - key: 'After'
          value: 'emergency.target systemd-networkd.service'
        - key: 'AllowIsolate'
          value: 'yes'

  systemd_config_group:
    - name: 'opensmtpd'
      state: True
      mode: 'system'
      type: 'target'
      comment: 'OpenSMTPD mail daemon'
      options:
        - section: 'Unit'
        - key: 'Description'
          value: 'OpenSMTPD mail daemon'
        - key: 'After'
          value: 'syslog.target network.target'
        - key: 'Conflicts'
          value: 'sendmail.service postfix.service exim.service'

        - section: 'Service'
        - key: 'Type'
          value: 'forking'
        - key: 'ExecStart'
          value: '/usr/sbin/smtpd'
        - key: 'ExecStop'
          value: '/usr/sbin/smtpctl stop'

        - section: 'Install'
        - key: 'WantedBy'
          value: 'multi-user.target'

  systemd_config_host:
    - name: 'crond'
      state: True
      mode: 'system'
      type: 'target'
      comment: 'Command Scheduler'
      options:
        - section: 'Unit'
        - key: 'Description'
          value: 'Command Scheduler'
        - key: 'After'
          value: 'auditd.service systemd-user-sessions.service time-sync.target'

        - section: 'Service'
        - key: 'EnvironmentFile'
          value: '/etc/default/crond'
        - key: 'ExecStart'
          value: '/usr/sbin/crond -n $CRONDARGS'
        - key: 'ExecReload'
          value: '/bin/kill -HUP $MAINPID'
        - key: 'KillMode'
          value: 'process'

        - section: 'Install'
        - key: 'WantedBy'
          value: 'multi-user.target'
```

## Parameters

### Config

`state`

    Description: Control the 'state' of the systemd file.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`mode`

    Description: Define the 'mode' of the systemd file.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : 'system'
    Options    :
      Examples: 'system' | 'user'

`name`

    Description: Define the 'name' of the systemd file.
    Required   : True
    Value      : Arbitrary
    Type       : String
    Default    : 'config'
    Options    :
      Examples: 'opensmtpd' | 'ctrl+alt+del'

`comment`

    Description: Define a 'comment' for the systemd file.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'Dummy comment' | 'Example comment'
      None    : ''

`options`

    Description: Define the systemd 'options'.
    Required   : False
    Value      : Arbitrary
    Type       : Array
    Default    : []
    Options    :
      Examples: [{section: 'Unit',
                 {key: 'Description', value: 'OpenSMTPD mail daemon'},
                 {key: 'After', value: 'syslog.target network.target'},
                 {key: 'Conflicts', value: 'sendmail.service postfix.service exim.service'}},
                 {section: 'Service',
                 {key: 'Type', value: 'forking'},
                 {key: 'ExecStart', value: '/usr/sbin/smtpd'},
                 {key: 'ExecStop', value: '/usr/sbin/smtpctl stop'}},
                 {section: 'Install',
                 {key: 'WantedBy', value: 'multi-user.target'}}]
      None    : []

`type`

    Description: Define the 'type' of the systemd file.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'target'
    Options    :
      Examples: 'service' | 'socket' | 'target' | 'device' | 'mount' |
                'automount' | 'snapshot' | 'timer' | 'swap' | 'path' | 'slice' |
                'scope'

### Role

`systemd_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`systemd_config_all`

    Description: Define the 'systemd_config_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{name: 'ctrl-alt-del', state: True, mode: 'system', type: 'target',
                  comment: "Disable 'ctrl+alt+del' hotkey", options: []}]
    Options    :
      Examples: [{name: 'ctrl-alt-del', state: True, mode: 'system', type: 'target',
                  comment: "Disable 'ctrl+alt+del' hotkey", options: []}]
      None    : []

`systemd_config_group`

    Description: Define the 'systemd_config_group' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ctrl-alt-del', state: True, mode: 'system', type: 'target',
                  comment: "Disable 'ctrl+alt+del' hotkey", options: []}]
      None    : []

`systemd_config_host`

    Description: Define the 'systemd_config_host' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: 'ctrl-alt-del', state: True, mode: 'system', type: 'target',
                  comment: "Disable 'ctrl+alt+del' hotkey", options: []}]
      None    : []

## Conflicts

## Dependencies

### Packages

`systemd`

    Version: >= 219
    Name   :
      Debian 11: 'systemd'
      Debian 12: 'systemd'

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
