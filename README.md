# ansible-roles-debian

<!-- shields.io -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![BSD License][license-shield]][license-url]

## Index

* [About](#about)
  * [Features](#features)
  * [Support](#support)
  * [Dependencies](#dependencies)
* [License](#license)
* [Credits](#credits)
* [Appendix](#appendix)

## About

`ansible-roles-debian` is a collection of well curated Ansible roles for the Debian Linux distribution. All Ansible roles are licensed under the Simplified BSD License.

### Features

* Configurations follow the secure-by-default principle
* Roles are mostly self-contained and dependencies avoided
* Roles and services support multiple states (install, remove, enable, disable, inactive)
* Scripts and cronjobs support multiple states (enable, disable)
* Services can be monitored with Monit and exported via monit_exporter to Prometheus
* Scripts support Email and Prometheus monitoring
* Logs can be forwarded with syslog to Loki
* Roles can proxy HTTP/HTTPS traffic through Squid forward proxy
* Host-based firewall restricts ingress and egress traffic by default
* Restic and rest-server are available as backup solution
* OpenNTPD or Chrony is configurable as NTP client and server
* Unbound is available as resolving DNS server
* NSD is available as authoritative DNS server
* Prometheus has built-in alerting rules and Grafana dashboards
* Loki has built-in alerting rules and Grafana dashboards
* Parameters are documented with examples
* Changes adhere to semantic versioning guidelines
* Roles contain changelog

### Support

The following operating systems are supported:
* Debian 12
* Debian 13

### Dependencies

The Ansible control machine depends on:
* [Ansible](https://github.com/ansible/ansible) >= 2.15.0

The Ansible managed node depends on:
* [Python](https://github.com/python/cpython) >= 3.10.0

## License

Distributed under the Simplified BSD License.

See `LICENSE` file for more information.

## Credits

See `CREDITS` file for more information.

## Appendix

### Loki/Grafana Dashboards

|Suricata|
|---     |
|<img src=https://user-images.githubusercontent.com/19646270/101278206-40784280-37ba-11eb-8108-54231ae62679.png height="200" title="Suricata">|

### Prometheus/Grafana Dashboards

|System Status|Script Status|
|---          |---          |
|<img src=https://github.com/liv-io/ansible-playbooks-example/assets/19646270/c95f10b9-bd4a-4b86-91b8-e8334505391c height="200" title="System Status">|<img src=https://github.com/liv-io/ansible-playbooks-example/assets/19646270/8b974d9f-3a95-4eca-95e0-60657ca54ce7 height="200" title="Script Status">|

|Node Exporter|IPMI Exporter|
|---          |---          |
|<img src=https://github.com/liv-io/ansible-playbooks-example/assets/19646270/77a06411-50db-445c-9b52-7407bc38566d height="200" title="Node Exporter">|<img src=https://github.com/liv-io/ansible-playbooks-example/assets/19646270/4ff7a7ea-a6b9-4e95-9da5-b8692aa16cb7 height="200" title="IPMI Exporter">|

|Network Traffic|Ping Prober|
|---            |---        |
|<img src=https://github.com/liv-io/ansible-playbooks-example/assets/19646270/d1c11581-b253-4ed1-be8a-075191125e3c height="200" title="Network Traffic">|<img src=https://github.com/liv-io/ansible-playbooks-example/assets/19646270/2abe2376-7bf0-40f7-943e-b408599c0f6a height="200" title="Ping Prober">|

<!-- shields.io -->
[contributors-shield]: https://img.shields.io/github/contributors/liv-io/ansible-roles-debian.svg?style=flat
[contributors-url]: https://github.com/liv-io/ansible-roles-debian/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/liv-io/ansible-roles-debian.svg?style=flat
[forks-url]: https://github.com/liv-io/ansible-roles-debian/network/members
[stars-shield]: https://img.shields.io/github/stars/liv-io/ansible-roles-debian.svg?style=flat
[stars-url]: https://github.com/liv-io/ansible-roles-debian/stargazers
[issues-shield]: https://img.shields.io/github/issues/liv-io/ansible-roles-debian.svg?style=flat
[issues-url]: https://github.com/liv-io/ansible-roles-debian/issues
[license-shield]: https://img.shields.io/github/license/liv-io/ansible-roles-debian.svg?style=flat
[license-url]: https://github.com/liv-io/ansible-roles-debian/blob/master/LICENSE
