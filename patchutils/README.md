# patchutils

## Description

This package includes the following utilities:
- combinediff creates a cumulative patch from two incremental patches
- dehtmldiff extracts a diff from an HTML page
- filterdiff extracts or excludes diffs from a diff file
- fixcvsdiff fixes diff files created by CVS that "patch" mis-interprets
- flipdiff exchanges the order of two patches
- grepdiff shows which files are modified by a patch matching a regex
- interdiff shows differences between two unified diff files
- lsdiff shows which files are modified by a patch
- recountdiff recomputes counts and offsets in unified context diffs
- rediff and editdiff fix offsets and counts of a hand-edited diff
- splitdiff separates out incremental patches
- unwrapdiff demangles patches that have been word-wrapped

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: patchutils
  vars:
    patchutils_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: patchutils
  vars:
    patchutils_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: patchutils
  vars:
    patchutils_state: 'inactive'
```

## Parameters

### Role

`patchutils_state`

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

`patchutils`

    Version: >= 0.3
    Name   :
      Debian 11: 'patchutils'
      Debian 12: 'patchutils'

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
