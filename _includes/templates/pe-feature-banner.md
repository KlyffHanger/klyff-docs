{% capture peFeatureContent %}
Only [**Professional Edition**](/products/thingsboard-pe/) supports **{{ feature }}** feature.<br>
Use [**Klyff Cloud**](https://{{hostName}}/signup) or [**install**](/docs/user-guide/install/pe/installation-options/) your own platform instance.
{% endcapture %}
{% include templates/info-banner.md title="Klyff PE Feature" content=peFeatureContent %}
