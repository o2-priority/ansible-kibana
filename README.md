Kibana
========

Ansible role to install and configure Kibana 4.


## Examples

```
- hosts: loghost

  vars:
    kibana_version: 4.4
	kibana_elasticsearch_url: "http://elasticsearch_host:9200"

  roles:
    - wunzeco.kibana
```

## Dependencies:

None
