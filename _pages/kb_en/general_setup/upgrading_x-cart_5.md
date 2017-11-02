---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-18 20:53 +0400'
identifier: ref_pQQ1CLe1
title: Upgrading X-Cart 5
order: 320
published: true
---
## Introduction

This article gives general information on X-Cart 5 upgrades and provides hints about what to do if an upgrade fails in the middle of the process.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Upgrades and updates](#upgrades_and_updates)
*   [Upgrade waves](#upgrade-waves) 
*   [Availability of upgrades for different versions](#availability-of-upgrades-for-different-versions)
*   [Upgrade hooks](#upgrade-hooks)
*   [Before you upgrade: back up your store](#before-you-upgrade-back-up-your-store)
*   [Store upgrade process](#store-upgrade-process)
*   [Manual upgrade](#manual-upgrade)

## Upgrades and updates

Since the adoption by X-Cart of the [four-sequence versioning scheme](http://devs.x-cart.com/en/misc/x-cart_versions.html#x-cart-53x-versioning), in which the first two sequences of digits in the version identifier represent the major version, the third sequence - the minor version, and the fourth sequence - the build version (bugfix release), we had to change X-Cart's upgrade system a little bit to accomodate the changes. As a result, X-Cart now uses two types of version upgrades:

   * **major upgrade** - an upgrade resulting in the increase of the first three sequences of digits in the version number (major/minor version numbers); for example, an upgrade from 5.0.13 to 5.1.3, or from 5.2.16 to 5.2.20, or from 5.3.1.6 to 5.3.2.0.

   * **minor update** - an update resulting in the increase of the fourth sequence (build version number); for example, an update involving the change of the version number from 5.3.1.3 to 5.3.1.6.

The type of upgrade reflects the significance of changes that the upgrade implements. A major upgrade provides both new features and bugfixes. A minor update provide only bugfixes. The new features implemented by a major upgrade rely on major changes of the core, which means that the interfaces of classes and the signatures of methods change. It does not happen during a minor update. Consequently, a minor update does not require any change in the modules, whereas a major upgrade does require module compatibility changes.

<table class="ui celled padded compact small table">
  <thead>
  	<tr>
      <th><strong>4th digit increases<br/>5.3.0.3 to 5.3.0.5</strong></th>
      <th><strong>3d digit increases<br/>5.3.0.3 to 5.3.1.0</strong></th>
      <th><strong>2nd digit increases<br/>5.3.0.3 to 5.4.0.0</strong></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Bugfixes only</td>
      <td>Bugfixes<br/>New features<br/>Minor API changes</td>
      <td>Bugfixes<br/>New features<br/>Major API changes</td>
    </tr>
    <tr>
      <td>Free anytime</td>
      <td>Free with active<br/>upgrade subscription</td>
      <td>Free with active<br/>upgrade subscription</td>
    </tr>
  </tbody>
</table>

If a major upgrade and a minor update are available to a store at the same time, the store administrator can choose which one they want to apply. As a result of a minor update, the store will be updated to get all the fixes of the latest available bugfix release within the store's version branch. As a result of a major upgrade, the store will be upgraded to the latest version with all the new features and bugfixes available to the store's license.  

## Upgrade waves
Once a new X-Cart version is released, upgrades to this version become available to existing X-Cart clients in two "waves". By implementing the "waves", we're ensuring more thorough testing of the upgrade process.

The first wave is the so-called **Developer wave**; this wave becomes available at the time of official X-Cart release announcement and is intended for X-Cart developers/early adopters. This wave allows 3rd party module developers to adapt their modules to the new X-Cart core; it also lets tech-savvy X-Cart users to try the upgrade and make sure it does not cause issues in their specific store environment.

The second wave is the **Merchant wave**; this wave typically becomes available in 2-7 days following the official release announcement and is intented for all X-Cart clients. 

The Developer wave provides access to new X-Cart features earlier. However, upgrading in the Developer wave may be recommended only for users prepared to deal with upgrade issues, should any such issues arise. 

By default, all new X-Cart installations are configured to get upgrades in the Merchant wave. If you need access to new X-Cart releases in the Developer wave, you will want to switch your **Upgrade access level** to  Developer in the Upgrade options section of your store's Admin area (**System settings** > **Environment**).

## Availability of upgrades for different versions
A major upgrade involving the change of the second sequence in the version number can be done only from the latest version of the branch. In other words, if the 5.0.x branch consists of the versions 5.0.10, 5.0.11, 5.0.12, 5.0.13, 5.0.14, then the only version number from which you can upgrade to 5.1 is 5.0.14. Major upgrades involving the change of the third sequence in the version number do not follow this requirement, which means you can upgrade a 5.0.10 store to 5.0.14 in one run. To upgrade a store from 5.0.10 to 5.1.0, a two-step upgrade will be required: first, an upgrade from 5.0.10 to 5.0.14, and then an upgrade from 5.0.14 to 5.1.0.

## Upgrade hooks
The general idea of any upgrade/update is to overwrite the existing files of the core/module. That simple. However, sometimes X-Cart needs to synchronize data or do some utility work. Such work is done by **upgrade hooks**. There are three types of upgrade hooks:

*   **pre-upgrade hooks** are run before the files have been overwritten. These hooks work using the code of the old core.
*   **post-upgrade hooks** are run after the files have been overwritten, but before the cache rebuild process has started. They are used for the preparation of the store for the cache rebuild process. They work using the code of the old core.
*   **post-rebuild hooks** are run after the very first cache rebuild process has finished. They work using the code of the new core.

Upgrade hooks of the core are located in the folder `<X-Cart 5>/upgrade/`. For example, upgrade hooks for version 5.1.3 can be found in the folder `<X-Cart 5>/upgrade/5.1/3/`. There you will find three types of files:

*   **pre_upgrade.php** contains pre-upgrade hooks;
*   **post_upgrade.php **contains post-upgrade hooks;
*   **post_rebuild.php** contains post-rebuild hooks.

Upgrade hooks may exist in the modules as well, if the module needs to synchronize data between its own versions. Module upgrade hooks can be found in the `<X-Cart 5>/classes/Module/<DEV-ID>/<MODULE-ID>/upgrade/` folders; for example `<X-Cart 5>/classes/XLite/Module/XC/ProductComparison/upgrade/`.

## Before you upgrade: back up your store
Installing an update/upgrade is a serious task which requires some preparation. At the very least, you should create a backup of your store (Be sure to back up both the files and the database!)

In addition, we strongly recommend that before installing an update or an upgrade on your live store, you should create a dev copy of your store and try installing the update/upgrade on that copy. Only if the update/upgrade installation goes smoothly, and after you have made sure the store's dev copy continues to work as expected after the update/upgrade process has been completed should you attempt updating/upgrading your live store.

For details on creating your store's dev copy and restoring the store from backup, see {% link 'Moving X-Cart to another location' ref_6oFmUXC7 %}

## Store upgrade process
Once per day, each X-Cart store checks the Marketplace for updates. The response from the Marketplace is cached for a day. If you need to delete this cache, open the link `admin.php?target=addons_list_marketplace&action=clear_cache`.

If there is any kind of update/upgrade available, there will be an **Updates are available** link in the header of the Admin area:
![1_updates_available.png]({{site.baseurl}}/attachments/ref_9raTXZPN/1_updates_available.png)

Also, there will be a notification of available updates when clicking the bell icon:
![1_updates_available1.png]({{site.baseurl}}/attachments/ref_9raTXZPN/1_updates_available1.png)

Starting with X-Cart 5.3.2.4, the color of the **Updates are available** link background in the header may be either green or orange. The orange color signifies that only a feature-release is available. The green color, like in the screenshot below, signifies that a bug-fix release is available (or both a bug-fix release and a feature-release are available).
![xc5_upgrades_green_available.png]({{site.baseurl}}/attachments/ref_pQQ1CLe1/xc5_upgrades_green_available.png)

Note that, in X-Cart versions prior to 5.3.2.4, the **Updates are available** link in the header always shows against an orange background, regardless of the nature of available updates.

To check what updates are available, click on any of the "Updates are available" links. You will see the "Updates for your version" page showing the available updates:
![2_4yourversion0.png]({{site.baseurl}}/attachments/ref_9raTXZPN/2_4yourversion0.png)

Note the page tabs: 

   *   The **Minor update** tab (named **Bug-fixes only** in X-Cart versions prior to 5.3.2.4) shows the available bug-fix releases of the core and modules:

       (X-Cart 5.3.2.4 and later)
       ![xc5_upgrades_minor.png]({{site.baseurl}}/attachments/ref_pQQ1CLe1/xc5_upgrades_minor.png)
      
       (X-Cart versions prior to 5.3.2.4)
       ![2_4yourversion2.png]({{site.baseurl}}/attachments/ref_9raTXZPN/2_4yourversion2.png)

   *   The **Major upgrade** tab (named **Bug-fixes and new features** in X-Cart versions prior to 5.3.2.4) shows the available feature-releases of the core and modules:
       
       (X-Cart 5.3.2.4 and later)
       ![xc5_upgrades_major.png]({{site.baseurl}}/attachments/ref_pQQ1CLe1/xc5_upgrades_major.png)

       (X-Cart versions prior to 5.3.2.4)
       ![2_4yourversion1.png]({{site.baseurl}}/attachments/ref_9raTXZPN/2_4yourversion1.png)

Also note the **Advanced mode** link allowing you to install just some specific updates/upgrades:
       ![xc5_upgrades_advanced_mode.png]({{site.baseurl}}/attachments/ref_9raTXZPN/xc5_upgrades_advanced_mode.png)


**To update/upgrade your X-Cart store**, follow the steps below:

   1.  Back up your store (both the files and the database). You do need this step in case something goes wrong. Please do not neglect this step because it can cost you hours of work contacting your hosting provider and asking them to recover your store from their server backup.

   2.  In your store's Admin area, click **Updates are available** to go to the "Updates for your version" page.

   3.  Review the available updates and choose the updates you need to apply. If there are both a minor update and a major upgrade available for your store at the same time, you will need to select the tab you require:
       *   To get bugfixes for your version, use the **Minor update** (**Bug-fixes only**) tab. 
       *   To get both the bug-fixes and the new features, switch to the **Major upgrade** (**Bug-fixes and new features**) tab. 
       
       If you do not want to do the global update/upgrade on your store including all the updates/upgrades you see listed on the tab you have open, follow the **Advanced mode** link to choose the specific update/upgrade components that you want to be installed. 
       ![xc5_upgrades_advanced_mode.png]({{site.baseurl}}/attachments/ref_9raTXZPN/xc5_upgrades_advanced_mode.png)

       Please be warned, however, that proper operation of the store site after an update/upgrade is not guaranteed if you choose to install not the entire update/upgrade, but only some of the components. Use the selective upgrade feature (Advanced mode) at your own risk and only if you know exactly what you are doing.
       
   4.  Scroll down the page to the bottom of the list of updates. There you will see the **Install updates** button. Click on this button to proceed with installing the selected update/upgrade components.
       ![3_install_updates.png]({{site.baseurl}}/attachments/ref_9raTXZPN/3_install_updates.png)

   5.  After the **Install updates** button has been clicked upon, the page will be reloaded prompting you to confirm your selection of upgrade/update components. There will be a title "These components will be updated" and a list of components; for each component, you will be able to see the current version and the version to which it will be updated:
       ![4_components1.png]({{site.baseurl}}/attachments/ref_9raTXZPN/4_components1.png)

       To continue, scroll down the page to the bottom of the list and click the **Continue** button:
       ![4_components2.png]({{site.baseurl}}/attachments/ref_9raTXZPN/4_components2.png)

       Note that updates/upgrades are only available to X-Cart stores with an activated license key. If you are using an X-Cart trial copy without any license key activated (free or paid), you will not be able to continue any furter than this step. There will be a message stating the problem with your license:
       ![4_licensekey.png]({{site.baseurl}}/attachments/ref_9raTXZPN/4_licensekey.png)
       
       If you see a message like that, you need to at least activate a free license, or purchase and activate a paid license. Once you do so, the problem will be resolved, and next time you attempt an update/upgrade, the **Continue** button will be available.
    
   6.  Clicking the **Continue** button launches the downloading of all the necessary update/upgrade packs for the core and modules. 
        ![5_downl.png]({{site.baseurl}}/attachments/ref_9raTXZPN/5_downl.png)
       
        The downloaded updates/upgrades archives will be unpacked:
        ![6_unpacking.png]({{site.baseurl}}/attachments/ref_9raTXZPN/6_unpacking.png)
       
        ...and checked for integrity:
        ![7_checking_integrity.png]({{site.baseurl}}/attachments/ref_9raTXZPN/7_checking_integrity.png)

        NOTE: If this step times out because of bad connection, you can try to adjust the REQUEST_LONG_TTL constant in the `<X-Cart 5>/var/run/classes/XLite/Core/Marketplace.php` script so that X-Cart would be able to download all the files in time.

   7.  Once all the upgrade packs have been downloaded, you will be provided with a list of all the downloaded updates and prompted to confirm that you have created a backup.

       At this last step, you may receive several types of warnings:

       *   If your store has any modules that have upgrade hooks, and these modules are disabled (not active), you will be prompted to either activate such modules or completely remove them. A module must be active in order to correctly run the upgrade hooks, and this is the reason why the module must be either enabled or deleted.
           ![8_enable_uninstall.png]({{site.baseurl}}/attachments/ref_9raTXZPN/8_enable_uninstall.png)
           
           Starting with X-Cart version 5.3.20, we only provide a prompt to remove such modules; however, there is a link to the list of disabled modules where you can enable them if you choose to do so. 
    
       *   If your store has modules that do not exist in the marketplace (e.g. you uploaded them via **Upload add-on** button) and you are doing an upgrade/update within the 3rd or 4th digit sequence of the version number, you will be advised to disable these modules, although it is not strictly necessary. If you are doing a major upgrade affecting the 1st or 2nd digit sequence of the version number, you will be told that such modules will be disabled automatically.

        *   If your store has any modified files, you will get a warning like this:
            ![]({{site.baseurl}}/attachments/ref_9raTXZPN/8_modified_files.png)
            
            You will be able to choose whether you want the modified files to be replaced in the process of upgrade with their non-modified versions, or to keep the modified files (The latter option may cause your site to crash, so clearly you must understand what you are doing.)

   8.  Click the **Install updates** button to run the installation of the update/upgrade. Note that the button becomes active only after you have confirmed the creation of a backup.
        ![9_iconfirm_backup.png]({{site.baseurl}}/attachments/ref_9raTXZPN/9_iconfirm_backup.png)
        
       After the **Install updates** button has been clicked, the process continues as follows:

       1.  Pre-upgrade hooks are run. If the upgrade is going from 5.0.14 to 5.1.3, then all the upgrade hooks - 5.1.0, 5.1.1, 5.1.2, 5.1.3 - will be run during this step. In addition to that, all the modules' upgrade hooks will be run at this stage;

       2.  Overwriting of files happens: new files are added, existing ones are overwritten, non-existent ones in new version are deleted;

       3.  Post-upgrade hooks are run. The same process as with pre-upgrade hooks;

       4.  Cache rebuild process;

       5.  Post-rebuild hooks are run. The same process as with pre-upgrade and post-upgrade hooks;

       6.  Update of language variables happens. Script will take all install.yaml files of modules + yaml file with language variables of the core (`<X-Cart 5>/sql/install.yaml`) and put the language variables from these files to the database.
       

       On the screen, you may see steps like the following:
       
       Deploying:
       ![10_deploying.png]({{site.baseurl}}/attachments/ref_9raTXZPN/10_deploying.png)

       Installing updates:
       ![10_installing_updates.png]({{site.baseurl}}/attachments/ref_9raTXZPN/10_installing_updates.png)

   9.  Once the installation is completed, you get a screen saying "The upgrade is completed. Please do not close this page...":
       ![11_completed.png]({{site.baseurl}}/attachments/ref_9raTXZPN/11_completed.png)
       
       On this screen, you get a list of all the updated components:
       ![11_completed3.png]({{site.baseurl}}/attachments/ref_9raTXZPN/11_completed3.png)
       
       ...and a link to view the update log:
       ![11_completed4.png]({{site.baseurl}}/attachments/ref_9raTXZPN/11_completed4.png)
       
   10.  Check that your store looks and functions correctly after the upgrade. In case of problems, use the hard/soft reset links to try and find out what is wrong, or recover your store from backup.
         ![11_completed2.png]({{site.baseurl}}/attachments/ref_9raTXZPN/11_completed2.png)
    
   11. If the page provides any kind of "upgrade notes" (like in the screenshot below), be sure to follow through with the recommendations provided therein.
        ![11_completed1.png]({{site.baseurl}}/attachments/ref_9raTXZPN/11_completed1.png)


## Manual upgrade

We do our best to provide smooth minor and major upgrade capabilities, but sometimes something goes wrong and you need to deal with it. If an upgrade was interrupted, you can continue it manually.

First thing to do is to find out what step your upgrade stopped at. Look at the bottom of the `<X-Cart 5>/var/log/upgrade.log` file. It will show you what upgrade hooks were run and what files were overwritten. If not all the post-rebuild hooks were run, it means that the upgrade process broke during the 5th step. If not all the files were overwritten, then the process stopped at the 2nd step. You need to locate the problem step, re-do this step manually, and then run all the following steps manually.

Below we have provided a description of a full manual upgrade:

1.  How to get new files? First of all, check the folder `<X-Cart 5>/var/tmp`, and all the new files should be there. If this folder is empty, you should install the X-Cart 5 version you are upgrading to on the same server (you can freely get it on [http://www.x-cart.com)](http://www.x-cart.com)) and activate all the paid add-ons using your license keys. After that, this installation will have all the needed files.
2.  You need to run all the pre-upgrade hooks (core's and modules'). The code example of how to run one hook is below: 

    ```php
    <?php
    require_once (dirname(__FILE__) . DIRECTORY_SEPARATOR . 'top.inc.php');

    $func = include 'upgrade/5.1/0/pre_upgrade.php';
    $func();

    ?>
    ```

3.  Overwrite all the files manually. You can put the files from the new version distribution pack to your store's folder.

4.  Run all the post-upgrade hooks. The code should be the same as the code you used at step 2, but it should point to the post-upgrade hooks file.

5.  Rebuild cache.

6.  Run all the post-rebuild hooks using the same code mentioned for steps 2 and 4.

7.  Run the hooks for updating language variables. The code example for one hook is below: 

    ```php
    <?php
        require_once (dirname(__FILE__) . DIRECTORY_SEPARATOR . 'top.inc.php');

    	// core yaml file
        $yamlFile = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'sql' . DIRECTORY_SEPARATOR . 'xlite_data.yaml';
        \XLite\Core\Translation::getInstance()->loadLabelsFromYaml($yamlFile);

    	// module yaml file (example of one yaml file, you need to run all of them)
    	$yamlFile = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'classes' . DIRECTORY_SEPARATOR . 'XLite' . DIRECTORY_SEPARATOR . 'Module' . DIRECTORY_SEPARATOR . 'XC' . DIRECTORY_SEPARATOR . 'ProductComparison' . DIRECTORY_SEPARATOR . 'install.yaml';
        \XLite\Core\Translation::getInstance()->loadLabelsFromYaml($yamlFile);

        \XLite\Core\Translation::getInstance()->reset();
    ?>
    ```

This completes the upgrade process.


_Related pages:_

*   [X-Cart Upgrade General Steps](http://devs.x-cart.com/en/misc/x-cart_upgrade_general_steps.html)
*   [Upgrade hooks](http://devs.x-cart.com/en/misc/upgrade_hooks.html)
