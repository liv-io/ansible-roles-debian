# nftables

## Description

This software provides an in-kernel packet classification framework that is
based on a network-specific Virtual Machine (VM) and the nft userspace command
line tool. The nftables framework reuses the existing Netfilter subsystems such
as the existing hook infrastructure, the connection tracking system, NAT,
userspace queueing and logging subsystem.

For more information on the usage and available configuration options,
consult the following sections.

## Usage

### Install

```
- hosts: all
  roles:
    - role: nftables
  vars:
    nftables_state: 'install'
```

### Enable

```
- hosts: all
  roles:
    - role: nftables
  vars:
    nftables_state: 'enable'
    nftables_filter_rule_all: |
      add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 22 counter accept comment "ssh from internal-networks"
      add rule ip filter INPUT ip saddr 10.1.1.10 ct state new tcp dport 9100 counter accept comment "node_exporter from prometheus"
      add rule ip filter INPUT ip saddr 10.1.1.10 ct state new tcp dport 9388 counter accept comment "monit_exporter from prometheus"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new tcp dport 53 counter accept comment "dns to gateway"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new udp dport 53 counter accept comment "dns to gateway"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new udp dport 123 counter accept comment "ntp to gateway"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new tcp dport 3128 counter accept comment "squid to gateway"
      add rule ip filter OUTPUT ip daddr 10.1.1.11 ct state new tcp dport 514 counter accept comment "rsyslog to loki"
      add rule ip filter OUTPUT ip daddr 10.1.1.11 ct state new udp dport 514 counter accept comment "rsyslog to loki"
```

### Disable

```
- hosts: all
  roles:
    - role: nftables
  vars:
   nftables_state: 'disable'
    nftables_filter_rule_all: |
      add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 22 counter accept comment "ssh from internal-networks"
      add rule ip filter INPUT ip saddr 10.1.1.10 ct state new tcp dport 9100 counter accept comment "node_exporter from prometheus"
      add rule ip filter INPUT ip saddr 10.1.1.10 ct state new tcp dport 9388 counter accept comment "monit_exporter from prometheus"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new tcp dport 53 counter accept comment "dns to gateway"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new udp dport 53 counter accept comment "dns to gateway"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new udp dport 123 counter accept comment "ntp to gateway"
      add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new tcp dport 3128 counter accept comment "squid to gateway"
      add rule ip filter OUTPUT ip daddr 10.1.1.11 ct state new tcp dport 514 counter accept comment "rsyslog to loki"
      add rule ip filter OUTPUT ip daddr 10.1.1.11 ct state new udp dport 514 counter accept comment "rsyslog to loki"
```

### Remove

```
- hosts: all
  roles:
    - role: nftables
  vars:
    nftables_state: 'remove'
```

### Inactive

```
- hosts: all
  roles:
    - role: nftables
  vars:
    nftables_state: 'inactive'
```

## Parameters

### Role

`nftables_state`

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

`nftables_filter_table`

    Description: Define the 'nftables_filter_table' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      # IPv4
      add table ip filter
      # IPv6
      add table ip6 filter
    Options    :
      Examples: -
      None    : ''

`nftables_filter_chain`

    Description: Define the 'nftables_filter_chain' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      # IPv4
      add chain ip filter INPUT { type filter hook input priority 0; policy drop; }
      add chain ip filter FORWARD { type filter hook forward priority 0; policy drop; }
      add chain ip filter OUTPUT { type filter hook output priority 0; policy drop; }
      # IPv6
      add chain ip6 filter INPUT { type filter hook input priority 0; policy drop; }
      add chain ip6 filter FORWARD { type filter hook forward priority 0; policy drop; }
      add chain ip6 filter OUTPUT { type filter hook output priority 0; policy drop; }
    Options    :
      Examples: |
        # IPv4
        add chain ip filter INPUT { type filter hook input priority 0; policy drop; }
        add chain ip filter FORWARD { type filter hook forward priority 0; policy drop; }
        add chain ip filter OUTPUT { type filter hook output priority 0; policy accept; }
        # IPv6
        add chain ip6 filter INPUT { type filter hook input priority 0; policy drop; }
        add chain ip6 filter FORWARD { type filter hook forward priority 0; policy drop; }
        add chain ip6 filter OUTPUT { type filter hook output priority 0; policy accept; }
      None    : ''

