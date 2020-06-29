---
lang: en
layout: article_with_sidebar
updated_at: '2020-06-24 12:49 +0400'
identifier: ref_2qRH9roa
title: Advanced Admin Facilities
order: 300
published: false
---
There is a special section in your store Admin area that aggregates information about your store environment and allows you to perform advanced maintenance tasks, including checking system logs of all executed actions. This section is called "System tools".
,
![541-system-tools.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-system-tools.png)

{% toc %}

## Store Environment Records

The records on the current software core version and the server, the software is installed at, form the overall store environment. This data aggregates automatically and displays on the **System tools** -> **Environment** page. 

![541-environment-descr.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-environment-descr.png)

Here you can find information about the software core version being in use at the moment, the directory the software is located on the server, PHP and MySQL versions currently used on the server, the server operating system, the actual time difference between the server and the store, and other parameters.

This page also allows defining Curl and upgrade options for your store.

The 'CURL options'section allows a store admin to change the details of the SSL certificate being used.
![541-environment-curl-options.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-environment-curl-options.png)

The 'Upgrade options' section allows you choosing an {% link "upgrade wave" ref_040K9jOe %} for your store. 
![541-upgrade-options.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-upgrade-options.png)

By default, it is "Merchant", meaning that a store admin receives notifications on any updates and upgrades available for the store only when they are fully tested. However, there is a special option for X-Cart developers and early adopters to be notified on any updates available while they are still in the testing stage. The "Developer" wave will allow 3rd party addon developers to adapt their addons to the new X-Cart core; it also lets the tech-savvy X-Cart users try the upgrade and make sure it does not cause issues in their specific store environment.

To change an upgrade wave:
1. Select the preferrable wave in the **Upgrade access level** dropdown;
2. Click **Submit**.
3. Click **Check for updates** to see if there are any updates available for the selected upgrade wave.

The 'Installation requirements' section of the page reports of any possible issues that may occur on the server where the software is installed.
![541-environment-installation-options.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-environment-installation-options.png)

In case any of the checks is marked as 'Failed', you need to find out the origine of the problem and resolve it as soon as possible. Use a corresponding tooltip for help:
![541-installation-requirements-tooltip.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-installation-requirements-tooltip.png)

## Cache Management


## Database Backup and Restoration

The "Database" page of the store Admin area (**System tools** -> **Database**) provides built-in tools for the database backup and restoration. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![541-database-backup-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-database-backup-page.png)</div>
  <div class="column" markdown="span">![541-database-restore-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-database-restore-page.png)</div>
</div>

See more info on how to work with the database backups {% link "here" ref_5cU1i33e %}.

## Integrity Check

![541-integrity-check-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-integrity-check-page.png)

## Consistency Check

![541-consistency-check-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-consistency-check-page.png)

## Remove Data

![541-remove-data-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-remove-data-page.png)


## HTTPS Settings

![541-https-settings-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-https-settings-page.png)

