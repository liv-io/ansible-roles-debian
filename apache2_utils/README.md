# apache2_utils

## Description

Apache HTTP Server (utility programs for web servers) Provides some add-on
programs useful for any web server. These include:
- ab (Apache benchmark tool)
- fcgistarter (Start a FastCGI program)
- logresolve (Resolve IP addresses to hostnames in logfiles)
- htpasswd (Manipulate basic authentication files)
- htdigest (Manipulate digest authentication files)
- htdbm (Manipulate basic authentication files in DBM format, using APR)
- htcacheclean (Clean up the disk cache)
- rotatelogs (Periodically stop writing to a logfile and open a new one)
- split-logfile (Split a single log including multiple vhosts)
- checkgid (Checks whether the caller can setgid to the specified group)
- check_forensic (Extract mod_log_forensic output from Apache log files)
- httxt2dbm (Generate dbm files for use with RewriteMap)

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: apache2_utils
  vars:
    apache2_utils_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: apache2_utils
  vars:
    apache2_utils_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: apache2_utils
  vars:
    apache2_utils_state: 'inactive'
```

## Parameters

### Role

`apache2_utils_state`

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

`apache2-utils`

    Version: >= 2.4
    Name   :
      Debian 11: 'apache2-utils'

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
