Kibana
========

Ansible role to install and configure Kibana 5 or 6.

Xpack plugin has been enabled for reporting purpose.
The type of licensing we use for xpack in basic. Since we are on elasticsearch version 6.2, the basic license will have to be renewed annually for the reporting to work.

Go to https://register.elastic.co/ to renew basic license.


## Examples

```
- hosts: loghost

  vars:
    kibana_version: 5.2.0
	kibana_elasticsearch_url: "http://elasticsearch_host:9200"

  roles:
    - o2-priority.kibana
   
```

## Testing

To test this role, run

```
kitchen test
```


## Dependencies:

None
