# php

## Description

PHP (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open
source general-purpose scripting language that is especially suited for web
development and can be embedded into HTML.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: php
  vars:
    php_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: php
  vars:
    php_state: 'enable'
    php_date_timezone: 'Antarctica/Vostok'
    php_post_max_size: '64M'
    php_upload_max_filesize: '64M'
```

### Disable

```
- hosts: all
  roles:
    - role: php
  vars:
    php_state: 'disable'
    php_date_timezone: 'Antarctica/Vostok'
    php_post_max_size: '64M'
    php_upload_max_filesize: '64M'
```

### Remove

```
- hosts: all
  roles:
    - role: php
  vars:
    php_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: php
  vars:
    php_state: 'inactive'
```

## Parameters

### Role

`php_state`

    Description: Control the state of the role.
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

`php_curl_cainfo`

    Description: Define the 'php_curl_cainfo' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: '/etc/pki/ca-trust/source/anchors/ca.domain.tld.crt' | '/data/ca/ca.domain.tld.crt'
      None    : ''

`php_date_timezone`

    Description: Define the 'php_date_timezone' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'Europe/Zurich'
    Options    :
      Examples: 'Europe/London' | 'America/Yellowknife'

`php_expose_php`

    Description: Control the 'php_expose_php' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`php_max_input_vars`

    Description: Set the 'php_max_input_vars' option.
    Required   : False
    Value      : Arbitrary
    Type       : Integer
    Default    : 1000
    Options    :
      Examples: '1000' | '2000' | '3000'

`php_memory_limit`

    Description: Set the 'php_memory_limit' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '128M'
    Options    :
      Examples: '64M' | '128M' | '256M'

`php_post_max_size`

    Description: Set the 'php_post_max_size' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '128M'
    Options    :
      Examples: '64M' | '128M' | '256M'

`php_upload_max_filesize`

    Description: Set the 'php_upload_max_filesize' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '64M'
    Options    :
      Examples: '32M' | '64M' | '128M'

## Conflicts

## Dependencies

### Packages

`php`

    Version: >= 7.3
    Name   :
      Debian 11: 'php'
      Debian 12: 'php'

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
