---
lang: en
layout: article_with_sidebar
updated_at: '2019-11-29 12:06 +0400'
identifier: ref_3sJdcWPV
title: Updating Addons in X-Cart 5.4.x
order: 140
published: true
version: X-Cart 5.4.x
---
In X-Cart 5.4.x, notifications about any updates for an addon or a group of addons are automatically displayed in your store Admin area as soon as they become available:

* as a banner in the header:
  ![updates-available-admin.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/updates-available-admin.png)

* in the top info menu (except for X-Cart vv5.4.0.0-5.4.0.6): 
  ![540-bell-notification.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/540-bell-notification.png)

To check what updates are available, click on the “Updates are available” links. You will be redirected to the **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %}:

![updates-available.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/updates-available.png)

{% note info %}
In addition to the minor addon updates, there can also be major software upgrades. See more info on the regular software upgrades in {% link "Upgrading X-Cart 5" ref_pQQ1CLe1 %}.
{% endnote %}

Basically, any update application consists of the 3 main steps:
{% toc %}

## Checking Changelogs

Changelogs are special files that contain a list of changes included into an update. It is recommended to check changelogs before proceeding with an update to be aware of the forthcoming changes.

The **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} allows to check both a joined changelog for all updates at once and a separate changelog for each addon that can be updated. A changelog is opened in a pop-up.
<div class="ui stackable two column grid">
  <div class="column" markdown="span">![changelogs.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/changelogs.png)</div>
  <div class="column" markdown="span">![changelog.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/changelog.png)</div>
</div>

## Making a Full Backup

Backups in X-Cart 5.4.x are done with a built-in {% link "Backup Master Addon" ref_60LdO1tN %}. The **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} highlights the necessity of making a full store backup before proceeding with updates and provides an opportunity to go directly to the Backup Master addon page and make a fresh back-up there.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![backup-notification.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/backup-notification.png)</div>
  <div class="column" markdown="span">![back-up-master.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/back-up-master.png)</div>
</div>

Use the 'Backup your store with Backup Master' button to be redirected to the Backup section of your store Admin area (System tools -> Backup) and to create a full store backup as described {% link "here" ref_60LdO1tN %}. The Backup page is opened in a new tab.

## Applying Addons Updates 

{% note warning %}
Make sure you have done the following 2 steps, before proceeding with updates:
1. Read the changelogs.
2. Made a full store backup including the store files and the database.
{% endnote %}

To apply an update: 

1. Confirm that you have made a full store back-up in to make the 'Continue' button active and click the 'Continue' button:
   ![continue-update.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/continue-update.png)
2. The system will automatically apply the update(s) and redeploy your store to make the changes active:
   ![deploying-your-store.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/deploying-your-store.png)
   
   Your site Admin area and storefront will be blocked from any possible actions while the store re-deployment is in progress to prevent any possible damages. Any users that will try to do anything in your store during the re-deployment will see a warning message to wait until the store re-deployment is completed.

3. After all required updates have been applied, you'll see the "All done!" confirmation: 
   ![changes-screen.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/changes-screen.png)
   
   A store admin can open a customer storefront or go directly to the store Admin area by clicking the respective orange buttons to check the updates in work. Both the store Admin area and the Customer storefront will be opened in new tabs for the sake of the possibility to roll back the changes.
   
   The changes can be reverted safely by clicking the **rollback** link at the bottom of the screen.
