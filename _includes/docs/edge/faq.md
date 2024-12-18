* TOC
{:toc}


## What is Klyff Edge?

Klyff Edge is a product designed for edge computing offered by Klyff. 
It facilitates the analysis and management of data at the edge, i.e., where the data is generated, while maintaining seamless synchronization with the Klyff server (Cloud, Demo, PE or CE), as per your business requirements. 
If you're new to edge computing, we recommend reviewing [what-is-edge](/docs/{{docsPrefix}}getting-started-guides/what-is-edge/) and the [getting started guide](/docs/{{docsPrefix}}getting-started/). 
More information can be found on the dedicated page.

## How do I get started?

We recommend [installing](/docs/user-guide/install/{{docsPrefix}}installation-options/) Klyff Edge on your local machine (laptop or PC) using Docker and following the [getting started guide](/docs/{{docsPrefix}}getting-started/).

## Does Klyff Edge require an internet connection?

No, Klyff Edge doesn't require an internet connection. 
You can operate it without one. 
The only necessary connection is to the Klyff server via gRPC.

{% if docsPrefix == 'pe/edge/' %}
However, Klyff Edge does utilize an HTTP(s) connection to the Klyff server to verify the license. 
The URL set in the **Cloud Endpoint** configuration is used for this validation. 
Please ensure that the HTTP(s) connection to the server is not blocked by any firewall settings. 
The Klyff server acts as a proxy for Klyff Edge to connect to the Klyff License Portal.
{% endif %}

{% if docsPrefix == 'pe/edge/' %}
## What happens if the connection to the Klyff server is temporarily unavailable? How will the license check be carried out in this case?

Klyff Edge can operate offline, without a connection to the Klyff server, for up to **7 days**.
{% endif %}

## Can multiple tenants or customers access a single Klyff Edge in a remote location?

{% if docsPrefix == 'pe/edge/' %}
Klyff Edge PE supports a **single** tenant and partial support of **multiple** customers.
If the owner of the Edge is a sub-customer, all the parent entities of that sub-customer up to the tenant level will be provisioned to the Edge.
This means customers from the same hierarchy path can access the same Klyff Edge PE instance.
However, you cannot share a Klyff Edge between multiple tenants, and devices from multiple tenants cannot connect to a single Klyff Edge.
In such cases, you'll need to provision multiple Klyff Edge instances for each tenant.
{% else %}
Klyff Edge CE supports a **single** tenant and a **single** customer.
You cannot share Klyff Edge between multiple tenants or customers, and devices from multiple tenants cannot connect to a single Klyff Edge.
In such cases, you'll need to provision multiple Klyff Edge instances for each tenant or customer.
{% endif %}

## Can I connect devices from multiple tenants to a single Klyff Edge?

No, a Klyff Edge supports a **single** tenant only. 
You cannot connect devices from multiple tenants to a single Klyff Edge. 
In such cases, you'll need to provision multiple Klyff Edge instances for each tenant.

## What can I do with Klyff Edge?

Klyff Edge allows you to connect your on-site devices to a local Klyff Edge instead of directly connecting them to the Klyff server. 
This setup offers the following benefits:
- **Local Deployment and Storage**<br>
*Process and store data from local devices without a server connection. You can push updates to the server once the connection is restored.*
- **Traffic Filtering**<br>
*Filter data from local devices at the Klyff Edge level and only push a subset of data to the server for further processing or storage.*
- **Local Alarms**<br>
*Respond immediately to critical situations on-site without relying on server connectivity.*
- **Batch Update and Visualization**<br>
*Update thousands of edge configurations in a single click. Monitor local events and time series data with a real-time dashboard.*

## How can I connect my device?

Klyff supports various protocols including
[MQTT](/docs/{{docsPrefix}}reference/mqtt-api), 
[CoAP](/docs/{{docsPrefix}}reference/coap-api), 
[HTTP](/docs/{{docsPrefix}}reference/http-api), and
[LwM2M](/docs/{{docsPrefix}}reference/lwm2m-api).
**Existing** devices can be connected to the platform using the **[Klyff Gateway](/docs/iot-gateway/what-is-iot-gateway/)**.
More information is available on the [connectivity](/docs/{{docsPrefix}}reference/protocols/) page.

{% if docsPrefix == 'pe/edge/' %}
Furthermore, you can use Klyff [**Integrations**](/docs/user-guide/integrations/) to connect devices from different sources and with custom payloads to the edge.
{% endif %}

## Do I need to use an SDK?

No, many IoT devices are not designed to embed third-party SDKs. 
Klyff Edge provides a straightforward API over common IoT protocols, so you can select any client-side library of your preference or even use your own. 
Some useful references include:
 
 - [MQTT client-side libraries list](https://github.com/mqtt/mqtt.github.io/wiki/libraries) 
 - [C-implementation for CoAP](https://libcoap.net/)

## What about security?

You can use MQTT (over SSL) or HTTPS protocols for transport encryption. 
Each device has unique access token credentials or X.509 certificates used to establish a connection.

## How many devices can Klyff Edge support?

{% if docsPrefix == 'pe/edge/' %}
The number of connected devices depends on your subscription plan. 
Some plans offer 'Unlimited Devices and Assets', thus there are no soft limits on creating devices and assets on the edge side.
{% else %}
There are no soft limits on creating devices and assets on the edge side.
{% endif %}

**However**, in real-world deployments, several additional factors must be considered to support a large number of devices on the edge side - hardware, internet connection speed, and gRPC channel bound limits. 
Your edge **hardware** must be powerful enough to process messages from an 'unlimited' number of devices and assets. 
The **speed of your internet connection** between Klyff Edge and the Klyff server must be fast enough to deliver a large amount of data. 
Lastly, **gRPC channel bound limits**, which affect message delivery rate, should also be considered. 
Since Klyff Edge is designed with remote locations with potentially low bandwidth connectivity in mind, we do not recommend connecting more than *1000* devices to a single edge.
  
## Where does Klyff Edge store data?

Data is stored in the [PostgreSQL](https://www.postgresql.org/) database, which is well-suited for storing and querying entities and local time series data.

## How can I get support?

You can refer to our troubleshooting instructions and community resources, or [contact us](/docs/contact-us) to learn more about the [services](/docs/services/) we provide.