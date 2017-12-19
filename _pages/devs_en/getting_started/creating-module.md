---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-04 17:49 +0400'
identifier: ref_TBDhOF2h
title: Creating module
order: 100
published: true
redirect_from:
  - /getting_started/step_1_-_creating_simplest_module.html
---
## Introduction

This chapter describes the process of creating module for X-Cart 5.

{% toc Table of Contents %}

## Choosing identifiers

Before you get started, you need to choose two identifiers:
*   developer ID 
*   module ID

Your **developer ID** will tell other programmers that the module is written by you. It is like your name as a developer in X-Cart repository of modules. For instance, all X-Cart modules have developer IDs **CDev** or **XC**.

**Module ID** is basically the name of your module in the system, e.g. **AustraliaPost** or **ProductFilter**.

The identifiers must begin with an uppercase letter and may consist of a maximum of 64 alphanumeric characters.

## Manual module creation

1.  Create `<X-Cart>/classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/` directory inside your installation. Of course, you should use your own developer and module IDs instead of `<YOUR-DEVELOPER-ID>` and `<YOUR-MODULE-ID>` parts of the path.
2.  Create `Main.php` file inside `<X-Cart>/classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/` folder with the following content: 

    ```php
    <?php
    namespace XLite\Module\<YOUR-DEVELOPER-ID>\<YOUR-MODULE-ID>;

    abstract class Main extends \XLite\Module\AModule
    {
        /**
         * Author name
         *
         * @return string
         */
        public static function getAuthorName()
        {
            return 'Your name';
        }

        /**
         * Module name
         *
         * @return string
         */
        public static function getModuleName()
        {
            return 'Your module name';
        }

        /**
         * Get module major version
         *
         * @return string
         */
        public static function getMajorVersion()
        {
            return '5.3';
        }

        /**
         * Module version
         *
         * @return string
         */
        public static function getMinorVersion()
        {
            return 0;
        }

        /**
         * Module description
         *
         * @return string
         */
        public static function getDescription()
        {
            return 'Your module description';
        }
    }
    ```

    Change `namespace` section in this file and replace `<YOUR-DEVELOPER-ID>` and `<YOUR-MODULE-ID>` placeholders with your actual developer and module IDs.
3.  Define the `getDescription()`, `getModuleName()`, `getAuthorName()` methods so they would return your own module description, module name and module author.
4.  Re-deploy your store via the admin area of your X-Cart:
![re-deploy-store.png]({{site.baseurl}}/attachments/ref_TBDhOF2h/re-deploy-store.png)
Or just remove `<X-Cart>/var/run` directory and refresh any page.
5.  After the re-deployment process is over, your module will show up among the installed modules in your store's admin area.

![module-demo.png]({{site.baseurl}}/attachments/ref_TBDhOF2h/module-demo.png)


However, this module is not activated yet and you need to enable it, so it would start working.

You can download the example of the simplest X-Cart module here:
[https://www.dropbox.com/s/lb9l409kxufp31q/XCExample-ModuleDemo-v5_3_0.tar](https://www.dropbox.com/s/lb9l409kxufp31q/XCExample-ModuleDemo-v5_3_0.tar)

## Module creation via SDK

1.  {% link "Obtain X-Cart SDK" ref_HvrXVNvJ#obtaining-x-cart-sdk %}
2.  Call {% link "create module macro" ref_HvrXVNvJ#creating-module %} with your developer and module IDs

## Packing up your module

If you want to create the module's distributive pack, you need to:
1.  Edit your `<X-Cart>/etc/config.php` file and define the `developer_mode` option as `On` there.
2.  After that you will see the Pack it link near each module in your Extensions > Installed modules section as shown on the snapshot below:
    ![pack-it-link.png]({{site.baseurl}}/attachments/ref_TBDhOF2h/pack-it-link.png)
3.  Clicking **Pack it** link will generate your module's distribution pack.
