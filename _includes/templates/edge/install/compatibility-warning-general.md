{% capture update_server_first %}
**Rules of Compatibility Between Klyff Edge and Klyff Server Versions:**
* A Klyff Edge version X.Y.Z is compatible with the same Klyff Server version X.Y.Z and any later versions.
* A Klyff Edge version X.Y.Z is **NOT** compatible with Klyff Server versions preceding X.Y.Z.

**Example**: Klyff Edge version 3.3.4.1 is compatible with Klyff Server version 3.3.4.1 and subsequent versions (3.4.0, 3.4.1, ...).
However, Klyff Edge version 3.4.0 is **NOT** compatible with Klyff Server version 3.3.4.1 or any prior versions (3.3.4, 3.3.3, ...).
In such scenarios, Klyff Server 3.3.4.1 or a preceding version must first be upgraded to Klyff Server 3.4.0 or a later version.

**Please ensure that the Klyff Server is updated to the latest version before proceeding.**
{% endcapture %}
{% include templates/warn-banner.md content=update_server_first %}