# bzip2

## Description

bzip2 compresses files using the Burrows-Wheeler block-sorting text compression
algorithm, and Huffman coding. Compression is generally considerably better
than that achieved by more conventional LZ77/LZ78-based compressors, and
approaches the performance of the PPM family of statistical compressors.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: bzip2
  vars:
    bzip2_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: bzip2
  vars:
    bzip2_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: bzip2
  vars:
    bzip2_state: 'inactive'
```

## Parameters

### Role

`bzip2_state`

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

`bzip2`

    Version: >= 1.0
    Name   :
      Debian 11: 'bzip2'
      Debian 12: 'bzip2'

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
