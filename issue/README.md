# issue

## Description

The contents of '/etc/issue' are displayed by login before a successful login.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: issue
  vars:
    issue_state: 'install'
```

### Inactive

```
- hosts: all
  roles:
    - role: issue
  vars:
    issue_state: 'inactive'
```

## Parameters

### Role

`issue_state`

    Description: Control the state of the role.
                 'issue' is a core file and can therefore not be removed.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`issue_issue_net_template`

    Description: Define the 'issue_issue_net_template' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
                                          WARNING

       You have reached a private system. Unauthorized access is prohibited and
       a violation of law. This system, including all related equipment, networks
       and network devices are provided only for authorized use.

       Your use of this system may be monitored to ensure information security,
       system integrity, and the limitation of use to official purposes.
       All information, including personal information, placed on or sent over this
       system may be recorded. Unauthorized or illegal activities involving
       this system, can result in criminal prosecution.

       Disconnect now if you do not agree to the conditions stated above.
       By further accessing the contents of this system, you are implicitly agreeing
       to all the conditions stated above.

                DISCONNECT NOW IF YOU ARE NOT AUTHORIZED TO USE THIS SYSTEM
    Options    :
      Examples: 'Arbitrary Text' | 'hello cyberspace'
      None    : ''

`issue_issue_template`

    Description: Define the 'issue_issue_template' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
                                          WARNING

       You have reached a private system. Unauthorized access is prohibited and
       a violation of law. This system, including all related equipment, networks
       and network devices are provided only for authorized use.

       Your use of this system may be monitored to ensure information security,
       system integrity, and the limitation of use to official purposes.
       All information, including personal information, placed on or sent over this
       system may be recorded. Unauthorized or illegal activities involving
       this system, can result in criminal prosecution.

       Disconnect now if you do not agree to the conditions stated above.
       By further accessing the contents of this system, you are implicitly agreeing
       to all the conditions stated above.

                DISCONNECT NOW IF YOU ARE NOT AUTHORIZED TO USE THIS SYSTEM
    Options    :
      Examples: 'Arbitrary Text' | 'hello cyberspace'
      None    : ''

## Conflicts

## Dependencies

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

    Version: 12
    Version: 13
