<br>
{% capture grpc_ssl_note %}
**Important note for securing communication between Klyff Edge and Klyff Professional/Community Edition server**
 - Klyff Edge and Klyff Professional/Community Edition server instance are communicating over gRPC protocol
 - gRPC channel is not secured with TLS/SSL mechanism dy default and binary messages that are transferring between Klyff Edge and Klyff Professional/Community Edition server instance could be stolen by non-authorized persons
 - gRPC messages contain sensitive data like user passwords and device credentials, and theft of this data could lead to serious consequences 
 - Klyff team strongly recommends secure gRPC with TLS/SSL for production environments and environments with sensitive data
 - Please follow this [guide](/docs/edge/user-guide/grpc-over-ssl/) to configure gRPC with TLS/SSL 
{% endcapture %}
{% include templates/info-banner.md content=grpc_ssl_note %}