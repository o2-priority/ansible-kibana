Kibana
========

Ansible role to install and configure Kibana.

This role has been tested with Kibana v4.4 only


## Examples

```
- hosts: loghost

  vars:
    kibana_version: 4.4

  roles:
    - wunzeco.kibana
```

## Dependencies:

None
