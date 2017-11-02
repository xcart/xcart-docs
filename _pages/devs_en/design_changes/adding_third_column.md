---
title: Adding third column
identifier: ref_BBz737s4
updated_at: 2015-01-14 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This article gives an example of how to create the right sidebar and hide the left sidebar in admin area, while transferring all sidebar widgets from left to right.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **RightColumnDemo**. The fact whether to show left and right sidebars is defined in the `\XLite\View\Controller` ({% link "more about classnames" ref_FAgFbEx9 %} in X-Cart) class: 

*   `isSidebarFirstVisible()` defines whether to show left sidebar;
*   `isSidebarSecondVisible()` defines whether to show right sidebar.

In our module we need to {% link "decorate" ref_AF6bmvL6 %} this class and override these methods. For that we create the `<X-Cart>/classes/XLite/Module/Tony/RightColumnDemo/View/Controller.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\RightColumnDemo\View;

/**
 * Controller main widget
 */
abstract class Controller extends \XLite\View\Controller implements \XLite\Base\IDecorator
{    
    public static function isSidebarSecondVisible()
    {
        return !\XLite::isAdminZone() ? true : parent::isSidebarSecondVisible();
    }

    public static function isSidebarFirstVisible()
    {
        return !\XLite::isAdminZone() ? false: parent::isSidebarFirstVisible();
    }
}
```

We define `isSidebarSecondVisible()` method to return `true`, if we are in a customer area and we define i`sSidebarFirstVisible()` method to return `false`, if we are in customer area as well. This means that left sidebar will be hidden and right sidebar will be shown in customer area, while admin area will remain the same.

Now we need to move all widgets from left to right sidebar and we can achieve it by adding the following method to the `<X-Cart>/classes/XLite/Module/Tony/RightColumnDemo/Main.php` class: 

```php
    public static function runBuildCacheHandler()
    {
        parent::runBuildCacheHandler();

        $widgets = \XLite\Core\Database::getRepo('XLite\Model\ViewList')->findClassList('sidebar.first', 'customer');

        foreach ($widgets as $widget) {
            $widget->setList('sidebar.second');
        }
    }
```

and it will move all templates and widget classes from `sidebar.first` (left column) to `sidebar.second` (right column) view list.

Finally, we need to {% link "add CSS file" ref_p0CRZmMS %} that will make look of right column smooth. We create the `<X-Cart>/skins/default/en/modules/Tony/RightColumnDemo/css/style.css` file with the following content: 

```php
#sidebar-second {
    width: 25%;
    padding-left: 20px;
}
```

and then register this CSS file in the system by creating the `<X-Cart>/classes/XLite/Module/Tony/RightColumnDemo/View/AView.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\RightColumnDemo\View;

/**
 * Abstract widget
 */
abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{    
    protected function getThemeFiles($adminZone = null)
    {
        $list = parent::getThemeFiles($adminZone);

        $list[static::RESOURCE_CSS][] = 'modules/Tony/RightColumnDemo/css/style.css';
        return $list;
    }
}
```

Now we are done with the mod and have to re-deploy the store. Once it is done, check your customer area and it should look like this:![]({{site.baseurl}}/attachments/524300/8356186.png)

_Note: using the same approach you can create three column layout or a vertical layout without sidebars._

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-RightColumnDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-RightColumnDemo-v5_1_0.tar)

## Attachments:

* [right-column.png]({{site.baseurl}}/attachments/524300/8356186.png) (image/png)