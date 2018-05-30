---
lang: en
layout: article_with_sidebar
updated_at: '2014-12-11 00:00'
title: Creating menu in admin area
identifier: ref_Tkkqgkgr
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article describes how developers can change menu items in admin area.
![admin-menu-default.png]({{site.baseurl}}/attachments/ref_Tkkqgkgr/admin-menu-default.png)

The admin menu is defined by the `\XLite\View\Menu\Admin\LeftMenu` class ({% link "more info about X-Cart classnames" ref_FAgFbEx9 %}) and this guide describes how you can change it.

{% toc Table of Contents %}

## Implementation

As have been said above, default admin menu is defined by the `\XLite\View\Menu\Admin\LeftMenu` class. There are main and bottom parts of the menu in admin area:
![main-and-bottom-admin-menu.png]({{site.baseurl}}/attachments/ref_Tkkqgkgr/main-and-bottom-admin-menu.png)

The main part of the menu is defined by the `defineItems()` method in the `\XLite\View\Menu\Admin\LeftMenu` class, while bottom part is defined by the `defineBottomItems()` method in the same class.

So, if we want to edit the menu, we have to change arrays returned by those methods.

We start off with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **AdminMenuDemo**.

Our task will be to add a new menu item, remove existing one and edit another existing one.

We need to {% link "decorate" ref_AF6bmvL6 %} the `\XLite\View\Menu\Admin\LeftMenu` class, so we create `classes/XLite/Module/XCExample/AdminMenuDemo/View/Menu/Admin/LeftMenu.php` file with the following content:

    ```php
	<?php

	namespace XLite\Module\XCExample\AdminMenuDemo\View\Menu\Admin;

	/**
	 * Left side menu widget
	 */
	abstract class LeftMenu extends \XLite\View\Menu\Admin\LeftMenu implements \XLite\Base\IDecorator
	{
    	protected function defineItems()
	    {
    	    $items = parent::defineItems();

        	// creating new item 
	        // Catalog > Another link to products
    	    $items['catalog'][self::ITEM_CHILDREN]['extra_product_list'] = array(
        	    self::ITEM_TITLE  => static::t('Products (new link)'),
            	self::ITEM_TARGET => 'product_list',
	            self::ITEM_WEIGHT => 250,
    	    );

        	// removing Catalog > Classes & attibutes item
	        unset($items['catalog'][self::ITEM_CHILDREN]['product_classes']);

    	    // changing name of Catalog > Products item to 'New products title'
        	$items['catalog'][self::ITEM_CHILDREN]['product_list'][static::ITEM_TITLE] = 'Products (title changed)';

	        return $items;
    	}
	}
    ```

Let us have a closer look at each meaningful part of this code. This code works for main menu, but the same principles apply to bottom menu defined by `defineBottomItems()`.

First of all, we call parent's `defineItems()` in order to get default menu structure and save it into `$items` variable: 

    ```php
    $items = parent::defineItems();
    ```

### Creating new menu item

We create a new **Products (new link)** item in **Catalog** menu like this:

    ```php
    	    $items['catalog'][self::ITEM_CHILDREN]['extra_product_list'] = array(
        	    self::ITEM_TITLE  => static::t('Products (new link)'),
            	self::ITEM_TARGET => 'product_list',
	            self::ITEM_WEIGHT => 250,
    	    );
    ```

- `self::ITEM_TITLE` element defines what label will our menu item have;
- `self::ITEM_TARGET` element defines a page where a user will go after clicking this menu item. If you want to redirect customer to a page outside of X-Cart's admin area, use `self::ITEM_LINK` element instead;
- `self::ITEM_WEIGHT` element defines the location of our menu item among others. The greater the value, the lower the menu item will sit.

Example of menu item with link to external page:

	```php
    	    $items['catalog'][self::ITEM_CHILDREN]['google'] = array(
        	    self::ITEM_TITLE  => static::t('Go to Google'),
            	self::ITEM_LINK => 'https://google.com',
	            self::ITEM_WEIGHT => 500,
    	    );
    
    ```

`$items['catalog']` piece ('catalog' to be precise) defines that we create this menu item in **Catalog** menu. If we want to create items in other menus, then we should use another key in `$items` array. Here is the reference:
- Orders - `$items['sales']`;
- Discounts - `$items['promotions']`;
- Users - `$items['users']`;
- Content - `$items['content']`;
- Sales channels - `$items['sales_channels']`.

The reference for `defineBottomItems()` method:
- My addons - `$items['extensions']`;
- Look & Feel - `$items['css_js']`;
- Store setup - `$items['store_setup']`;
- System tools - `$items['system_settings']`.

### Changing and removing existing menu item

If we want to remove existing menu item, we just remove element representing this item from the `$items` array:

```php
// removing Catalog > Classes & attibutes item
unset($items['catalog'][self::ITEM_CHILDREN]['product_classes']);
```

If we want to change existing menu item, we edit it in the same `$items` array:

```php
// changing name of Catalog > Products item to 'New products title'
$items['catalog'][self::ITEM_CHILDREN]['product_list'][static::ITEM_TITLE] = 'Products (title changed)';
```

In case you need to re-arrange items in the menu, you should change items' `self::ITEM_WEIGHT` parameter, instead of re-arranging item positions in `$items` array.

### Creating your own menu

If you want to create your own menu section like 'Catalog' or 'Orders', then you should add this section into `$items` array like this:

```php
        // adding new menu with the most sophisticated title 'New menu'
        $items['new_menu'] = [
            static::ITEM_TITLE    => static::t('New menu'),
            static::ITEM_ICON_SVG => 'images/fa-cog.svg',
            static::ITEM_WEIGHT   => 500,
            // static::ITEM_TARGET   => 'product_list',
            self::ITEM_CHILDREN => [
                'new_menu' => [
                    self::ITEM_TITLE    => 'Google menu item',
                    self::ITEM_LINK     => 'https://google.com',
                    self::ITEM_WEIGHT   => 500,
                ],
            ]
        ];
```

- `static::ITEM_TITLE`, `static::ITEM_WEIGHT`, `static::ITEM_TARGET` elements are the same as for menu items we discussed above;
- `static::ITEM_ICON_SVG` element defines an icon displayed near the menu: 
![menu-icons.png]({{site.baseurl}}/attachments/ref_Tkkqgkgr/menu-icons.png)
- `self::ITEM_CHILDREN` element defines menu items in this menu. Each menu item is represented by element we looked at earlier.

We are done with the mod. Reload the page and check the results:
![menu-edited-version.png]({{site.baseurl}}/attachments/ref_Tkkqgkgr/menu-edited-version.png)


## Module pack

You can download this module from here: <https://www.dropbox.com/s/t69i7wkop0osdu6/XCExample-AdminMenuDemo-v5_3_0.tar>