|---
| **Parameter**            | **Default value**                            | **Description**                                                |
|:-|:-|-
| type                     | **memory**                                   | Storage type (Saving data to RAM, no save to hard drive).      |
| read_records_count       | **10**                                       | Count of messages to get from storage and send to Klyff. |
| max_records_count *      | **100**                                      | Maximum count of data in storage before send to Klyff.   |
|---


\* -- If receive data when storage has already counted, described in this parameter, new data will lose.

Storage section of configuration file will look like:

```json
...
"storage": {
  "type": "memory",
  "read_records_count": 10,
  "max_records_count": 100
},
...
```