{% capture update_server_first %}
**Please make sure that Klyff Server version is {{serverVersion}} or above before updating Klyff Edge to this version**.

If Klyff Server version is below {{serverVersion}}, please follow upgrade Klyff server [upgrade instructions](/docs/user-guide/install/{{docsPrefix}}upgrade-instructions/{{updateServerLink}}){:target="_blank"} first.
{% endcapture %}
{% include templates/warn-banner.md content=update_server_first %}