`nftables_filter_rule_default`

    Description: Define the 'nftables_filter_rule_default' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      # IPv4 ingress
      add rule ip filter INPUT ct state related,established  counter accept comment "related and established connections"
      add rule ip filter INPUT iifname "lo" counter accept comment "loopback connections"
      add rule ip filter INPUT ct state new icmp type destination-unreachable counter accept comment "icmp destination-unreachable"
      add rule ip filter INPUT ct state new icmp type source-quench counter accept comment "icmp source-quench"
      add rule ip filter INPUT ct state new icmp type time-exceeded counter accept comment "icmp time-exceeded"
      add rule ip filter INPUT ct state new icmp type parameter-problem counter accept comment "icmp parameter-problem"
      add rule ip filter INPUT ct state new icmp type echo-request counter accept comment "icmp echo-request"
      add rule ip filter INPUT ct state new icmp type echo-reply counter accept comment "icmp echo-reply"
      # IPv6 ingress
      add rule ip6 filter INPUT ct state related,established  counter accept comment "related and established connections"
      add rule ip6 filter INPUT iifname "lo" counter accept comment "loopback connections"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type destination-unreachable counter accept comment "icmp6 destination-unreachable"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type packet-too-big counter accept comment "icmp6 packet-too-big"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type time-exceeded counter accept comment "icmp6 time-exceeded"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type parameter-problem counter accept comment "icmp6 parameter-problem"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type echo-request counter accept comment "icmp6 echo-request"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type echo-reply counter accept comment "icmp6 echo-reply"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type nd-router-advert counter accept comment "icmp6 router-advertisement"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type nd-neighbor-solicit counter accept comment "icmp6 neighbor-solicitation"
      add rule ip6 filter INPUT meta l4proto ipv6-icmp icmpv6 type nd-neighbor-advert counter accept comment "icmp6 neighbor-advertisement"
      # IPv4 egress
      add rule ip filter OUTPUT ct state related,established  counter accept comment "related and established connections"
      add rule ip filter OUTPUT oifname "lo" counter accept comment "loopback connections"
      add rule ip filter OUTPUT ct state new icmp type destination-unreachable counter accept comment "icmp destination-unreachable"
      add rule ip filter OUTPUT ct state new icmp type source-quench counter accept comment "icmp source-quench"
      add rule ip filter OUTPUT ct state new icmp type time-exceeded counter accept comment "icmp time-exceeded"
      add rule ip filter OUTPUT ct state new icmp type parameter-problem counter accept comment "icmp parameter-problem"
      add rule ip filter OUTPUT ct state new icmp type echo-request counter accept comment "icmp echo-request"
      add rule ip filter OUTPUT ct state new icmp type echo-reply counter accept comment "icmp echo-reply"
      # IPv6 egress
      add rule ip6 filter OUTPUT ct state related,established  counter accept comment "related and established connections"
      add rule ip6 filter OUTPUT oifname "lo" counter accept comment "loopback connections"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type destination-unreachable counter accept comment "icmp6 destination-unreachable"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type packet-too-big counter accept comment "icmp6 packet-too-big"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type time-exceeded counter accept comment "icmp6 time-exceeded"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type parameter-problem counter accept comment "icmp6 parameter-problem"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type echo-request counter accept comment "icmp6 echo-request"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type echo-reply counter accept comment "icmp6 echo-reply"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type nd-router-solicit counter accept comment "icmp6 router-solicitation"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type nd-neighbor-solicit counter accept comment "icmp6 neighbor-solicitation"
      add rule ip6 filter OUTPUT meta l4proto ipv6-icmp icmpv6 type nd-neighbor-advert counter accept comment "icmp6 neighbor-advertisement"
    Options    :
      Examples: -
      None    : ''

`nftables_filter_rule_all`

    Description: Define the 'nftables_filter_rule_all' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : |
      # IPv4 ingress
      add rule ip filter INPUT ct state new tcp dport 22 counter accept comment "ssh from any"
      # IPv6 ingress
      add rule ip6 filter INPUT ct state new tcp dport 22 counter accept comment "ssh from any"
      # IPv4 egress
      add rule ip filter OUTPUT ct state new tcp dport 53 counter accept comment "dns to any"
      add rule ip filter OUTPUT ct state new udp dport 53 counter accept comment "dns to any"
      add rule ip filter OUTPUT ct state new udp dport 123 counter accept comment "ntp to any"
      add rule ip filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"
      # IPv6 egress
      add rule ip6 filter OUTPUT ct state new tcp dport 53 counter accept comment "dns to any"
      add rule ip6 filter OUTPUT ct state new udp dport 53 counter accept comment "dns to any"
      add rule ip6 filter OUTPUT ct state new udp dport 123 counter accept comment "ntp to any"
      add rule ip6 filter OUTPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https to any"
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.0.0.0/8 ct state new tcp dport 22 counter accept comment "ssh from internal-networks"
        add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new tcp dport 53 counter accept comment "dns to gateway"
        add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new udp dport 53 counter accept comment "dns to gateway"
        add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new udp dport 123 counter accept comment "ntp to gateway"
        add rule ip filter OUTPUT ip daddr {{ansible_default_ipv4.gateway}} ct state new tcp dport 3128 counter accept comment "squid to gateway"
      None    : ''

`nftables_filter_rule_group`

    Description: Define the 'nftables_filter_rule_group' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        add rule ip filter INPUT ip saddr 10.1.1.10 ct state new tcp dport 9100 counter accept comment "node_exporter from prometheus"
        add rule ip filter INPUT ip saddr 10.1.1.10 ct state new tcp dport 9388 counter accept comment "monit_exporter from prometheus"
        add rule ip filter OUTPUT ip daddr 10.1.1.11 ct state new tcp dport 514 counter accept comment "rsyslog to loki"
        add rule ip filter OUTPUT ip daddr 10.1.1.11 ct state new udp dport 514 counter accept comment "rsyslog to loki"
      None    : ''

`nftables_filter_rule_host`

    Description: Define the 'nftables_filter_rule_host' option.
    Required   : False
    Value      : Arbitrary
    Type       : String
    Default    : ''
    Options    :
      Examples: |
        add rule ip filter INPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https from any"
        add rule ip6 filter INPUT ct state new tcp dport { 80, 443 } counter accept comment "http, https from any"
      None    : ''

## Conflicts

## Dependencies

### Packages

`nftables`

    Version: >= 0.9
    Name   :
      Debian 11: 'nftables'
      Debian 12: 'nftables'

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
