---
lang: en
layout: article_with_sidebar
updated_at: '2016-01-21 00:00'
title: Creating sidebar menu in customer area
identifier: ref_Z0IrS8PW
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article describes how to create your own sidebar menu in customer store-front. This is a menu similar to **Categories**, **Shopping options** or **New Arrivals** ones you can see in default X-Cart:

![default-sidebar-menus.png]({{site.baseurl}}/attachments/ref_Z0IrS8PW/default-sidebar-menus.png)

{% toc Table of Contents %}

## Implementation

We start off with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **CustomerMenu**. Of course, your developer and module IDs can be different.

After that we create a viewer class that will be responsible for this menu box. We create `classes/XLite/Module/XCExample/CustomerMenu/View/SidebarMenu.php` file with the following content:

```php
<?php

namespace XLite\Module\XCExample\CustomerMenu\View;

/**
 * @ListChild (list="sidebar.single", zone="customer", weight="500")
 * @ListChild (list="sidebar.first", zone="customer", weight="500")
 */

class SidebarMenu extends \XLite\View\SideBarBox
{
    protected function getHead()
    {
        return 'Our custom menu';
    }

    protected function getDir()
    {
        return 'modules/XCExample/CustomerMenu/menu';
    }
}
```

Let us walk through each line of this code:

1.  `namespace XLite\Module\XCExample\CustomerMenu\View;` defines a namespace of the class and you must use your own developer and module IDs here. We used **XCExample** and **CustomerMenu**, because they are IDs of our module.
2.  Construction `@ListChild (list="sidebar.first", zone="customer", weight="500")` is used to assign the sidebar box into the area where all other sidebar boxes are located. You can change its weight to move it up or down in the left-hand side menu. This section must start with `/**` and end with `*/ ` characters.
3.  `class MySidebar extends \XLite\View\SideBarBox` tells that we are going to use typical sidebar box as a template for our own menu.
4.  Method `getHead`() defines the header of the menu.
5.  Method `getDir`() defines the folder where the template that defines the look of the sidebar menu (`body.twig`) is located. In our case, this folder is `skins/customer/modules/XCExample/CustomerMenu/menu/`. Again, you must use your own developer and module IDs in this path.

Finally, we create the template `skins/customer/modules/XCExample/CustomerMenu/menu/body.twig` mentioned above. Its content will be what you want to display in the sidebar box, e.g.: 

```php
hello world!
```

If we open some category page now, we should see the following results there:
![our-custom-menu.png]({{site.baseurl}}/attachments/ref_Z0IrS8PW/our-custom-menu.png)


## Module pack

You can download this module pack from here: <https://www.dropbox.com/s/p5f6imif2vkuvsj/XCExample-CustomerMenu-v5_3_0.tar>