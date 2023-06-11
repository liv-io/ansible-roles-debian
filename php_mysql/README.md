# php_mysql

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
    - role: php_mysql
  vars:
    php_mysql_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: php_mysql
  vars:
    php_mysql_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: php_mysql
  vars:
    php_mysql_state: 'inactive'
```

## Parameters

### Role

`php_mysql_state`

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

`php-mysql`

    Version: >= 7.3
    Name   :
      Debian 11: 'php-mysql'
      Debian 12: 'php-mysql'

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
