# ldns

## Description

The goal of ldns is to simplify DNS programming, it supports recent RFCs like
the DNSSEC documents, and allows developers to easily create software conforming
to current RFCs, and experimental software for current Internet Drafts.

This package contains various client programs related to DNS that are based
ontop of libldns library and DRILL tool which is similar to dig. These tools
were designed with DNSSEC in mind and are useful for DNS and DNSSEC testing and
debugging.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: ldns
  vars:
    ldns_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: ldns
  vars:
    ldns_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: ldns
  vars:
    ldns_state: 'inactive'
```

## Parameters

### Role

`ldns_state`

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

`ldns`

    Version: >= 1.0
    Name   :
      Debian 11: 'ldnsutils'
      Debian 12: 'ldnsutils'

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
