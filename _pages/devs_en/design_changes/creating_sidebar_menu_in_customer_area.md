---
title: Creating sidebar menu in customer area
identifier: ref_Z0IrS8PW
updated_at: 2016-01-21 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes how you can create your own sidebar menu in customer store-front via module. This is a menu similar to **Categories** or **New** **Arrivals** ones you can see in default package.

![]({{site.baseurl}}/attachments/7505759/7602842.png)

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Step 1\. Create an empty module](#step-1-create-an-empty-module)
*   [Step 2\. Create viewer class for your sidebar](#step-2-create-viewer-class-for-your-sidebar)
*   [Step 3\. Create template](#step-3-create-template)
*   [Step 4\. Rebuild the cache and check the results.](#step-4-rebuild-the-cache-and-check-the-results)
*   [Module pack](#module-pack)

## Step 1\. Create an empty module

You can simply do it according to {% link "the guide" ref_G2mlgckf %}. For the sake of example, I have created a module with developer ID **Tony **and module ID **SidebarMenu**, so it will be sitting in the `<X-Cart 5>/XLite/Module/Tony/SidebarMenu/` folder.

Rebuild the cache and this module will appear in the **Extensions > Installed modules** section in your admin area. Enable this module.

## Step 2\. Create viewer class for your sidebar 

1.  Create `View` folder in your module.
2.  Put `MySidebar.php` script into this folder with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\SidebarMenu\View;

    /**
     * @ListChild (list="sidebar.single", zone="customer", weight="500")
     * @ListChild (list="sidebar.first", zone="customer", weight="500")
     */

    class MySidebar extends \XLite\View\SideBarBox
    {
        protected function getHead()
        {
            return 'My header';
        }

        protected function getDir()
        {
            return 'modules/Tony/SidebarMenu/menu';
        }
    }
    ```

Let's walk through each line of its code:

1.  `namespace XLite\Module\Tony\SidebarMenu\View;` this defines a namespace of the class and you must use your own developer and module IDs here. I used **Tony** and **SidebarMenu, **because they are IDs of my module.

2.  construction with `@ListChild (list="sidebar.first", zone="customer", weight="500")` is used to assign the sidebar box into the area where all other sidebar boxes are located. You can change its weight to move it up or down in the left-hand side menu. This section must start with `/**` and finish with `*/ `.
3.  `class MySidebar extends \XLite\View\SideBarBox` tells that we are going to use typical sidebar box as a template for our own menu.

4.  method `getHead`() defines the header of the menu
5.  method `getDir`() defines the folder where the template - that defines the look of the sidebar menu - is located. In my case, this folder is `<X-Cart>/skins/default/en/modules/Tony/SidebarMenu/menu/`. Again, you must use your own developer and module IDs in this path.

## Step 3\. Create template

Create the template `<X-Cart 5>/skins/default/en/modules/Tony/SidebarMenu/menu/body.tpl` mentioned above. Its content will be what you want to display in the sidebar box, e.g.: 

```php
Hello world!
```

## Step 4\. Rebuild the cache and check the results

If you have done everything right, you will see the following results in customer store-front:

![]({{site.baseurl}}/attachments/7505759/7602844.png)

## Module pack

You can download this module pack from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-SidebarMenu-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-SidebarMenu-v5_1_0.tar)

You can download this module pack for versions 5.2.x from here: [Tony-SidebarMenu-v5_2_0.tar](attachments/7505759/9438471.tar)

## Attachments:

* [sidebar-menus.png]({{site.baseurl}}/attachments/7505759/7602842.png) (image/png)
* [custom-sidebar-in-storefront]({{site.baseurl}}/attachments/7505759/7602843) (application/octet-stream)
* [custom-sidebar-in-storefront.png]({{site.baseurl}}/attachments/7505759/7602844.png) (image/png)
* [Tony-SidebarMenu-v5_2_0.tar]({{site.baseurl}}/attachments/7505759/9438471.tar) (application/x-tar)