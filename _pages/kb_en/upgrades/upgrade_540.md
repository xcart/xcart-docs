---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-13 12:11 +0400'
identifier: ref_331t0CWx
title: Store Upgrade Process in X-Cart 5.4.x
order: 135
published: true
version: X-Cart 5.4.x
---
Once per day, each X-Cart store checks the X-Cart App Store for updates, the response being cached for 24 hours. If you need to delete this cache, open the link `<YOUR_STORE_URL>/service.php?/clear-cache` or use the **Check for updates** button in the **Upgrade options** section of the **System tools** -> **Environment** page in your store Admin area.

If there is any kind of update/upgrade available, an **Updates are available** link will be displayed in the header of the Admin area:
![540-orange-upgrade-notification-header.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-orange-upgrade-notification-header.png)

Also, a notification about updates available will be displayed when clicking on the bell icon:
![540-orange-upgrade-bell-notification.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-orange-upgrade-bell-notification.png)

{% note info %}
The color of the **Updates are available** link background in the header may be either green or orange. The orange color signifies that only a feature-release is available. The green color signifies that a bug-fix release and/or addons updates are available (or both a bug-fix release and a feature-release are available).
![header-notification-green.png]({{site.baseurl}}/attachments/ref_331t0CWx/header-notification-green.png)
{% endnote %}

To check what updates are available for your store, click on any of the "Updates are available" links. 

You will be redirected to the **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} where you'll see a full info on all the updates available for you store at the moment.

{% note info %}
Starting from X-Cart 5.4.0.x all software and addons upgrades are perfromed in a special environment (X-Cart Service Screen) separate from the rest of the store. This was done to ensure that any changes applied to a store via new core updates or present addons’ upgrade or deletion can be safely rolled back in case of any malfunction.
{% endnote %}

Basically, there can be 3 types of updates in your X-Cart based store - Updates for App Store, Minor Updates and Major Upgrades. 
![updates-marketplace.png]({{site.baseurl}}/attachments/ref_331t0CWx/updates-marketplace.png)

If there are several upgrades available for your store at the same time, you will need to select the upgrade you require:
*   To get updates from the App Store to make the process of upgrading your store more secure and stable, click on the **Install Updates** button in the **Updates for App Store** section. 
    {% note info %}
    Unlike minor and major upgrades, updates for App Store are run right away as you click the **Install Updates** button without
    {% endnote %}
*   To get bugfixes for your current version, click on the **View & Update** button in the  **Minor update** section. 

*   To get both the bug-fixes and the new features, click on the **View & Upgrade** button in the **Major upgrade** section. 

The regular upgrade workflow is the same for any type of update you need to apply:
{% toc %}

## Check for Warnings

After you have selected to proceed with either minor or major software upgrades, check if there are any warnings from the {% link "X-Cart Service Screen" ref_5Br376jE %}, like on the screen below:
   ![540-major-upgrade-remove-addons-warning.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-major-upgrade-remove-addons-warning.png)
   
   *   If your store has any addons that have upgrade hooks, and these addons are disabled (not active), you will be prompted to activate such addons. An addon must be active in order for the upgrade hooks to be run correctly, and this is the reason why the addon must be either enabled or deleted.
   *   If your store has addons that do not exist in the App Store (e.g. you {% link "uploaded" ref_GZQ9vTq6 %} them via **Upload add-on** button) and you are doing an upgrade/update within the 3rd or 4th digit sequence of the version number, you will be advised to disable these addons, although it is not strictly necessary. If you are doing a major upgrade affecting the 1st or 2nd digit sequence of the version number, you will be told that such addons will be disabled automatically.
   *   If your store has any modified files, you will be prompted to contact the addon developers for help with the files adaptaion for the upcoming upgrade.
   *   If you are using an X-Cart trial copy without any license key activated (free or paid) or your access to upgrades has expired, you will not be able to continue any furter than this step. If you see a warning like that, you need to at least activate a free license, or purchase and activate a paid license. Once you do so, the problem will be resolved.

## Check the Update Changelog

Changelogs are special files that contain a list of changes included into an update. It is recommended to check changelogs before proceeding with an update to be aware of the forthcoming changes.

After you have selected to proceed with either minor or major software upgrades, you can view both a joined changelog for all updates included into an upgrade and a separate changelog for each addon that can be updated. A changelog is opened in a pop-up.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![540-major-upgrade-general-changelog.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-major-upgrade-general-changelog.png)</div>
  <div class="column" markdown="span">![540-upgrade-changelog-open.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-upgrade-changelog-open.png)</div>
</div>

## Make a Full Backup

Having a full store backup that includes all store files and the database provides you can restore your site to the original state in case anything goes wrong.

