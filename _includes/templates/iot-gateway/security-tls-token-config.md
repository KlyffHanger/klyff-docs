In table below described parameters to configure authorization of IoT gateway on Klyff platform.  

|**Parameter**|**Default value**|**Description**|
|:-|:-|-
| accessToken              | **PUT_YOUR_GW_ACCESS_TOKEN_HERE**               | Access token for the gateway from Klyff server.       |
| caCert                   | **/etc/thingsboard-gateway/mqttserver.pub.pem** | Path to CA certificate file.                                |
|---    

Security subsection in configuration file will look like this: 

```json
...
"security": {
  "accessToken": "PUT_YOUR_GW_ACCESS_TOKEN_HERE",
  "caCert": "/etc/thingsboard-gateway/mqttserver.pub.pem"
},
...
```
