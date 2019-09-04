---
lang: en
layout: article_with_sidebar
updated_at: '2014-12-18 00:00'
title: Creating new page
identifier: ref_0VgqyxB8
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---

## Introduction

This article describes how developers can create a new page in X-Cart. For instance, we want to create a page in admin area (`admin.php?target=tony_custom`) that will show some specific information. This guide explains how to achieve this task.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Before get started](#before-get-started)
*   [Creating page in admin area](#creating-page-in-admin-area)
*   [Creating page via macro](#creating-page-via-macro)
*   [Creating page in customer area](#creating-page-in-customer-area)
*   [Module pack](#module-pack)

## Before get started

First thing to do is to {% link "create an empty module" ref_G2mlgckf %}. We are creating a module with developer ID **Tony** and module ID **PageDemo**.

## Creating page in admin area

For the sake of example, our task is to create the page which will be available at `admin.php?target=tony_custom` address and will display **Hello world!** text.

1.  Create new controller class. Since we want our page to be opened at `admin.php?target=tony_custom`, the controller class must be named **TonyCustom**. If you need more info about how controllers work in X-Cart, look at {% link "Controllers" ref_hkVaxgds %} article.

2.  We create the `classes/XLite/Module/Tony/PageDemo/Controller/Admin/TonyCustom.php` file with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\PageDemo\Controller\Admin;

    class TonyCustom extends \XLite\Controller\Admin\AAdmin
    {

    }
    ```

    As you can see, it is pretty empty, but since no data should be processed from the request, we do not need any extra methods here.

3.  Create new viewer class that will manage the data output. This viewer class should sit in the `classes/XLite/Module/Tony/PageDemo/View/Page/Admin/` directory and have the same as controller class. This is just an agreement and all page viewer classes follow the same principle. We are creating the `classes/XLite/Module/Tony/PageDemo/View/Page/Admin/TonyCustom.php` file with the following content: 


    <div class="ui top attached tabular menu">
        <a class='item' data-tab='tab_1-1'>5.2.x and earlier</a>
        <a class='item active' data-tab='tab_1-2'>5.3.x</a>
    </div>
    <div data-tab="tab_1-1" class="ui bottom attached tab segment" markdown="1">
    ```php
    <?php

    namespace XLite\Module\Tony\PageDemo\View\Page\Admin;

    /**
     * @ListChild (list="admin.center", zone="admin")
     */

    class TonyCustom extends \XLite\View\AView
    {
        public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('tony_custom'));
        }

        protected function getDefaultTemplate()
        {
            return 'modules/Tony/PageDemo/page/tony_custom/body.tpl';
        }
    }
    ```
    </div>
    <div data-tab="tab_1-2" class="ui bottom attached active tab segment" markdown="1">
    ```php
    <?php

    namespace XLite\Module\Tony\PageDemo\View\Page\Admin;

    /**
     * @ListChild (list="admin.center", zone="admin")
     */

    class TonyCustom extends \XLite\View\AView
    {
        public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('tony_custom'));
        }

        protected function getDefaultTemplate()
        {
            return 'modules/Tony/PageDemo/page/tony_custom/body.twig';
        }
    }
    ```
    </div>

4.  Let us walk through each line of this code. 

    ```php
    namespace XLite\Module\Tony\PageDemo\View\Page\Admin;
    ```

    This is just a namespace definition. 

    ```php
    /**
     * @ListChild (list="admin.center", zone="admin")
     */
    ```

    This part is very important. It registers this viewer class to be displayed in the central area of admin area. 

    ```php
    class TonyCustom extends \XLite\View\AView
    ```

    Just a class definition. 

    ```php
    	public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('tony_custom'));
        }
    ```

    The `getAllowedTargets()` method defines which targets will trigger this viewer class. The current implementation means that, if **target=tony_custom**, then this viewer class will display its content in the central area. If there is any other target, then this viewer class will not be even run. 

    ```php
        protected function getDefaultTemplate()
        {
            return 'modules/Tony/PageDemo/page/tony_custom/body.twig';
        }
    ```

    The `getDefaultTemplate()` method defines what template will be used in order to output the content. The template path can be whatever you prefer.

5.  Now it is time to create the template defined in the `getDefaultTemplate()` method, so it would display **Hello world!** text. We are creating the `skins/admin/modules/Tony/PageDemo/page/tony_custom/body.twig` (`skins/admin/en/modules/Tony/PageDemo/page/tony_custom/body.tpl` for 5.2.x and earlier) file with the following content: 

    ```php
    Hello world!
    ```

6.  We are done with this mod. Now it is time to re-deploy the store and check the results. If you open the following URL in your store: `admin.php?target=tony_custom`, you will see the following result:

![]({{site.baseurl}}/attachments/8224999/8355981.png)

## Creating page via macro

You can {% link "create a page via macro" ref_HvrXVNvJ#X-CartSDK-Creatingpage %}, so it will save your time. In this case, all files will be created automatically and you will only have to go to the template file and define its content.

## Creating page in customer area

Imagine, we have a similar task of creating page (`cart.php?target=tony_custom`) with **Hello world!** text, but in customer area. The process would be quite the same as for creating page for admin zone.

1.  We create new controller class: `classes/XLite/Module/Tony/PageDemo/Controller/Customer/TonyCustom.php` . Notice that we changed the sub-directory from 'Controller/**Admin**/TonyCustom.php' to 'Controller/**Customer**/TonyCustom.php', this way X-Cart will understand that this controller for customer zone, not admin. 

2.  The content of the controller class will be as follows: 

    ```php
    <?php

    namespace XLite\Module\Tony\PageDemo\Controller\Customer;

    class TonyCustom extends \XLite\Controller\Customer\ACustomer
    {
    }
    ```

    The implementation of the controller class is similar to admin's one, but it has different namespace (`XLite\Module\Tony\PageDemo\Controller\Customer`) and it extends different class (`\XLite\Controller\**Customer\ACustomer`)

3.  We create new viewer class: `classes/XLite/Module/Tony/PageDemo/View/Page/Customer/TonyCustom.php` (again, notice change from `Page/Admin/TonyCustom.php` to `Page/Customer/TonyCustom.php` in the path) with the following content: 

    <div class="ui top attached tabular menu">
        <a class='item' data-tab='tab_3-1'>5.2.x and earlier</a>
        <a class='item active' data-tab='tab_3-2'>5.3.x</a>
    </div>
    <div data-tab="tab_3-1" class="ui bottom attached tab segment" markdown="1">
    ```php
    <?php

    namespace XLite\Module\Tony\PageDemo\View\Page\Customer;

    /**
     * @ListChild (list="center")
     */
    class TonyCustom extends \XLite\View\AView
    {
        public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('tony_custom'));
        }

        protected function getDefaultTemplate()
        {
            return 'modules/Tony/PageDemo/page/tony_custom/body.tpl';
        }
    }
    ```
    </div>
    <div data-tab="tab_3-2" class="ui bottom attached active tab segment" markdown="1">
    ```php
    <?php

    namespace XLite\Module\Tony\PageDemo\View\Page\Customer;

    /**
     * @ListChild (list="center")
     */
    class TonyCustom extends \XLite\View\AView
    {
        public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('tony_custom'));
        }

        protected function getDefaultTemplate()
        {
            return 'modules/Tony/PageDemo/page/tony_custom/body.twig';
        }
    }
    ```
    </div>

4.  As you can see this implementation has only few differences: 

    ```php
    namespace XLite\Module\Tony\PageDemo\View\Page\Customer;
    ```

    namespace is a bit different;

    ```php
    /**
     * @ListChild (list="center")
     */
    ```

    We use this `@ListChild` directive in order to insert this viewer class into central area of customer area, instead of admin one;

    <div class="ui top attached tabular menu">
        <a class='item' data-tab='tab_2-1'>5.2.x and earlier</a>
        <a class='item active' data-tab='tab_2-2'>5.3.x</a>
    </div>
    <div data-tab="tab_2-1" class="ui bottom attached tab segment" markdown="1">
    ```php
    protected function getDefaultTemplate()
    {
        return 'modules/Tony/PageDemo/page/tony_custom/body.tpl';
    }
    ```
    </div>
    <div data-tab="tab_2-2" class="ui bottom attached active tab segment" markdown="1">
    ```php
    protected function getDefaultTemplate()
    {
        return 'modules/Tony/PageDemo/page/tony_custom/body.twig';
    }
    ```
    </div>

    The template for this viewer sits in other location. Aside from that, the implementation is the same.

5.  Finally, we need to create the template mentioned in the `getDefaultTemplate()` method. We create the `skins/customer/modules/Tony/PageDemo/page/tony_custom/body.twig` (`skins/default/en/modules/Tony/PageDemo/page/tony_custom/body.tpl` for 5.2.x and earlier) template (notice, that we create this template in the `skins/customer/` directory, instead of `skins/admin/` one – it is so, because this template will be displayed in customer store-front) with **Hello world!** content.
6.  Re-deploy the store and open the `cart.php?target=tony_custom` page after that. You will see the following result:![]({{site.baseurl}}/attachments/8224999/8355982.png)

## Module pack

- For X-Cart 5.2.x and earlier: <https://www.dropbox.com/s/6amqcyoz6cxaqmg/Tony-PageDemo-v5_1_0.tar>
- For X-Cart 5.3.x and later: <https://www.dropbox.com/s/sjsfhlae3jos283/Tony-PageDemo-v5_3_0.tar>
