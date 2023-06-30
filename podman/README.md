# podman

## Description

Podman is an engine for running OCI-based containers in Pods. Podman provides
a CLI interface for managing Pods, Containers, and Container Images.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: podman
  vars:
    podman_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: podman
  vars:
    podman_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: podman
  vars:
    podman_state: 'inactive'
```

## Parameters

### Role

`podman_state`

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

`podman`

    Version: >= 3.0
    Name   :
      Debian 11: 'podman'
      Debian 12: 'podman'

`catatonit`

    Version: >= 0.1
    Name   :
      Debian 11: 'catatonit'
      Debian 12: 'catatonit'

`dbus-user-session`

    Version: >= 1.0
    Name   :
      Debian 11: 'dbus-user-session'
      Debian 12: 'dbus-user-session'

`fuse-overlayfs`

    Version: >= 1.0
    Name   :
      Debian 11: 'fuse-overlayfs'
      Debian 12: 'fuse-overlayfs'

`rootlesskit`

    Version: >= 0.14
    Name   :
      Debian 11: 'rootlesskit'
      Debian 12: 'rootlesskit'

`slirp4netns`

    Version: >= 1.0
    Name   :
      Debian 11: 'slirp4netns'
      Debian 12: 'slirp4netns'

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
