# dbus_user_session

## Description

D-Bus is a message bus, used for sending messages between applications.
Conceptually, it fits somewhere in between raw sockets and CORBA in terms of
complexity.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: dbus_user_session
  vars:
    dbus_user_session_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: dbus_user_session
  vars:
    dbus_user_session_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: dbus_user_session
  vars:
    dbus_user_session_state: 'inactive'
```

## Parameters

### Role

`dbus_user_session_state`

    Description: Control the state of the role.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Remove  : 'false' | 'no' | 'remove'
      Inactive: 'quiesce' | 'inactive'

## Conflicts

## Dependencies

### Packages

`dbus-user-session`

    Version: >= 1.0
    Name   :
      Debian 11: 'dbus-user-session'
      Debian 12: 'dbus-user-session'

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
