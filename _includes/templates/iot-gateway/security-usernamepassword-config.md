One type of security configuration is using clientId, username, and password, to get them you should login into your 
Klyff platform instance, go to DEVICE tab, press the plus icon, fill the values and check the “Is gateway” option,
press "Next: Credentials", check "Add credentials", select credentials type "MQTT Basic" and replace default 
with your value.

|**Parameter**|**Default value**|**Description**|
|:-|:-|-
| clientId                | **clientId**      | MQTT client id for the gateway form Klyff server     |
| username                | **admin**         | MQTT username for the gateway form Klyff server      |
| password                | **admin**         | MQTT password for the gateway form Klyff server      |
|---


```json
...
"security": {
  "clientId": "YOUR_CLIENT_ID",
  "username": "YOUR_USERNAME",
  "password": "YOUR_PASSWORD"
},
...
```