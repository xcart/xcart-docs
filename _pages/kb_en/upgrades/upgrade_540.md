---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-13 12:11 +0400'
identifier: ref_331t0CWx
title: Store Upgrade Process in X-Cart 5.4.x
order: 135
published: false
version: X-Cart 5.4.x
---
Once per day, each X-Cart store checks the X-Cart App Store for updates. 

{% note info %}
The response from the Marketplace is cached for 24 hours. If you need to delete this cache, open the link `admin.php?target=addons_list_marketplace&action=clear_cache`.
{% endnote %}

If there is any kind of update/upgrade available, an **Updates are available** link will be displayed in the header of the Admin area:
![540-orange-upgrade-notification-header.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-orange-upgrade-notification-header.png)

Also, a notification about updates available will be displayed when clicking on the bell icon:
![540-orange-upgrade-bell-notification.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-orange-upgrade-bell-notification.png)

To check what updates are available for your store, click on any of the "Updates are available" links. 

You will be redirected to the **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} where you'll see a full info on all the updates available for you store at the moment.

Basically, there can be 3 types of the updates in your X-Cart based store - Updates for Marketplace, Minor Updates and Major Upgrades.

![updates-marketplace.png]({{site.baseurl}}/attachments/ref_331t0CWx/updates-marketplace.png)

More info on the differences between minor and major upgrades you can find in the {% link "X-Cart Upgrades: General Info" ref_2x1plcU0 %} section of this manual.

{% note info %}
Starting from X-Cart 5.4.0.x all software and addons upgrades are perfromed in a special environment (X-Cart Service Screen) separate from the rest of the store. This was done to ensure that any changes applied to a store via new core updates or present addons’ upgrade or deletion can be safely rolled back in case of any malfunction.
{% endnote %}

The regular upgrade workflow is the same for any type of update you need to apply:
{% toc %}

## Checking the Update Changelog

Changelogs are special files that contain a list of changes included into an update. It is recommended to check changelogs before proceeding with an update to be aware of the forthcoming changes.

The **Updates & Upgrades** section of the X-Cart Service Screen allows to check both a joined changelog for all updates includedin to an upgrade and a separate changelog for each addon that can be updated. A changelog is opened in a pop-up.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![540-major-upgrade-general-changelog.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-major-upgrade-general-changelog.png)</div>
  <div class="column" markdown="span">![540-upgrade-changelog-open.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-upgrade-changelog-open.png)</div>
</div>

## Making a Full Backup

Having a full store backup that includes all store files and the database provides you can restore your site to the original state in case anything goes wrong. That is why 

Backups in X-Cart 5.4.x are done with a built-in {% link "Backup Master Addon" ref_60LdO1tN %}. The **Updates & Upgrades** section of the {% link "X-Cart Service Screen" ref_5Br376jE %} highlights the necessity of making a full store backup before proceeding with updates and provides an opportunity to go directly to the Backup Master addon page and make a fresh back-up there.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![540-major-upgrade-backup.png]({{site.baseurl}}/attachments/ref_331t0CWx/540-major-upgrade-backup.png)</div>
  <div class="column" markdown="span">![back-up-master.png]({{site.baseurl}}/attachments/ref_3sJdcWPV/back-up-master.png)</div>
</div>

Use the 'Backup your store with Backup Master' button to be redirected to the Backup section of your store Admin area (**System tools** -> **Backup**) and to create a full store backup as described {% link "here" ref_60LdO1tN %}. The Backup page is opened in a new tab. 

{% note info %}
In addition, we recommend that you can create a DEV copy of your store BEFORE installing an update or an upgrade on your LIVE store and try installing the update/upgrade on that DEV copy. Provided the update/upgrade installation goes smoothly, and after you have made sure the store's DEV copy continues working as expected, you can upgrade your LIVE store with no doubts.

For details on how to create a dev copy of your store and to restore the store from backup, see {% link 'Moving X-Cart to another location' ref_6oFmUXC7 %}
{% endnote %}

## Installing Upgrades

{% note warning %}
PREREQUISITES:
1. Read the changelogs to be aware of the modifications to be added to the store functionality.
2. Do a full store backup including all store files and the database before launching a store upgrade.
{% endnote %}

Provided you have read the changelogs and done the required store backups you can proceed to the upgrade installation itself. X-Cart allows to install updates and upgrades in bulk (the regular full upgrade) and choose the components to be upgraded and leave the rest as is (partial upgrade). 

### Installing Full Upgrades

Installing a full upgrade package as provided by the App Store is considered the regular way of the upgrades application. A full upgrade package counts all possible interconnections between the addons included into the upgrade and ensures no dependencies are lost during the update. 

**To update/upgrade your X-Cart store**, follow the steps below:

