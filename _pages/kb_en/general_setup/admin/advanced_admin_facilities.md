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

The records on the current software core version and the basic properties of a server, the software is installed at, form the overall store environment. This data aggregates automatically and displays on the **System tools** -> **Environment** page. 

![541-environment-descr.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-environment-descr.png)

Here you can find information about the current software core version, the directory the software is located on the server, PHP and MySQL versions currently used on the server, the server operating system, the actual time difference between the server and the store, and some other parameters you may need to know when working with your store.

This page also allows defining Curl and upgrade options for your store.

The 'CURL options' section allows a store admin to change the details of an SSL certificate assigned to the site.
![541-environment-curl-options.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-environment-curl-options.png)

The 'Upgrade options' section allows choosing an {% link "upgrade wave" ref_040K9jOe %} for your store. 
![541-upgrade-options.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-upgrade-options.png)

By default, it is "Merchant", meaning that a store admin receives notifications on any updates and upgrades available for the store only when they are fully tested. However, there is a special option for X-Cart developers and early adopters to be notified on any updates available while they are still in the testing stage. Switch to "Developer" wave if you need to adapt addons to the new X-Cart core yourself or to try the upgrade beforehand and make sure it does not cause issues in your specific store environment.

To change an upgrade wave:
1. Select the preferrable wave in the **Upgrade access level** dropdown;
2. Click **Submit**.
3. Click **Check for updates** to see if there are any updates available for the selected upgrade wave.

The 'Installation requirements' section of the page reports of any possible issues that may occur on the server where the software is installed.
![541-environment-installation-options.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-environment-installation-options.png)

In case any of the checks are marked as 'Failed', you need to find out the origin of the problem and resolve it as soon as possible. Use a corresponding tooltip for help:
![541-installation-requirements-tooltip.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-installation-requirements-tooltip.png)

## Cache Management

The 'Cache management' page of your store Admin area (**System tools** -> **Cache management**) provides tools that allow you to force clearing or (re)generation of cache files and quick tables. 


In situations where X-Cart needs the same data set to be retrieved relatively often, you can have this data set cached (saved in a cache file or a quick table) so that X-Cart can receive it from there rather than by having MySQL select the necessary data by running the same queries on the same data set each time. Use the "Calculate quick data" option for the purpose. Sparing MySQL the necessity of running through the data over and over, cache files and quick tables considerably reduce the load on your MySQL server.

This functionality is most useful after an import procedure, or after the store administrator has modified the database or some files manually, or you suspect that some data may have been calculated incorrectly due to an interrupted procedure.


## Database Backup and Restoration

The "Database" page of the store Admin area (**System tools** -> **Database**) provides built-in tools for the database backup and restoration. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![541-database-backup-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-database-backup-page.png)</div>
  <div class="column" markdown="span">![541-database-restore-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-database-restore-page.png)</div>
</div>

See more info on how to work with the database backups {% link "here" ref_5cU1i33e %}.

## Integrity Check

The "Integrity check" page provides a tool to verify the overall integrity of the store files.
![541-integrity-check-menu.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-integrity-check-menu.png)

This may be required when it is necesary to find out whether any code changes have beed introduced directly to the files of the software core or addons.

Clicking the "Integrity check" menu item (**System tools** -> **Integrity check**) redirects you to the Integrity check page of {% link "X-Cart Service Screen" ref_5Br376jE %}:
![541-integrity-check-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-integrity-check-page.png)

Here you need to click the **Refresh integrity status button** to start the process. As a result you will get a report on all files added, removed or modified in your X-Cart core and addons.

## Consistency Check

The "Consistency check" page of your store Admin area (**System tools** -> **Consistency check**) provides a tool that allows improving the consistency and quality of data structures in your store's MySQL database. 
![541-consistency-check-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-consistency-check-page.png)

The database used by your store is designed in such a way that your data is stored there in multiple tables. The way X-Cart shopping cart application works requires that in some cases the data from two or more tables should be combined. In such cases MySQL binds the data together across tables. 

For example, product titles are stored in one table, product prices - in another one; as each product in the store is supposed to have a price, MySQL associates each of the product title fields in the former table with a price field in the latter. If, while making alterations to your database tables, you fail to consistently change all the related data (for example, if you add a new product, but fail to add a price for that product), MySQL will not be able to join the respective tables and perform the selection of data from them properly. Performing a database consistency check with the biult-in tool allows you to ensure that all the tables required for the store's operation are present in the MySQL database used by the store and helps you to detect any flaws and inconsistencies that may appear as a result of alterations to the database design caused by maintenance or new inclusions to the database structures performed bypassing X-Cart interface.

## System Logs Check

The "System logs" page of your store Admin area (**System tools** -> **System logs**) aggregates records on all possible actions that might occurred in the store starting from the moment of the installation. It logs any possible errors in the store functioning, internal and external requests to the marketplace and different services, etc.
![541-system-logs.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-system-logs.png)

The logs records are split into month/year periods. To find a certain record:
* locate a month in question (the current date is always preselected);
* click the plus icon in front of a month to open the log drop-down;
* scroll down the log list to find the records for the required date/time;
* check the file names to idetify the process that was logged;
* click a file name to see the log content or use the arrow icon opposite a file to download it.

## Data Removal

The "Remove data" page of your store Admin area (**System tools** -> **Remove data**) provides tools that allow you to empty your store of any content data with which it might have been populated for testing purposes.
![541-remove-data-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-remove-data-page.png)

Clicking the 'Trash' button opposite a certain data category removes the information and settings related to products, categories, orders, customers, etc. respectively. 

The tool can help you bring your X-Cart installation to a state where the store will get rid of all unnecessary data, retaining the configuration settings defining how it should function.

## HTTPS Mode Activation

The "HTTPS settings" page of your store Admin area (**System tools** -> **HTTPs settings**) allows you to switch your store to a secure HTTPS mode in case there is an SSL (Secure Sockets Layer) Certificate installed on your server.
![541-https-settings-page.png]({{site.baseurl}}/attachments/ref_2qRH9roa/541-https-settings-page.png)

You only need to click the **Enable HTTPs** button and X-Cart will do everything for you. As a result secure protocol will be enabled and your store will be configured to use it for both the store’s back end and customer area. You will see a secure connection lock in front of your site name in the address bar:
![connection-secure-lock.png]({{site.baseurl}}/attachments/ref_2qRH9roa/connection-secure-lock.png)

{% note warning %}
Enabling HTTPS protocol for X-Cart in case HTTPS is not properly configured on your server may break access to X-Cart’s Admin interface. If this is your case, see {% link "Inaccessible Admin Area after Enabling HTTPS" ref_q171FiKp %}.
{% endnote %}