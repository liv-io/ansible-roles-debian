# locale

## Description

Control the system locale and keyboard layout settings.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: locale
  vars:
    locale_state: 'install'
    locale_keymap_vc: 'ch'
    locale_keymap_x11: 'ch'
    locale_locale_system: 'en_US.utf8'
```

### Inactive

```
- hosts: all
  roles:
    - role: locale
  vars:
    locale_state: 'inactive'
```

## Parameters

### Role

`locale_state`

    Description: Control the state of the role.
    Required   : False
    Value      : Predetermined
    Type       : String
    Default    : 'install'
    Options    :
      Install : 'true' | 'yes' | 'install'
      Inactive: 'quiesce' | 'inactive'

`locale_kbd_version`

    Description: Define the 'locale_kbd_version' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '2.9.0'
    Options    :
      Examples: '2.6.0' | '2.6.1'

`locale_keymap_vc`

    Description: Define the 'locale_keymap_vc' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'us'
    Options    :
      Examples: 'ch' | 'de' | 'uk' | 'us'

`locale_keymap_x11`

    Description: Define the 'locale_keymap_x11' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'us'
    Options    :
      Examples: 'ch' | 'de' | 'uk' | 'us'

`locale_locale_system`

    Description: Define the 'locale_locale_system' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : 'en_US.utf8'
    Options    :
      Examples: 'de_CH.utf8' | 'de_DE.utf8' | 'en_GB.utf8' | 'en_US.utf8'

## Conflicts

## Dependencies

### Archives

`kbd`

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
