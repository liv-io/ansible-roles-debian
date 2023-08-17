# bash

## Description

The GNU Bourne Again shell (Bash) is a shell or command language interpreter
that is compatible with the Bourne shell (sh). Bash incorporates useful features
from the Korn shell (ksh) and the C shell (csh). Most sh scripts can be run by
bash without modification.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: bash
  vars:
    bash_state: 'install'
```

### Remove

```
- hosts: all
  roles:
    - role: bash
  vars:
    bash_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: bash
  vars:
    bash_state: 'inactive'
```

## Parameters

### Role

`bash_state`

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

`bash_checkwinsize`

    Description: Control the state of the 'checkwinsize' Bash option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`bash_histappend`

    Description: Control the state of the 'histappend' Bash option.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`bash_histcontrol`

    Description: Define values to control how commands are saved in the Bash
                 history.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'ignoreboth' | 'ignoredups' | 'ignorespace'
      None    : ''

`bash_histfilesize`

    Description: Set the size of the Bash history file.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '262144'
    Options    :
      Examples: '32768' | '65536' | '131072' | '262144'
      None    : ''

`bash_histignore`

    Description: Define patterns to decide which command lines should not be
                 saved in the Bash history.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: 'fg:bg'
      None    : ''

`bash_history_readonly`

    Description: Control the readonly state of the Bash history variable.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

`bash_histsize`

    Description: Set the size of the Bash history variable.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '262144'
    Options    :
      Examples: '32768' | '65536' | '131072' | '262144'
      None    : ''

`bash_histtimeformat`

    Description: Define the time format of the Bash history.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '%F %T  '
    Options    :
      Examples: '%F %T  '
      None    : ''

`bash_prompt_command`

    Description: Define the 'bash_prompt_command' option.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'history -a'
    Options    :
      Examples: 'history -a'

`bash_tmout`

    Description: Set the number of seconds after Bash terminates its session
                 if no input arrives.
    Implemented: 0.1.0
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '1800'
    Options    :
      Examples: '300' | '600' | '1200' | '1800'
      None    : ''

`bash_tmout_readonly`

    Description: Control the readonly state of the Bash 'TMOUT' variable.
    Implemented: 0.1.0
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : True
    Options    : True | False

## Conflicts

## Dependencies

### Packages

`bash`

    Version: >= 4.0
    Name   :
      Debian 11: 'bash'
      Debian 12: 'bash'

### Roles

`shell`

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
