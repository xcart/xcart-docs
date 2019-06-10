---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-28 00:01 +0400'
title: Applying changes to business logic
identifier: ref_AF6bmvL6
order: 130
categories:
  - Developer docs
  - Demo module
published: true
redirect_from:
  - /getting_started/step_3_-_applying_logic_changes.html
---
## Introduction

X-Cart uses [Decorator pattern](https://en.wikipedia.org/wiki/Decorator_pattern) in order to apply changes to the core functionality. The idea behind this approach is to keep core untouched and all files related to modules would be separate from the core. In this case, upgrade can be simply done by replcaing core files with new ones.

Let us illustrate the decorator concept, so you could see decorator patter in action rather than looking at UML schemes trying to grasp the idea.

{% toc Table of Contents %}

## Implementation

Our task will be to changes X-Cart code in a way to hide quick look link with magnifier icon:
![quick-look-icon.png]({{site.baseurl}}/attachments/ref_I9L2KZJN/quick-look-icon.png)

First of all, we need to create an empty module. We are going to create a module with developer ID **XCExample** and module ID **DecoratorDemo**. For that we create `<X-Cart>/classes/XLite/Module/XCExample/DecoratorDemo/` directory and then `Main.php` file inside with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\DecoratorDemo;

/**
 * Main module
 */
abstract class Main extends \XLite\Module\AModule
{
    /**
     * Author name
     *
     * @return string
     */
    public static function getAuthorName()
    {
        return 'XCExample';
    }

    /**
     * Module name
     *
     * @return string
     */
    public static function getModuleName()
    {
        return 'Decorator demo';
    }

    /**
     * Module description
     *
     * @return string
     */
    public static function getDescription()
    {
        return '';
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
        return '0';
    }

}
```

Once we have done that, re-deploy X-Cart, then go to Modules section in admin area and enable 'Decorator Demo' module.

Now our module is enabled and we can see how decoration approach works. The condition of whether quick look icon is displayed is defined by the `isQuickLookEnabled()` method of the `\XLite\View\Product\ListItem` class and we want to change that. X-Cart core has it implemented the simplest way:

```php
    protected function isQuickLookEnabled()
    {
        return true;
    }
```

and we want this method to return `false` instead of `true`.

For that, we create the `<X-Cart>/classes/XLite/Module/XCExample/DecoratorDemo/View/Product/ListItem.php` file inside our module directory with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\DecoratorDemo\View\Product;

/**
 * Product list item widget
 */
abstract class ListItem extends \XLite\View\Product\ListItem implements \XLite\Base\IDecorator
{
    protected function isQuickLookEnabled()
    {
        return false;
    }    
}
```

Let us have a close look at what we have in this class:

1. Namespace declaration `namespace XLite\Module\XCExample\DecoratorDemo\View\Product;`;
2. Then we define this class is decorator by adding `implements \XLite\Base\IDecorator`. If we did not add that line, this class would just extend `\XLite\View\Product\ListItem` one. Since we added this line, X-Cart core knows that we do not want to extend `\XLite\View\Product\ListItem` class, but we want to change it and expect us to specify new implementations of methods (that we want to change) inside the body of the class;
3. `protected function isQuickLookEnabled() { return false; } ` is our new implementation of `isQuickLookEnabled()` method.

Imagine, we had more complex method and we want to use value returned by the core code. In this case, we would call something like `parent::isQuickLookEnabled()` the same way as we do with usual inheritance.

Be aware though that other modules can also change default behavior and you might want to resolve such conflicts.

## Module pack

You can download the module pack from here: [https://www.dropbox.com/s/wp062n38bs5t715/XCExample-DecoratorDemo-v5_3_0.tar](https://www.dropbox.com/s/wp062n38bs5t715/XCExample-DecoratorDemo-v5_3_0.tar?dl=0)
