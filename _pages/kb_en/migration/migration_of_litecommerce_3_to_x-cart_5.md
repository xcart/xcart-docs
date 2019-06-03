---
lang: en
layout: article_with_sidebar
updated_at: '2017-02-27 17:29 +0400'
identifier: ref_icEFLRUp
title: Migration from Litecommerce 3 to X-Cart 5
order: 50
published: true
version: X-Cart 5.0 - 5.1
redirect_from:
  - /general_setup/migration_of_litecommerce_3_to_x-cart_5.html
  - /general_setup/migration/migration_of_litecommerce_3_to_x-cart_5.html
---

## Introduction

This document describes the process of upgrade Litecommerce 3 to X-Cart 5.

*   [Introduction](#introduction)
*   [Step 1\. Install the module Migrate2XCN.](#step-1-install-the-module-migrate2xcn)
*   [Step 2\. Open the Migrate2XCN module settings page and enter your X-Cart 5 license key.](#step-2-open-the-migrate2xcn-module-settings-page-and-enter-your-x-cart-5-license-key)
*   [Step 3\. Change the marketplace URL in the file config.php.](#step-3-change-the-marketplace-url-in-the-file-configphp)
*   [Step 4\. Clear the marketplace cache.](#step-4-clear-the-marketplace-cache)
*   [Step 5\. Upgrade your store.](#step-5-upgrade-your-store)
*   [Step 6\. Activate the license key.](#step-6-activate-the-license-key)
*   [Step 7\. Update your etc/config.php file.](#step-7-update-your-etcconfigphp-file)
*   [FAQ](#faq)
    *   [Error: maximum execution time of 30 seconds exceeded during cache regeneration or upgrade operation.](#error-maximum-execution-time-of-30-seconds-exceeded-during-cache-regeneration-or-upgrade-operation)
    *   [Problem: X-Cart 5 displays only text without design during the upgrade.](#problem-x-cart-5-displays-only-text-without-design-during-the-upgrade)
    *   [Problem: You are seeing inconsistency in design after upgrade.](#problem-you-are-seeing-inconsistency-in-design-after-upgrade)

## Step 1\. Install the module Migrate2XCN.

1.  Download the module **Migrate2XCN** here: [http://www.litecommerce.com/download/migrate](http://www.litecommerce.com/download/migrate)
2.  Open the page 'Manage add-ons' in you admin area (admin.php?target=addons_list_installed)
3.  Click the 'Upload add-on' button and follow the instructions

**** ![]({{site.baseurl}}/attachments/3309570/7602238.png)****

## Step 2\. Open the Migrate2XCN module settings page and enter your X-Cart 5 license key.

Once you have installed the Migrate2XCN module, go to its settings:

**** ![]({{site.baseurl}}/attachments/3309570/7602239.png)****

and insert your X-Cart 5 license key there (you should have received this license key by email from X-Cart team)****
 ![]({{site.baseurl}}/attachments/3309570/7602240.png)****

## Step 3\. Change the marketplace URL in the file config.php.

1.  Open the file `<litecommerce-dir>/etc/config.php` in a text editor

2.  Find out these lines there:

    [marketplace]

    url = "[http://www.litecommerce.com/?q=api/](http://www.litecommerce.com/?q=api/)"

3.  Replace the url option as shown below:

    [marketplace]

    url = "[https://my.x-cart.com/index.php?q=api](https://my.x-cart.com/index.php?q=api)"

## Step 4\. Clear the marketplace cache.

Open the page admin.php?target=addons_list_marketplace&action=clear_cache

**** ![]({{site.baseurl}}/attachments/3309570/7602241.png)****

## Step 5\. Upgrade your store.

After that you will see one of the links ('Updates available' or 'Upgrade available') in the header of the Admin area.

![]({{site.baseurl}}/attachments/3309570/7602242.png)

Click this link and upgrade your Litecommerce 3 store.

![]({{site.baseurl}}/attachments/3309570/7602243.png)

![]({{site.baseurl}}/attachments/3309570/7602244.png)

After that you will see the following message:

![]({{site.baseurl}}/attachments/3309570/7602245.png)

Stock Chart and Wishlist modules are just for example here. You may see other modules during this step as it depends on which modules have been installed in your Litecommerce 3\. At least, the module Migrate2XCN will be displayed there. Do not worry, this is correct behaviour. Click the **Continue** button and follow further upgrade steps.

## Step 6\. Activate the license key.

![]({{site.baseurl}}/attachments/3309570/7602246.png)

![]({{site.baseurl}}/attachments/3309570/7602247.png)

## Step 7\. Update your etc/config.php file.

It is recommended to adjust the config.php file after upgrade.

1.  Create a backup of the `<litecommerce-dir>/etc/config.php` file (e.g. copy this to file config.bak.php)

2.  Copy the file `<litecommerce-dir>/etc/config.default.php` to config.php

3.  Open both the files `<litecommerce-dir>/etc/config.php` and config.bak.php in a text editor.

4.  Copy the contents of the following sections from config.bak.php to `<litecommerce-dir>/etc/config.php` file:

    ```
    [database_details]
    [host_details]
    [installer_details]
    ```

5.  If any other sections in your config.php file have been changed, e.g. [clean_urls], [skin_details], etc, transfer them to the new config.php as well.

## FAQ

### Error: maximum execution time of 30 seconds exceeded during cache regeneration or upgrade operation.

This problem might be caused by a large quantity of installed modules. Try to reload the page or adjust the max_execution_time PHP variable.

### Problem: X-Cart 5 displays only text without design during the upgrade.

Try to reload the pages, it usually happens if there are many installed modules in your LiteCommerce. 

### Problem: You are seeing inconsistency in design after upgrade.

Try to clear the browser's cache.
