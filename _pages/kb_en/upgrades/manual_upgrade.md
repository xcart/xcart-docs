---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-17 12:31 +0400'
identifier: ref_2QKUHnQv
title: Manual Store Upgrade
order: 150
published: true
redirect_from:
  - /general_setup/upgrading_x-cart_5/manual_upgrade.html
---
## Manual upgrade

We do our best to provide smooth minor and major upgrade capabilities, but it may be that something goes wrong and you need to deal with it. If an upgrade was interrupted, you can continue it manually.

First thing to do is to find out what step your upgrade has stopped at. Look at the bottom of the `<X-Cart 5>/var/log/upgrade.log` file. It will show you what upgrade hooks were run and what files were overwritten. If not all the post-rebuild hooks were run, it means that the upgrade process broke during the 5th step. If not all the files were overwritten, then the process stopped at the 2nd step. You need to locate the step where the problem occurred, re-do this step manually, and then run all the following steps manually.

Below we have provided a description of a full manual upgrade:

1.  How to get new files? First of all, check the folder `<X-Cart 5>/var/tmp`. All the new files should be there. If this folder is empty, you should install the X-Cart 5 version you are upgrading to on the same server (you can freely get it on [http://www.x-cart.com/](http://www.x-cart.com)) and activate all the paid add-ons using your license keys. After that, this installation will have all the needed files.
2.  You need to run all the pre-upgrade hooks (those of the core and the addons). Provided below is a code example of how to run a hook: 

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
