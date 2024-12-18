---
layout: docwithnav-pe
title: Installing Klyff PE on DigitalOcean 
description: Installing Klyff PE on DigitalOcean

---

This guide describes how to install Klyff Professional Edition on DigitalOcean. 
Using this guide you will install "Bring Your Own License" version of the product.
Basically, you get the license directly from Klyff, Inc, but purchase corresponding server instances and infrastructure from DigitalOcean.       

* TOC
{:toc}


{% include templates/install/digital-ocean-droplet.md %} 

### Step 4. Use regular installation instruction for Ubuntu

Please navigate to the Klyff PE [**installation instruction**](/docs/user-guide/install/pe/ubuntu/) 
for Ubuntu and complete the installation steps.

**Note:** Use your droplet IP address instead of "localhost" to access the instance WEB UI.

### Post-installation steps

{% include templates/install/ubuntu-haproxy-postinstall.md %}

### Troubleshooting

{% include templates/install/troubleshooting.md %}

## Next steps

{% assign currentGuide = "InstallationGuides" %}{% include templates/guides-banner.md %}