Backups in X-Cart 5.4.x are done with a built-in {% link "Backup Master Addon" ref_60LdO1tN %}. The **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} highlights the necessity of making a full store backup before proceeding with updates and provides an opportunity to go directly to the Backup Master addon page and make a fresh back-up there.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![540-major-upgrade-backup.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-major-upgrade-backup.png)</div>
  <div class="column" markdown="span">![back-up-master.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/back-up-master.png)</div>
</div>

Use the 'Backup your store with Backup Master' button to be redirected to the Backup section of your store Admin area (**System tools** -> **Backup**) and to create a full store backup as described {% link "here" ref_60LdO1tN %}. The Backup page is opened in a new tab. 

{% note info %}
In addition, you can create a DEV copy of your store BEFORE installing an update or an upgrade on your LIVE store and try installing the update/upgrade on that DEV copy. Provided the update/upgrade installation goes smoothly, and after you have made sure the store's DEV copy continues working as expected, you can upgrade your LIVE store with no doubts.

For details on how to create a dev copy of your store and to restore the store from backup, see {% link 'Moving X-Cart to another location' ref_6oFmUXC7 %}
{% endnote %}

## Choose Full or Partial Upgrade

{% note info %}
If you want to install a regular full update/upgrade skip this step and move on to step [Install Upgrades](https://kb.x-cart.com/upgrades/upgrade_540.html#install-upgrades "Store Upgrade Process in X-Cart 5.4.x"). 
{% endnote %}
   
If you do not want to do the full update/upgrade of your store that includes all the updates/upgrades listed in the joined changelog, you should:
* click on the **Lock** icon in the top right corner of the screen to unlock the possibility of selecting the specific update/upgrade components that you want to be installed: 
  ![540-upgrade-unlocked.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-upgrade-unlocked.png)
* select the addons you want to be updated;
* proceed further as with the regular full store upgrade/update.
      
{% note warning %}
Proper operation of the store site after a partial update/upgrade is not guaranteed if you choose to install not the full update/upgrade, but only some of the components. Use the selective upgrade feature at your own risk and only if you know exactly what you are doing.
{% endnote %}

## Install Upgrades

{% note warning %}
PREREQUISITES:
Do a full store backup including all store files and the database before launching a store upgrade.
{% endnote %}

Provided you have read the changelogs and done the required store backups you can proceed to the upgrade installation itself. 

To install upgrades:

1. Scroll down the page to the bottom of the list of updates. There you will see the checkboxes for you to confirm that you have made a full store backup and agree for deletion of unused addons (if applicable).  
   ![540-minor-upgrade-agree-checkboxes.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-minor-upgrade-agree-checkboxes.png)
   Once the checkboxes are enabled the **Continue** button becomes active.
    
2. Click the **Continue** button to proceed with installing the selected update/upgrade components.
   ![540-minor-upgrade-continue.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-minor-upgrade-continue.png)

3. Clicking the **Continue** button locks both the store Admin area and the Customer storefront from any actions and launches the download and installation of all the necessary update/upgrade packs for the core and addons. 
   ![540-minor-upgrade-permissions.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-minor-upgrade-permissions.png)
    
    The process continues as follows:
    
    * Files are extracted;
    * Filesystem permisions are checked;
    * Files are scanned for external changes;
    * Pre-upgrade hooks are applied;
    * Files are updated and codebase backup is created;
    * Script state is updated;
    * Addon status is updated;
    * Codebase and PHP opcode caches are cleared;
    * Data cache is cleared and fresh codebase cache are created;
    * PHP opcode cache is cleared;
    * Database migration script is created;
    * Database migration script is applied;
    * Doctrine proxy classes are created;
    * Data fixtures are updated;
    * Quick data are generated;
    * CSS rules and style sheets are created for storefront;
    * CSS rules and style sheets are created for admin area;
    * Templates are compiled, APC and opcode caches are cleared;
    * Addons are removed, backup is cleared;
    * Addon metadata are updated;
    * Common upgrade actions are applied;
    * Post upgrade hooks are executed (rebuilt);
    * Post rebuild hooks are applied;
    * Storefront is unlocked.

4. Once the installation is completed, the store Admin area and storefront are unlocked and you get a screen saying "All done!" .
   ![540-minor-updrage-completed-general.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-minor-updrage-completed-general.png)
   
5.  Check that your store looks and functions correctly after the upgrade. Use the **Open storefront** and **Go to the Admin area** buttons to open your store Admin area and Customer storefront in the new browser tabs. 

    In case of any problems, use the **Rollback** link on the "All done!" screen to cancel the changes and reverse the store to the original state.
