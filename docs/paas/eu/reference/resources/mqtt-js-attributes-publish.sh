cat new-attributes-values.json | mqtt pub -d -h "{{mqttHostName}}" -t "v1/devices/me/attributes" -u '$ACCESS_TOKEN' -s -m ""