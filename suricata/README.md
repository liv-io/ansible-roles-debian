# suricata

## Description

The Suricata Engine is an Open Source Next Generation Intrusion Detection and
Prevention Engine. This engine is not intended to just replace or emulate the
existing tools in the industry, but will bring new ideas and technologies to the
field. This new Engine supports Multi-threading, Automatic Protocol Detection
(IP, TCP, UDP, ICMP, HTTP, TLS, FTP and SMB! ), Gzip Decompression, Fast IP
Matching, and GeoIP identification.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: suricata
  vars:
    suricata_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: suricata
  vars:
    suricata_state: 'enable'
    suricata_home_net: '[10.0.0.0/8]'
    suricata_interface: 'em0'
    suricata_ruleset:
      - {state: 'enable', name: 'et/open'}
      - {state: 'enable', name: 'oisf/trafficid'}
      - {state: 'install', name: 'hunting', link: 'https://github.com/travisbgreen/hunting-rules/blob/master/hunting.rules'}
    suricata_config:
      - name: 'liv'
        state: True
        comment: 'liv policies'
        rules:
          - {action: 'alert', protocol: 'ip', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '6.6.6.6', dstport: 'any', msg: 'LIV Potential Trojan Activity', options: 'threshold:type limit,track by_src,seconds 3600,count 1;', classtype: 'trojan-activity', reference: {'url,doc.liv.io/suricata/5000001', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000001', rev: '1'}
          - {action: 'alert', protocol: 'ip', srcaddr: '6.6.6.6', srcport: 'any', direction: '->', dstaddr: '$HOME_NET', dstport: 'any', msg: 'LIV Potential Attack', options: 'threshold:type limit,track by_src,seconds 3600,count 1;', classtype: 'misc-attack', reference: {'url,doc.liv.io/suricata/5000002', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000002', rev: '1'}
          - {action: 'alert', protocol: 'tcp', srcaddr: '6.6.6.6', srcport: 'any', direction: '->', dstaddr: '$HOME_NET', dstport: 'any', msg: 'LIV Tor Exit or Relay/Router Node Traffic', options: 'threshold:type limit,track by_src,seconds 3600,count 1;', classtype: 'misc-attack', reference: {'url,doc.liv.io/suricata/5000003', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000003', rev: '1'}
          - {action: 'alert', protocol: 'icmp', srcaddr: 'any', srcport: 'any', direction: '->', dstaddr: 'any', dstport: 'any', msg: 'LIV OpenSSH in ICMP Payload - Possible Covert Channel', options: 'itype:8; icode:0; content:"openssh"; nocase;', classtype: 'trojan-activity', reference: {'url,doc.liv.io/suricata/5000004', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000004', rev: '1'}
          - {action: 'alert', protocol: 'dns', srcaddr: 'any', srcport: 'any', direction: '->', dstaddr: 'any', dstport: 'any', msg: 'LIV DNS Query to Malicious TLD', options: 'dns.query; content:".evil"; nocase; endswith;', classtype: 'bad-unknown', reference: {'url,doc.liv.io/suricata/5000005', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000005', rev: '1'}
          - {action: 'alert', protocol: 'dns', srcaddr: 'any', srcport: 'any', direction: '->', dstaddr: 'any', dstport: 'any', msg: 'LIV DNS Query to Malicious Domain', options: 'dns_query; content:"example.com"; nocase; isdataat:!1,relative;', classtype: 'bad-unknown', reference: {'url,doc.liv.io/suricata/5000006', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000006', rev: '1'}
          - {action: 'alert', protocol: 'ssh', srcaddr: '$EXTERNAL_NET', srcport: 'any', direction: '->', dstaddr: '$HOME_NET', dstport: '22', msg: 'LIV Potential Brute Force Attack', options: 'flow:established,to_server; content:"SSH-"; content:"libssh"; within:20; threshold:type both,count 5,seconds 30,track by_src;', classtype: 'attempted-admin', reference: {'url,doc.liv.io/suricata/5000007', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000007', rev: '1'}
          - {action: 'alert', protocol: 'ftp', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV File authorized_keys transferred', options: 'flow:established,to_server; content:"authorized_keys";', classtype: 'suspicious-filename-detect', reference: {'url,doc.liv.io/suricata/5000008', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000008', rev: '1'}
          - {action: 'alert', protocol: 'ftp', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV File id_rsa transferred', options: 'flow:established,to_server; content:"id_rsa";', classtype: 'suspicious-filename-detect', reference: {'url,doc.liv.io/suricata/5000008', 'url,liv.io'}, metadata: 'created 20201009, updated 20201008', sid: '5000009', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV DNF Package Manager Activity (User-Agent)', options: 'flow:established,to_server; http.user_agent; content:"libdnf"; startswith; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000010', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000010', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV YUM Package Manager Activity (User-Agent)', options: 'flow:established,to_server; http.user_agent; content:"urlgrabber"; startswith; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000011', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000011', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV APT Package Manager Activity (User-Agent)', options: 'flow:established,to_server; http.user_agent; content:"Debian APT"; startswith; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000012', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000012', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV DNF/YUM Package Manager Activity (File)', options: 'flow:established,to_server; http.method; content:"GET"; http.uri; content:".rpm"; endswith; nocase; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000013', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000013', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV APT Package Manager Activity (File)', options: 'flow:established,to_server; http.method; content:"GET"; http.uri; content:".deb"; endswith; nocase; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000014', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000014', rev: '1'}
          - {action: 'alert', protocol: 'tls', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV DNF/YUM Package Manager Activity (URL)', options: 'flow:established,to_server; tls_sni; content:"centos.org"; isdataat:!1,relative; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000015', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000015', rev: '1'}
          - {action: 'alert', protocol: 'tls', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV APT Package Manager Activity (URL)', options: 'flow:established,to_server; tls_sni; content:"debian.org"; isdataat:!1,relative; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000016', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000016', rev: '1'}
```

### Disable

```
- hosts: all
  roles:
    - role: suricata
  vars:
    suricata_state: 'disable'
    suricata_home_net: '[10.0.0.0/8]'
    suricata_interface: 'em0'
    suricata_ruleset:
      - {state: 'enable', name: 'et/open'}
      - {state: 'enable', name: 'oisf/trafficid'}
      - {state: 'install', name: 'hunting', link: 'https://github.com/travisbgreen/hunting-rules/blob/master/hunting.rules'}
    suricata_config:
      - name: 'liv'
        state: True
        comment: 'liv policies'
        rules:
          - {action: 'alert', protocol: 'ip', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '6.6.6.6', dstport: 'any', msg: 'LIV Potential Trojan Activity', options: 'threshold:type limit,track by_src,seconds 3600,count 1;', classtype: 'trojan-activity', reference: {'url,doc.liv.io/suricata/5000001', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000001', rev: '1'}
          - {action: 'alert', protocol: 'ip', srcaddr: '6.6.6.6', srcport: 'any', direction: '->', dstaddr: '$HOME_NET', dstport: 'any', msg: 'LIV Potential Attack', options: 'threshold:type limit,track by_src,seconds 3600,count 1;', classtype: 'misc-attack', reference: {'url,doc.liv.io/suricata/5000002', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000002', rev: '1'}
          - {action: 'alert', protocol: 'tcp', srcaddr: '6.6.6.6', srcport: 'any', direction: '->', dstaddr: '$HOME_NET', dstport: 'any', msg: 'LIV Tor Exit or Relay/Router Node Traffic', options: 'threshold:type limit,track by_src,seconds 3600,count 1;', classtype: 'misc-attack', reference: {'url,doc.liv.io/suricata/5000003', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000003', rev: '1'}
          - {action: 'alert', protocol: 'icmp', srcaddr: 'any', srcport: 'any', direction: '->', dstaddr: 'any', dstport: 'any', msg: 'LIV OpenSSH in ICMP Payload - Possible Covert Channel', options: 'itype:8; icode:0; content:"openssh"; nocase;', classtype: 'trojan-activity', reference: {'url,doc.liv.io/suricata/5000004', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000004', rev: '1'}
          - {action: 'alert', protocol: 'dns', srcaddr: 'any', srcport: 'any', direction: '->', dstaddr: 'any', dstport: 'any', msg: 'LIV DNS Query to Malicious TLD', options: 'dns.query; content:".evil"; nocase; endswith;', classtype: 'bad-unknown', reference: {'url,doc.liv.io/suricata/5000005', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000005', rev: '1'}
          - {action: 'alert', protocol: 'dns', srcaddr: 'any', srcport: 'any', direction: '->', dstaddr: 'any', dstport: 'any', msg: 'LIV DNS Query to Malicious Domain', options: 'dns_query; content:"example.com"; nocase; isdataat:!1,relative;', classtype: 'bad-unknown', reference: {'url,doc.liv.io/suricata/5000006', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000006', rev: '1'}
          - {action: 'alert', protocol: 'ssh', srcaddr: '$EXTERNAL_NET', srcport: 'any', direction: '->', dstaddr: '$HOME_NET', dstport: '22', msg: 'LIV Potential Brute Force Attack', options: 'flow:established,to_server; content:"SSH-"; content:"libssh"; within:20; threshold:type both,count 5,seconds 30,track by_src;', classtype: 'attempted-admin', reference: {'url,doc.liv.io/suricata/5000007', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000007', rev: '1'}
          - {action: 'alert', protocol: 'ftp', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV File authorized_keys transferred', options: 'flow:established,to_server; content:"authorized_keys";', classtype: 'suspicious-filename-detect', reference: {'url,doc.liv.io/suricata/5000008', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000008', rev: '1'}
          - {action: 'alert', protocol: 'ftp', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV File id_rsa transferred', options: 'flow:established,to_server; content:"id_rsa";', classtype: 'suspicious-filename-detect', reference: {'url,doc.liv.io/suricata/5000008', 'url,liv.io'}, metadata: 'created 20201009, updated 20201008', sid: '5000009', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV DNF Package Manager Activity (User-Agent)', options: 'flow:established,to_server; http.user_agent; content:"libdnf"; startswith; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000010', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000010', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV YUM Package Manager Activity (User-Agent)', options: 'flow:established,to_server; http.user_agent; content:"urlgrabber"; startswith; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000011', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000011', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV APT Package Manager Activity (User-Agent)', options: 'flow:established,to_server; http.user_agent; content:"Debian APT"; startswith; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000012', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000012', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV DNF/YUM Package Manager Activity (File)', options: 'flow:established,to_server; http.method; content:"GET"; http.uri; content:".rpm"; endswith; nocase; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000013', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000013', rev: '1'}
          - {action: 'alert', protocol: 'http', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV APT Package Manager Activity (File)', options: 'flow:established,to_server; http.method; content:"GET"; http.uri; content:".deb"; endswith; nocase; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000014', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000014', rev: '1'}
          - {action: 'alert', protocol: 'tls', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV DNF/YUM Package Manager Activity (URL)', options: 'flow:established,to_server; tls_sni; content:"centos.org"; isdataat:!1,relative; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000015', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000015', rev: '1'}
          - {action: 'alert', protocol: 'tls', srcaddr: '$HOME_NET', srcport: 'any', direction: '->', dstaddr: '$EXTERNAL_NET', dstport: 'any', msg: 'LIV APT Package Manager Activity (URL)', options: 'flow:established,to_server; tls_sni; content:"debian.org"; isdataat:!1,relative; noalert;', classtype: 'policy-violation', reference: {'url,doc.liv.io/suricata/5000016', 'url,liv.io'}, metadata: 'created 20201008, updated 20201008', sid: '5000016', rev: '1'}
```

### Remove

```
- hosts: all
  roles:
    - role: suricata
  vars:
    suricata_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: suricata
  vars:
    suricata_state: 'inactive'
```

## Parameters

### Role

`suricata_state`

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

`suricata_config`

    Description: Define the 'suricata_config' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : []
    Options    :
      Examples: [{name: liv, state: True, comment: liv policies, rules: [{action: alert, protocol: dns, srcaddr: any, srcport: any, direction: '->', dstaddr: any, dstport: any, msg: LIV DNS Query to Malicious Domain, options: 'dns_query; content:"example.com"; nocase; isdataat:!1,relative;', classtype: bad-unknown, reference: {'url,doc.liv.io/suricata/5000006': null, 'url,liv.io': null}, metadata: 'created 20201008, updated 20201008', sid: '5000006', rev: '1'}]}]
      None    : []

`suricata_external_net`

    Description: Define the 'suricata_external_net' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '!$HOME_NET'
    Options    :
      Examples: 'any' | '1.2.3.4/32'

`suricata_home_net`

    Description: Define the 'suricata_home_net' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : '[192.168.0.0/16,172.16.0.0/12,10.0.0.0/8]'
    Options    :
      Examples: 'any' | '[10.0.0.0/8]'

`suricata_interface`

    Description: Define the 'suricata_interface' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : "{{ansible_default_ipv4.interface}}"
    Options    :
      Examples: 'eth0' | 'em0' | 'eno1' | 'ens18'

`suricata_monitor_monit_state`

    Description: Control the 'suricata_monitor_monit_state' option.
    Required   : False
    Value      : Predetermined
    Type       : Boolean
    Default    : False
    Options    : True | False

`suricata_ruleset`

    Description: Define the 'suricata_ruleset' option.
    Required   : False
    Value      : Arbitrary
    Type       : Array/Hash
    Default    : [{state: 'enable', name: 'et/open'},
                  {state: 'enable', name: 'oisf/trafficid'}]
    Options    :
      Examples: [{state: 'enable', name: 'et/open'},
                 {state: 'remove', name: 'oisf/trafficid'},
                 {state: 'install', name: 'hunting', link: 'https://github.com/travisbgreen/hunting-rules/blob/master/hunting.rules'}]
      None    : []

## Conflicts

## Dependencies

### Packages

`suricata`

    Version: >= 5.0
    Name   :
      Debian 11: 'suricata'
      Debian 12: 'suricata'

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
