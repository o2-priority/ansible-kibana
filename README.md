Kibana
========

Ansible role to install and configure Kibana 5 or 6.


## Examples

```
- hosts: loghost

  vars:
    kibana_version: 5.2.0
	kibana_elasticsearch_url: "http://elasticsearch_host:9200"

  roles:
    - wunzeco.kibana
```

## Testing

To test this role, run

```
kitchen test
```


## Dependencies:

None
