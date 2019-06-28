---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-16 00:42 +0400'
identifier: ref_pQQ1CLe2
title: Upgrading X-Cart 5 (outdated)
categories:
  - Developer docs
published: false
order: 320
---


## Introduction

The purpose of this article is to describe how X-Cart 5 performs upgrades and give hints about what to do if upgrade fails in the middle of the process.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [General information](#general-information)
*   [Process of store upgrade](#process-of-store-upgrade)
*   [Manual upgrade](#manual-upgrade)

## General information

There are two types of upgrades in X-Cart: **major upgrade** when the second or the third number in version is changed (e.g. upgrade from 5.1.3 to 5.1.4 or from 5.1.4 to 5.2.0) and **minor upgrade** when the fourth number in version is changed (e.g. upgrade from 5.3.2.2 to 5.3.2.5). Major upgrade includes big changes of the core so that interfaces of classes and signatures of methods change. It does not happen during minor upgrade. Consequently, minor upgrade does not require any change in addons, but major one requires compatibility changes.

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
      <td>Bugfixes<br/>New features<br/>Minor API changes</td>
    </tr>
    <tr>
      <td>Free anytime</td>
      <td>Free with active<br/>upgrade subscription</td>
      <td>Free with active<br/>upgrade subscription</td>
    </tr>
  </tbody>
</table>

Also, the second number major upgrade can be done only from the latest version of the branch. In other words, if 5.0.x branch has versions 5.0.10, 5.0.11, 5.0.12, 5.0.13, 5.0.14, then you can upgrade to 5.1 from 5.0.14 version only. The third number major upgrade does not follow this requirement, so you can upgrade a 5.0.10 store to 5.0.14 in one run. It means that if you want to upgrade your store from 5.0.10 to 5.1.0, then you will have two do this in two runs: upgrade from 5.0.10 to 5.0.14 and then from 5.0.14 to 5.1.0.

In addition to core upgrades, there are also **addon updates**. For instance, there is a bug in the 3rd party addon Wishlist; the addon developers fix the bug and re-upload the addon to the X-Cart App Store. In this case all Wishlist addon users will be prompted to update this addon even though the core version has remained the same.

The general idea of any upgrade/update is to overwrite the existing files of the core/addon. That simple. However, sometimes X-Cart needs to synchronize data or do some utility work. Such work is done by **upgrade hooks**. There are three types of upgrade hooks:

*   **pre-upgrade hooks** are run before the files have been overwritten. These hooks work using the code of the old core.
*   **post-upgrade hooks** are run after the files have been overwritten, but before the cache rebuild process has started. They are used for the preparation of the store for the cache rebuild process. They work using the code of the old core.
*   **post-rebuild hooks** are run after the very first cache rebuild process has finished. They work using the code of the new core.

Upgrade hooks of the core are located in the `<X-Cart 5>/upgrade/` folder. If you want to find upgrade hooks for version 5.1.3, then you should go to the `<X-Cart 5>/upgrade/5.1/3/` directory. There you can find three types of files:

*   **pre_upgrade.php** contains pre-upgrade hooks;
*   **post_upgrade.php **contains post-upgrade hooks;
*   **post_rebuild.php** contains post-rebuild hooks.

Upgrade hooks may exist in the addons as well, if the addon needs to synchronize data between its own versions. Addon upgrade hooks can be found in the `<X-Cart 5>/classes/Module/<DEV-ID>/<MODULE-ID>/upgrade/` folders; for example `<X-Cart 5>/classes/XLite/Module/XC/ProductComparison/upgrade/`.

## Process of store upgrade

Once per day, each store checks the X-Cart App Store for updates. The response from the X-Cart App Store is cached for a day. If you need to delete this cache, you should open the `admin.php?target=addons_list_marketplace&action=clear_cache` link.

If there is any kind of update available, the merchant will see the **Updates are available** link in the header of admin area.
![]({{site.baseurl}}/attachments/7505469/7602688.png)

Click this link and proceed to upgrade. You can see possible warnings before upgrade.

*   If your store does not have any license (free or paid), you will be prompted to buy one

![]({{site.baseurl}}/attachments/7505469/7602689.png)

*   If your store has addons that do not exist in the X-Cart App Store (e.g. you uploaded them via the **Upload add-on** button), and you are doing a **minor upgrade**, you will be prompted to disable them, although it is not necessary![]({{site.baseurl}}/attachments/7505469/7602690.png)
*   If your store has addons that do not exist in the X-Cart App Store (e.g. you uploaded them via the **Upload add-on** button), and you are doing a **major upgrade,** you will be told that **they** **will be disabled automatically**![]({{site.baseurl}}/attachments/7505469/7602691.png)

After clicking the **Continue** button, X-Cart will start downloading upgrade packs for the core and addons.

NOTE: if this step times out because of bad connection, you can try to adjust the REQUEST_LONG_TTL constant in the `<X-Cart 5>/var/run/classes/XLite/Core/Marketplace.php` script, so that X-Cart would be able to download all files in time.

Once all upgrade packs are downloaded, you will be prompted to create a backup and there will be **Install updates** button. Clicking it will run the whole upgrade process that cannot be interrupted.

![]({{site.baseurl}}/attachments/7505469/7602771.png)

At this last step, you can also receive several types of warnings:

*   If your store has any modified files, you will get warning like this

![]({{site.baseurl}}/attachments/7505469/7602770.png)

*   If your store has any addons that have upgrade hooks, and these addons are disabled (not active), you will be prompted to either activate those addons or completely remove them. An addon must be active for upgrade hooks to run correctly, and this is the reason why disabled addons with hooks must be either enabled or deleted.
    ![]({{site.baseurl}}/attachments/7505469/7602769.png)

After clicking **Install updates** button, there will be the process as follows:

1.  Pre-upgrade hooks are run. If there is upgrade from 5.0.14 to 5.1.3, then all upgrade hooks - 5.1.0, 5.1.1, 5.1.2, 5.1.3 - will be run during this step. In addition to that, all addon upgrade hooks will be run at this stage;
2.  Overwriting of files happens: new files are added, existing ones are overwritten, non-existent ones in new version are deleted;
3.  Post-upgrade hooks are run. The same process as with pre-upgrade hooks;
4.  Cache rebuild process;
5.  Post-rebuild hooks are run. The same process as with pre-upgrade and post-upgrade hooks;
6.  Update of language variables happens. Script will take all install.yaml files of addons + yaml file with language variables of the core (`<X-Cart 5>/sql/install.yaml`) and put language variables from these files to the database;
7.  Upgrade is finished.

## Manual upgrade

We do our best to provide smooth minor and major upgrade capabilities, but sometimes something goes wrong and you need to deal with it. If upgrade was interrupted, you can continue it manually.

First thing to do is to find out what step your upgrade stopped at. Look at the bottom of the `<X-Cart 5>/var/log/upgrade.log` file. It will show you what upgrade hooks were run and what files were overwritten. If not all post-rebuild hooks were run, it means that upgrade broke during the 5th step. If not all files were overwritten, then the process stopped at 2nd step. You need to understand the problem step, repeat it manually and then run all next steps manually.

Below the description of full manual upgrade:

1.  How to get new files? First of all, you should check `<X-Cart 5>/var/tmp` folder and all new files should be there. If this folder is empty, you should install the X-Cart 5 version you are upgrading to on the same server (you can freely get it on [http://www.x-cart.com)](http://www.x-cart.com)) and activate all paid add-ons using your license keys. After that, this installation will have all needed files.
2.  You need to run all pre-upgrade hooks (the ones of the core and the addons). The code example of how to run one hook is below: 

    ```php
    <?php
    require_once (dirname(__FILE__) . DIRECTORY_SEPARATOR . 'top.inc.php');

    $func = include 'upgrade/5.1/0/pre_upgrade.php';
    $func();

    ?>
    ```

3.  Overwrite all files manually. You can put files from the new version distributive pack to your store's folder.

4.  Run all post-upgrade hooks. The code will be the same as in the point 2, but it will point to the post-upgrade hooks file.

5.  Rebuild cache.

6.  Run all post-rebuild hooks using the same code mentioned in points 2 and 4.

7.  Run hooks for updating language variables. The code example for one hook is below: 

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

8.  Upgrade is finished.

_Related pages:_

*   [X-Cart Upgrade General Steps](http://devs.x-cart.com/en/misc/x-cart_upgrade_general_steps.html)
*   [Upgrade hooks](http://devs.x-cart.com/en/misc/upgrade_hooks.html)
