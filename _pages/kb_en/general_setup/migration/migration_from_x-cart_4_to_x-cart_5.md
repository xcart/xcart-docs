---
lang: en
layout: article_with_sidebar
updated_at: '2017-02-07 01:54 +0400'
identifier: ref_EntIT03c
title: Migration from X-Cart 4 to X-Cart 5
order: 40
published: false
redirect_from:
  - /general_setup/migration_from_x-cart_4_to_x-cart_5.html
---
## Introduction

This guide describes the process of migration from X-Cart 4 to X-Cart 5\. The migration can be split up into two big steps: **data migration** and **design/custom functionality migration**.

{% note info %}
If you want to migrate your X-Cart 4 store to the brand new **X-Cart 5.3**, you should definitely use the addon [Migration wizard](#migration-wizard) to achieve the best results.
{% endnote %}

## Table of contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Migration Wizard](#migration-wizard)
*   [Manual Data Migration](#manual-data-migration)
    *   [Step 1\. Decide on the Data You Want to Migrate](#step-1-decide-on-the-data-you-want-to-migrate)
    *   [Step 2\. Decide Who is Going to Run the Migration Task](#step-2-decide-who-is-going-to-run-the-migration-task)
        *   [Step 2a. Migrating Data by Yourself](#step-2a-migrating-data-by-yourself)
        *   [Step 2b. Migrating Data with Paid Help](#step-2b-migrating-data-with-paid-help)
*   [Migration of Your Custom Functionality and Design](#migration-of-your-custom-functionality-and-design)
*   [Summary](#summary)

## Migration Wizard

[Migration Wizard](http://market.x-cart.com/addons/migration-wizard.html) is available as a free addon starting from **X-Cart 5.3** and makes the switch from X-Cart 4 to X-Cart 5 much quicker and easier. It transfers _data and settings_, and as a result, you get a working store on a new platform within a few minutes. So afterwards you only have to change the look and feel and make some additional minor settings according to your business.

Also, the wizard checks if the set of features in your new X-Cart 5 store matches the one in your old X-Cart 4 store. If it finds missing tools and integrations, you get a list of X-Cart 5 addons that need to be enabled or purchased.

## Manual Data Migration

This step is needed to transfer the information from the old store to the new X-Cart 5 one. Once you have completed this step, your store will look the same as any other default X-Cart 5 and will behave as a regular X-Cart 5 store. However, the store will contain all the information you transferred, like users, products, categories, etc. So, let us see how you can migrate data.

### Step 1\. Decide on the Data You Want to Migrate

First of all, you need to decide what data you want to transfer from your existing store to the new X-Cart 5 one. The less data you migrate, the easier/cheaper the process will be. The most common case is migrating the product catalog: **products** and **categories**. You may also want to migrate **users** and/or **orders**.

### Step 2\. Decide Who is Going to Complete the Migration Task

Once you decided what data you are going to migrate, you need to decide who will do this task. Basically, there are two options:

*   migrate the data by yourself (cheaper, but you must have tech knowledge to do that);
*   get somebody to help you (more expensive, but you do not need any knowledge in this case).

#### Step 2a. Migrating Data by Yourself

In this case, export the data you require from X-Cart 4, adjust it according to the [X-Cart 5 import format](http://kb.x-cart.com/en/import-export/csv_format_by_x-cart_data_type/), then import it into X-Cart 5.

In order to help you with this task, we designed a special script that generates product CSV in the X-Cart 5 supported format right from X-Cart 4 database. To use this script:

1.  Download the script from X-Cart's github account: [https://github.com/xcart/next-sdk/blob/master/devkit/xcn-export.php](https://github.com/xcart/next-sdk/blob/master/devkit/xcn-export.php)
2.  Put this script into the root of your X-Cart 4 installation.
3.  Define the authorization key in this **xcn-export.php** script. This is a secret key that makes sure that nobody else can access this script. Please change it in the **xcn-export.php** script for security reasons. In order to do that you should find the following piece of code in the **xcn-export.php** script:

    ```php
    // Authorization key
    define('XCN_EXPORT_KEY', 'testsuperkey');
    ```

    and replace **testsuperkey** value with your own one.

4.  Run this script as `http://<your-server>/<x-cart-dir>/xcn-export.php?key=<your-key-defined-in-point-3>` in your browser and get the **products.csv** file for import into X-Cart 5.

5.  Import this file into X-Cart 5.

#### Step 2b. Migrating Data with Paid Help

1.  You can order our migration service and our specialists will complete the whole task for you + you will save money for license exchange. More info here: [http://www.x-cart.com/x-cart-migration.html](http://www.x-cart.com/x-cart-migration.html)
2.  You can use **Cart2Cart** service for data migration: [http://www.shopping-cart-migration.com/index.php?option=com_content&view=article&id=17801](http://www.shopping-cart-migration.com/index.php?option=com_content&view=article&id=17801). We are ready to provide you with a discount code for this service that will allow you to migrate up to 5000 products, 2000 users and 5000 orders free of charge. In case you need such a coupon, please contact us at [http://www.x-cart.com/contact-us.html](http://www.x-cart.com/contact-us.html)

## Migration of Your Custom Functionality and Design

In order to migrate all your preferred features that do not exist in X-Cart 5 as well as migrate the custom layout of your store, you should re-implement those changes in X-Cart 5 from scratch. We hope our developer documentation will turn out helpful to you in this task.

If you do not know who can perform such a task for you, feel free to request a free quote from us here: [http://www.x-cart.com/contact-us.html](http://www.x-cart.com/contact-us.html)

## Summary

Once the migration of your data and custom functionality/design has been finished, you will be ready to launch your X-Cart 5 store.


_Related pages:_

*   {% link "XC4 to XC5 Migration Wizard" ref_enOvcLbO %}
