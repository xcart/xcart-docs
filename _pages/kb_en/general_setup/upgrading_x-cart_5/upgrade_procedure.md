---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-17 12:29 +0400'
identifier: ref_2eoOYsqJ
title: Store Upgrade Process (Automated Upgrades)
order: 120
published: true
---
## Before You Upgrade: Back up Your Store
Installing an update/upgrade is a serious task which requires some preparation. At the very least, you should create a backup of your store 

{% note warning %}
**Be sure to back up both the files and the database!**
{% endnote %}

In addition, we strongly recommend that you should create a DEV copy of your store BEFORE installing an update or an upgrade on your LIVE store and try installing the update/upgrade on that copy. Only if the update/upgrade installation goes smoothly, and after you have made sure the store's DEV copy continues working as expected after the update/upgrade is uplied should you attempt updating/upgrading your LIVE store.

For details on how to create a dev copy of your store and to restore the store from backup, see {% link 'Moving X-Cart to another location' ref_6oFmUXC7 %}

## Store Upgrade Process
Once per day, each X-Cart store checks the Marketplace for updates. The response from the Marketplace is cached for a day. If you need to delete this cache, open the link `admin.php?target=addons_list_marketplace&action=clear_cache`.

If there is any kind of update/upgrade available, there will be an **Updates are available** link in the header of the Admin area:
![updates-green.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/updates-green.png)

Also, there will be a notification of available updates when clicking the bell icon:
![updates-nots.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/updates-nots.png)

Starting with X-Cart 5.3.2.4, the color of the **Updates are available** link background in the header may be either green or orange. The orange color signifies that only a feature-release is available. The green color, like in the screenshot below, signifies that a bug-fix release and/or addons updates are available (or both a bug-fix release and a feature-release are available).

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![updates-orange.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/updates-orange.png)</div>
  <div class="column" markdown="span">![updates-green-1.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/updates-green-1.png)</div>
</div>


{% note info %}
In X-Cart version 5.3.2.3 and earlier, the **Updates are available** link is always highlighted with an orange background, regardless of the nature of available updates.
{% endnote %}

To check what updates are available, click on any of the "Updates are available" links. You will see the "Updates for your version" page showing the available updates:
![updates-available.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/updates-available.png)

Note the page tabs: 

   *   The **Minor update** tab (named **Bug-fixes only** in X-Cart v5.3.2.3 and earlier) shows the available bug-fix releases of the core and addons:

       (X-Cart v5.3.2.4 and later)
       ![minor-upgrade.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/minor-upgrade.png)
      
       (X-Cart v5.3.2.3 and earlier)
       ![2_4yourversion2.png]({{site.baseurl}}/attachments/ref_9raTXZPN/2_4yourversion2.png)

   *   The **Major upgrade** tab (named **Bug-fixes and new features** in X-Cart v5.3.2.3 and earlier) shows the available feature-releases of the core and addons:
       
       (X-Cart v5.3.2.4 and later)
       ![major-upgrade.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/major-upgrade.png)

       (X-Cart v5.3.2.3 and earlier)
       ![2_4yourversion1.png]({{site.baseurl}}/attachments/ref_9raTXZPN/2_4yourversion1.png)

Also note the **Advanced mode** link allowing you to install just some specific updates/upgrades:
       ![advanced-mode.png]({{site.baseurl}}/attachments/ref_2eoOYsqJ/advanced-mode.png)


**To update/upgrade your X-Cart store**, follow the steps below:

   1.  Back up your store (both the files and the database). You do need this step in case something goes wrong. Please do not neglect this step because it can cost you hours of work contacting your hosting provider and asking them to recover your store from their server backups.

   2.  In your store's Admin area, click **Updates are available** to go to the "Updates for your version" page.

   3.  Review the available updates and choose the updates you need to apply. If there are both a minor update and a major upgrade available for your store at the same time, you will need to select the tab you require:
       *   To get bugfixes for your current version, use the **Minor update** (**Bug-fixes only**) tab. 
       *   To get both the bug-fixes and the new features, switch to the **Major upgrade** (**Bug-fixes and new features**) tab. 
       
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
    
       *   If your store has addons that do not exist in the marketplace (e.g. you uploaded them via **Upload add-on** button) and you are doing an upgrade/update within the 3rd or 4th digit sequence of the version number, you will be advised to disable these addons, although it is not strictly necessary. If you are doing a major upgrade affecting the 1st or 2nd digit sequence of the version number, you will be told that such addons will be disabled automatically.

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

_Related pages:_

*   [X-Cart Upgrade General Steps](http://devs.x-cart.com/en/misc/x-cart_upgrade_general_steps.html) (X-Cart Devs portal article)
