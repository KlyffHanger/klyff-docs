To connect "In-vehicle monitoring system" to the Klyff **Edge** you need to get device credentials first.
Klyff supports different device credentials. We recommend to use default auto-generated credentials which is access token for this guide.

Please open Klyff **Edge** UI using the URL: **EDGE_URL**.

{% include images-gallery.html imageCollection="copyAccessTokenDevice" showListImageTitles="true" %}

We will use simple commands to generate random telemetry for the device "In-vehicle monitoring system" and publish to the Klyff **Edge** by the MQTT protocol.

Please download following script to your local folder:
- [**mqtt-generator.py**](/docs/{{docsPrefix}}use-cases/resources/data-filtering-traffic-reduce/mqtt-generator.py)

Before running the scripts, please modify **mqtt-generator.py** as follows:

- Replace **YOUR_ACCESS_TOKEN** with the access token of the **"In-vehicle monitoring system"** device copied from the previous steps.

- Replace **YOUR_TB_EDGE_HOST** with your Klyff Edge host address. For example, **localhost**.

- Replace **YOUR_TB_EDGE_MQTT_PORT** with your Klyff Edge MQTT port number. For example, **11883** or **1883**.

Open the terminal and install the MQTT Python library using the following command:

```bash
sudo pip install paho-mqtt
```
Navigate to the directory containing your Python script and launch the application with the following command:

```bash
python mqtt-generator.py
```
Open the Klyff **Edge** UI and verify that the device successfully receives telemetry:

{% include images-gallery.html imageCollection="verifyDeviceTelemetryEdge" showListImageTitles="true" %}

Open **Klyff** UI and verify that edge successfully pushes data to the cloud:

{% include images-gallery.html imageCollection="verifyDeviceTelemetry" showListImageTitles="true" %}