1.  Review the available updates in the Updates & Upgrade section of the {% link "X-Cart Service Screen" ref_5Br376jE %} and choose the updates you need to apply. 
    
    If there are both a minor update and a major upgrade available for your store at the same time, you will need to select the upgrade you require:
       *   To get bugfixes for your current version, use **Minor update** . 
       *   To get both the bug-fixes and the new features, use **Major upgrade**. 
       
       If you do not want to do the global update/upgrade on your store including all the updates/upgrades you see listed on the tab you have opened, follow the **Advanced mode** link to choose the specific update/upgrade components that you want to be installed. 
       
       {% note warning %}
       Proper operation of the store site after an update/upgrade is not guaranteed if you choose to install not the entire update/upgrade, but only some of the components. Use the selective upgrade feature (Advanced mode) at your own risk and only if you know exactly what you are doing.
       {% endnote %}
       
   4.  Scroll down the page to the bottom of the list of updates. There you will see the **Install updates** button. Click on this button to proceed with installing the selected update/upgrade components.
       ![instal-updates.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/instal-updates.png)

   5.  After the **Install updates** button has been clicked, the page will be reloaded prompting you to confirm your selection of upgrade/update components. There will be a title "These components will be updated" and a list of components; for each component, you will be able to see the current version and the version to which it will be updated. Scroll down the page to the bottom of the list and click the **Continue** button:
       ![update-components.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/update-components.png)

       {% note info %}
       Updates/upgrades are available only to X-Cart stores with an activated license key. If you are using an X-Cart trial copy without any license key activated (free or paid), you will not be able to continue any furter than this step. There will be a message stating the problem with your license:
       ![4_licensekey.png]({{site.baseurl}}/attachments/ref_9raTXZPN/4_licensekey.png)
       
       If you see a message like that, you need to at least activate a free license, or purchase and activate a paid license. Once you do so, the problem will be resolved, and next time you attempt an update/upgrade, the **Continue** button will be available.
       {% endnote %}
    
   6.  Clicking the **Continue** button launches the downloading of all the necessary update/upgrade packs for the core and addons. 
        ![5_downl.png]({{site.baseurl}}/attachments/ref_9raTXZPN/5_downl.png)
       
        The downloaded updates/upgrades archives will be unpacked:
        ![6_unpacking.png]({{site.baseurl}}/attachments/ref_9raTXZPN/6_unpacking.png)
       
        ...and checked for integrity:
        ![7_checking_integrity.png]({{site.baseurl}}/attachments/ref_9raTXZPN/7_checking_integrity.png)

        {% note warning %}
        If this step times out because of bad connection, you can try to adjust the REQUEST_LONG_TTL constant in the `<X-Cart 5>/var/run/classes/XLite/Core/Marketplace.php` script so that X-Cart would be able to download all the files in time.
        {% endnote %}

   7.  Once all the upgrade packs have been downloaded, you will be provided with a list of all the downloaded updates and prompted to confirm that you have created a backup.

       At this last step, you may receive several types of warnings:

       *   If your store has any addons that have upgrade hooks, and these addons are disabled (not active), you will be prompted to either activate such addons or completely remove them. An addon must be active in order to correctly run the upgrade hooks, and this is the reason why the addon must be either enabled or deleted.
           ![uninstal-modules.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/uninstal-modules.png)
           
           {% note info %}
           Starting with X-Cart version 5.3.20, we only provide a prompt to remove such addons; however, there is a link to the list of disabled addons where you can enable them if you choose to do so. 
           {% endnote %}
    
       *   If your store has addons that do not exist in the App Store (e.g. you uploaded them via **Upload add-on** button) and you are doing an upgrade/update within the 3rd or 4th digit sequence of the version number, you will be advised to disable these addons, although it is not strictly necessary. If you are doing a major upgrade affecting the 1st or 2nd digit sequence of the version number, you will be told that such addons will be disabled automatically.

        *   If your store has any modified files, you will get a warning like this:
            ![files_modified.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/files_modified.png)
            
            You will be able to choose whether you want the modified files to be replaced in the process of upgrade with their non-modified versions, or to keep the modified files (The latter option may cause your site to crash, so clearly you must understand what you are doing.)

   8.  Click the **Install updates** button to run the installation of the update/upgrade. 
        ![back-up-popup.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/back-up-popup.png)
        Note that the button becomes active only after you have confirmed the creation of a backup.
        ![agreed.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/agreed.png)
        
        
       After the **Install updates** button has been clicked, the process continues as follows:

       1.  Pre-upgrade hooks are run. If the upgrade is going from 5.0.14 to 5.1.3, then all the upgrade hooks - 5.1.0, 5.1.1, 5.1.2, 5.1.3 - will be run during this step. In addition to that, all the addons' upgrade hooks will be run at this stage;

       2.  Overwriting of files happens: new files are added, existing ones are overwritten, non-existent ones in new version are deleted;

       3.  Post-upgrade hooks are run. The same process as with pre-upgrade hooks;

       4.  Cache rebuild process;

       5.  Post-rebuild hooks are run. The same process as with pre-upgrade and post-upgrade hooks;

       6.  Update of language variables happens. Script will take all install.yaml files of addons + yaml file with language variables of the core (`<X-Cart 5>/sql/install.yaml`) and put the language variables from these files to the database.
       

       On the screen, you may see steps like the following:
       
       Deploying:
       ![10_deploying.png]({{site.baseurl}}/attachments/ref_9raTXZPN/10_deploying.png)

       Installing updates:
       ![10_installing_updates.png]({{site.baseurl}}/attachments/ref_9raTXZPN/10_installing_updates.png)

   9.  Once the installation is completed, you get a screen saying "The upgrade is completed. Please do not close this page...":
       ![not-close.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/not-close.png)
       
       On this screen, you get a list of all the updated components:
       ![updated-components.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/updated-components.png)
       
       ...and a link to view the update log:
       ![view-log.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/view-log.png)
       
   10.  Check that your store looks and functions correctly after the upgrade. In case of problems, use the hard/soft reset links to try and find out what is wrong, or recover your store from backup.
         ![restore-backup.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/restore-backup.png)
    
   11. If the page provides any kind of "upgrade notes" (like in the screenshot below), be sure to follow through with the recommendations provided therein.
        ![11_completed1.png]({{site.baseurl}}/attachments/ref_9raTXZPN/11_completed1.png)

