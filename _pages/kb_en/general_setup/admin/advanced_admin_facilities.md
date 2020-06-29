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

This tool allows you to force (re)generation of cache files and quick tables. In situations where X-Cart needs the same data set to be retrieved relatively often, you can have this data set cached (saved in a cache file or a quick table) so that X-Cart can receive it from there rather than by having MySQL select the necessary data by running the same queries on the same data set each time. Sparing MySQL the necessity of running through the data over and over, cache files and quick tables considerably reduce the load on your MySQL server.

This functionality is most useful after an import procedure, or after the store administrator has modified the database or some files manually, or you suspect that some data may have been calculated incorrectly due to an interrupted procedure.


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

The "Consistency check" page of your store Admin area (**System tools** -> **Consistency check**) provides a tool that allows improving the consistency and quality of data structures in your store's MySQL database. 
![541-consistency-check-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-consistency-check-page.png)

The database used by your store is designed in such a way that your data is stored there in multiple tables. The way X-Cart shopping cart application works requires that in some cases the data from two or more tables should be combined. In such cases MySQL binds the data together across tables. 

For example, product titles are stored in one table, product prices - in another one; as each product in the store is supposed to have a price, MySQL associates each of the product title fields in the former table with a price field in the latter. If, while making alterations to your database tables, you fail to consistently change all the related data (for example, if you add a new product, but fail to add a price for that product), MySQL will not be able to join the respective tables and perform the selection of data from them properly. Performing a database consistency check with the biult-in tool allows you to ensure that all the tables required for the store's operation are present in the MySQL database used by the store and helps you to detect any flaws and inconsistencies that may appear as a result of alterations to the database design caused by maintenance or new inclusions to the database structures performed bypassing X-Cart interface.

## Remove Data

This tool allows you to empty your store of any content data with which it might have been populated for testing purposes. Clicking the 'Trash' button opposite a certain data category removes the settings related to products, categories, orders, customers, etc. respectively. 

The tool can help you bring your X-Cart installation to a state where the store will get rid of all unnecessary data, retaining the configuration settings defining how it should function.

![541-remove-data-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-remove-data-page.png)


## HTTPS Settings

![541-https-settings-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-https-settings-page.png)

