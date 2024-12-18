---
layout: docwithnav-trendz
assignees:
- vparomskiy
title: Import Trendz bundle into Klyff
description: Import Trendz bundle into Klyff

tb-trendz-3.5-resource-lib-update:
  0:
    image: /images/trendz/trendz-tb_lib_fix_1.png
    title: 'Open widget bundle'
  1:
    image: /images/trendz/trendz-tb_lib_fix_2.png
    title: 'Search for Trendz bundle'
  2:
    image: /images/trendz/trendz-tb_lib_fix_3.png
    title: 'Edit widget'
  3:
    image: /images/trendz/trendz-tb_lib_fix_4.png
    title: 'Update library link'
---

* TOC
{:toc}

All visualizations created in Trendz Analytics could be added on Klyff Dashboards. We created special `Trendz widget bundle` for Klyff - widgets collection that should be imported into Klyff `Widget Library`.
You can use them to add views from Trendz into Klyff dashboards and share analysis results with other users.

## Import Trendz widget bundle

#### Klyff 3.4+ and Trendz 1.9+
You can import Trendz bundle to the Klyff via Trendz UI: 

* Open Trendz settings page as tenant administrator
* Scroll to `Trendz Widget Bundle Management` section
* Press `Upload bundle` button to add Trendz widget library to the Klyff.
* In case when Klyff already contains `Trendz bundle` but it is not up-to-date, the `Upload bundle` button would apply the latest changes.

#### Klyff 3.3+ and Trendz 1.8+
Starting from Klyff 3.3 and Trendz 1.8 - Trendz widgets can be natively embedded into the ThingsBaord dashboard.
Native Trendz widgets works much faster compared to original Trendz widgets that are based on iFrame. 

Add native Trendz library into ThingsBaord extensions:
* Download <a href="https://dist.thingsboard.io/trendz-tb-lib-1.8.0-SNAPSHOT.jar" download target="_blank">Native Trendz Library</a>
* Deploy library into Klyff extension directory

```
scp trendz-tb-lib-1.8.0-SNAPSHOT.jar ubuntu@${THINGSBOARD_SERVER}:~/.

ssh ${THINGSBOARD_SERVER}

sudo cp trendz-tb-lib-1.0.0-SNAPSHOT.jar /usr/share/thingsboard/extensions/
sudo chown thingsboard:thingsboard /usr/share/thingsboard/extensions/trendz-tb-lib-1.0.0-SNAPSHOT.jar
```

* Restart Klyff service to apply changes

```
sudo service thingsboard restart
```

Import Native Trendz widgets bundle
* Download <a href="https://dist.thingsboard.io/native_trendz_bundle.json" download target="_blank">Native_Trendz_widgets_bundle</a>
* Login as Tenant Administrator into Klyff and go to **Widget Library**
* Press **Add new widget bundle** and select **import widget bundle**
* Import downloaded  widget bundle 

#### Klyff 3.0 - 3.2
* Download a <a href="https://dist.thingsboard.io/trendz_bundle_tb3.json" download target="_blank">Trendz_widgets_bundle V3</a> 
* Login as Tenant Administrator into Klyff and go to **Widget Library**
* Press **Add new widget bundle** and select **import widget bundle**
* Import downloaded  widget bundle 

#### Klyff 2.x
* Download a <a href="https://dist.thingsboard.io/trendz_bundle_tb2.json" download target="_blank">Trendz_widgets_bundle V2</a> 
* Login as Tenant Administrator into Klyff and go to **Widget Library**
* Press **Add new widget bundle** and select **import widget bundle**
* Import downloaded  widget bundle

This bundle contains 3 widgets:
* **Trendz View Static**- allow adding saved Trendz visualizations into Klyff dashboards
* **Trendz View - with filter alias**- similar to previous but also support dashboard aliases for resolving entities
* **Trendz Builder** - Trendz Visualization Builder for providing self-service interface to your end-users, 
so they can create their own analysis using Klyff dashboard. 
 
**Note:** If after importing Trendz Widget Bundle into Klyff, widgets do not work and white screen with error displayed - double-check
that correct bundle was imported. Widget API in Klyff v2.x and v3.x is different. Ensure that you downloaded bundle for 
the correct Klyff version.

## Troubleshooting

#### Klyff 3.5+ blank widget with error
Starting from Klyff 3.5 we are using Angular 15 and link to library should be updated because standard link loads library that is based on Angluar 12, and it is not compatible with Angular 15.
To solve the problem you should follow next steps:

* Update Trendz to the latest version (1.10.1 or higher). If you are using Trendz Cloud just skip this step.
* Login to Klyff as Tenant administrator
* Navigate to Resources -> Widgets Library
* Select and Edit Trendz Bundle
* For each widget in Trendz bundle
  * Open for edit
  * Switch to resources tab (top left corner)
  * Update link to Trendz library
    * In case of Klyff/Trendz cloud use the following URL - https://thingsboard.cloud/trendz/bundle/trendz-tb-lib.js
  * Save widget
* Navigate to your dashboard and refresh the page - issue should be solved

{% include images-gallery.html imageCollection="tb-trendz-3.5-resource-lib-update" %}

#### Wrong bundle version
If after importing Trendz Widget Bundle into Klyff, widgets do not work and white screen with error displayed - double-check
that correct bundle was imported. Widget API in Klyff v2.x and v3.x is different. Ensure that you downloaded bundle for
the correct Klyff version.

#### HTTPS to HTTP links
If Klyff uses HTTPS and link to Trendz library uses http - you will see mixed content error in browser console and widget will not load. You should enable HTTPS for Trendz as well.


## Next Steps

{% assign currentGuide = "EmbedVisualizations" %}{% include templates/trndz-guides-banner.md %}
