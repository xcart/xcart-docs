---
title: Creating menu in admin area
identifier: ref_Tkkqgkgr
updated_at: 2014-12-11 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This article describes how developers can create/change menu items in admin area.
 ![]({{site.baseurl}}/attachments/8225143/8356087.png)

The admin menu section is defined by the `\XLite\View\Menu\Admin\TopMenu` class ({% link "more info about X-Cart classnames" ref_FAgFbEx9 %}) and this guide describes how you can apply changes to it.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

1.  {% link "Create an empty module" ref_G2mlgckf %}. We are creating module with developer ID **Tony** and module ID **AdminMenuDemo**.
2.  {% link "Decorate" ref_AF6bmvL6 %} the `\XLite\View\Menu\Admin\TopMenu` class in your module. We are creating the `<X-Cart>/classes/XLite/Module/Tony/AdminMenuDemo/View/Menu/Admin/TopMenu.php` file with the following content:

    ```php
    <?php
    // vim: set ts=4 sw=4 sts=4 et:

    namespace XLite\Module\Tony\AdminMenuDemo\View\Menu\Admin;

    abstract class TopMenu extends \XLite\View\Menu\Admin\TopMenu implements \XLite\Base\IDecorator
    {
    	protected function defineItems() 
    	{
    		$menu = parent::defineItems();

    		$menu['promotions'][self::ITEM_CHILDREN] += array (
    			'google' => array (
    			    self::ITEM_TITLE	=> 'Google menu item',
                    self::ITEM_LINK   	=> 'http://google.com',
                    self::ITEM_WEIGHT   => 500,
                    ),
    			);

    		$menu['promotions'][self::ITEM_CHILDREN] += array (
    			'products' => array (
    			    self::ITEM_TITLE	=> 'Another link to products',
                    self::ITEM_TARGET   => 'product_list',
                    self::ITEM_WEIGHT   => 600,
                	),
    			);

    		if (!isset($menu['my-menu'])) {
    			$menu['my-menu'] = array (
    				self::ITEM_TITLE 	=> 'My custom menu',
    				self::ITEM_TARGET 	=> 'product_list',
    				self::ITEM_WEIGHT 	=> 300,
    				self::ITEM_CHILDREN => array(),
    			);
    		}

    		$menu['my-menu'][self::ITEM_CHILDREN] += array (
    			'products' => array (
    				self::ITEM_TITLE 	=> 'Products in custom menu',
    				self::ITEM_TARGET 	=> 'product_list',
    				self::ITEM_WEIGHT 	=> 100,
    				),
    			);

    		return $menu;
    	}
    }
    ```

3.  Let us have a closer look at each meaningful part of this code.
4.  First of all, we call parent's `defineItems()` in order to generate basic menu structure and save it into `$menu` variable: 

    ```php
    $menu = parent::defineItems();
    ```

5.  We create a new **Google menu item **menu item inside **Promotions** category like this:

    ```php
    		$menu['promotions'][self::ITEM_CHILDREN] += array (
    			'google' => array (
    			    self::ITEM_TITLE	=> 'Google menu item',
                    self::ITEM_LINK   	=> 'http://google.com',
                    self::ITEM_WEIGHT   => 500,
                    ),
    			);
    ```

    **Title** field (`self::ITEM_TITLE`) defines what text is displayed in menu, **link** field (`self::ITEM_TITLE`) defines where link will take users, **weight** field (`self::ITEM_WEIGHT`) defines the location of our menu item among others – the higher the value, the lower the menu item will sit.

6.  We create **Another link to products** menu item inside **Promotions** category like this: 

    ```php
    		$menu['promotions'][self::ITEM_CHILDREN] += array (
    			'products' => array (
    			    self::ITEM_TITLE	=> 'Another link to products',
                    self::ITEM_TARGET   => 'product_list',
                    self::ITEM_WEIGHT   => 600,
                	),
    			);
    ```

    It is almost exactly the same as above, but we use **target** field (`self::ITEM_TARGET`) instead of **link** one here. Target field allows us to generate a link as _admin.php?target=_**_products_list_ **by specifying just _product_list_ value, not the whole URL.

7.  We create a new category menu with **My custom menu** name as follows: 

    ```php
    		if (!isset($menu['my-menu'])) {
    			$menu['my-menu'] = array (
    				self::ITEM_TITLE 	=> 'My custom menu',
    				self::ITEM_TARGET 	=> 'product_list',
    				self::ITEM_WEIGHT 	=> 300,
    				self::ITEM_CHILDREN => array(),
    			);
    		}
    ```

    Fields of this menu entry as the same as above, but it also has **children** param (`self::ITEM_CHILDREN`). This way we are telling X-Cart that this menu item can contain child items, but these items are not defined yet, because it has value of empty array.

8.  We add one more menu item into our newly created **My custom menu** category as follows: 

    ```php
    		$menu['my-menu'][self::ITEM_CHILDREN] += array (
    			'products' => array (
    				self::ITEM_TITLE 	=> 'Products in custom menu',
    				self::ITEM_TARGET 	=> 'product_list',
    				self::ITEM_WEIGHT 	=> 100,
    				),
    			);
    ```

    This piece of code should already be familiar to you.

9.  Now it is time to re-deploy the store and check the results. You will see new menu items:
    ![]({{site.baseurl}}/attachments/8225143/8356088.png)

## Module pack

You can download this module from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-AdminMenuDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-AdminMenuDemo-v5_1_0.tar)

## Attachments:

* [admin-area-menu-items.png]({{site.baseurl}}/attachments/8225143/8356087.png) (image/png)
* [admin-area-custom-menu.png]({{site.baseurl}}/attachments/8225143/8356088.png) (image/png)