---
title: Code and module dependencies
identifier: ref_xdDPawlG
updated_at: 2015-12-02 00:00
layout: article_with_sidebar
lang: en
order: 46
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article aims to show developers how to give priority to one class over another during the {% link "decoration process" ref_AF6bmvL6 %}. It also shows how one module can require another one for proper work.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Understanding the problem](#understanding-the-problem)
*   [Solution](#solution)
*   [Module pack](#module-pack)
*   [LC_Dependencies on the same module](#lc_dependencies-on-the-same-module)
*   [What if one module requires another one to work properly](#what-if-one-module-requires-another-one-to-work-properly)
*   [Second module pack](#second-module-pack)

## Understanding the problem

Imagine the situation: You are writing a module that correlates with another one. A typical case – you want to override a customer menu on the storefront.

The top menu is defined in the core class `\XLite\View\Menu\Customer\Top` (see the article about {% link "class names" ref_FAgFbEx9 %}), and the module **SimpleCMS** overrides this class via `\XLite\Module\CDev\SimpleCMS\View\Menu\Customer\PrimaryMenu`. We want to show our items no matter whether the module SimpleCMS is enabled or not.

In order to solve the problem, we must be sure that our module will decorate the core class `\XLite\View\Menu\Customer\Top` after the SimpleCMS' class, otherwise SimpleCMS will just ignore our implementation of the menu.

## Solution

1.  {% link "Create a module" ref_G2mlgckf %}.  I am creating it with the developer ID **Tony** and the module ID **OverridingTopMenu**.
2.  In order to tell X-Cart what menu items must be shown on the storefront, we need to decorate the method `defineItems()` of the class `\XLite\View\Menu\Customer\Top`.
3.  To achieve that, we will create the file `<X-Cart>/classes/XLite/Module/Tony/OverridingTopMenu/View/Menu/Customer/Top.php` with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\OverridingTopMenu\View\Menu\Customer;

    class Top extends \XLite\View\Menu\Customer\Top implements \XLite\Base\IDecorator 
    {
        protected function getMyItems()
        {
            $return = array();

            $return[] = array (
                'url' => 'http://google.com',
                'label' => 'Google menu',
                'controller' => false,
                );

            return $return;
        }

        protected function defineItems()
        {
            return $this->getMyItems();
        }
    }
    ```

    We decorate the method `defineItems()`, so it would return items declared in the method `getMyItems()`. This is straightforward.

4.  If we leave this code as is, our module will work properly with the module SimpleCMS disabled, but if it is enabled, then SimpleCMS will still override our change.
5.  In order to overcome the situation, we will create the file `<X-Cart>/classes/XLite/Module/Tony/OverridingTopMenu/View/Menu/Customer/TopAfterSimpleCMS.php` with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\OverridingTopMenu\View\Menu\Customer;

    /**
     * @LC_Dependencies ("CDev\SimpleCMS")
     */

    class TopAfterSimpleCMS extends \XLite\View\Menu\Customer\Top implements \XLite\Base\IDecorator 
    {

    	protected function defineItems()
        {
            return $this->getMyItems();
        }

    }
    ```

    _Note: The viewer class name can be whatever you want – it does not have to be TopAfterSimpleCMS, but its name has to be the same as the .php filename it is declared_ _in._
    Asyou can see, its implementation is similar, we are overriding the method `defineItems()` that calls the method `getMyItems()` which was declared in our first viewer class. However, there is the directive 

    ```php
    /**
     * @LC_Dependencies ("CDev\SimpleCMS")
     */
    ```

    which tells X-Cart that this class (TopAfterSimpleCMS) must decorate the `\XLite\View\Menu\Customer\Top` one only after all the viewer classes of the SimpleCMS module. On the other hand, if there is no SimpleCMS module enabled in the system, then this decoration will never happen, but our first class will still apply the needed change.
    The directive `@LC_Dependencies ()` has to be put into PHP comments according to [DocBlock standard](http://www.phpdoc.org/docs/latest/getting-started/your-first-set-of-documentation.html#what-does-a-docblock-look-like); in other words, it must start with the `/**` construction, end with the `*/` construction, and every line between those must start with the `*` symbol. If the `@LC_Dependencies` directive is put in any other format, X-Cart will not be able to fetch and use it.

6.  Re-deploy the store and check the results. You should see only the **Google menu** item in the storefront, no matter if the module SimpleCMS is enabled or not.

## Module pack

You can download this sample module from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-OverridingTopMenu-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-OverridingTopMenu-v5_1_0.tar)

## LC_Dependencies on the same module

While specifying the directive `@LC_Dependencies ()`, you can make a certain class depend on its module. An example is the module **XC/SystemFields** in the free edition.

`The class \XLite\Module\XC\SystemFields\Logic\Import\Processor\Products` decorates the class `\XLite\Logic\Import\Processor\Products.`

`The class \XLite\Module\XC\SystemFields\Logic\Import\Processor\ProductsVariants` decorates the` class \XLite\Logic\Import\Processor\Products,` and it has the `@LC_Dependencies("XC\ProductVariants", "XC\SystemFields")` directive.

The directive means that the class `\XLite\Module\XC\SystemFields\Logic\Import\Processor\ProductsVariants` will decorate the class `\XLite\Logic\Import\Processor\Products` only if the module **ProductVariants** is enabled, and if so, the decoration will happen after the decoration of the class `\XLite\Module\XC\SystemFields\Logic\Import\Processor\Products`.

## What if one module requires another one to work properly

In this case, you need the entire module to be dependent on that other one.

For example, we want to write a module that can work only if the module **SimpleCMS** is installed and enabled. For instance, our module is an adjustment of the SimpleCMS one.

1.  Create the module. I am creating the module with the developer ID **Tony** and the module ID **DependenciesDemo**.
2.  Add the following method to the file `Main.php` of your module: 

    ```php
        public static function getDependencies()
        {
            return array('CDev\SimpleCMS');
        }
    ```

3.  This method tells X-Cart that our DependenciesDemo module cannot work without the module SimpleCMS enabled. X-Cart will not even allow to enable it if SimpleCMS is not active. ![]({{site.baseurl}}/attachments/8224842/8355885.png?effects=drop-shadow)
4.  Note that if the module DependenciesDemo is active, you cannot disable the module SimpleCMS either.
    ![]({{site.baseurl}}/attachments/8224842/8355886.png?effects=drop-shadow)

## Second module pack

An example of the module DependenciesDemo can be downloaded from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-DependenciesDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-DependenciesDemo-v5_1_0.tar)

## Attachments:

* [cannot-enable-dependencies-demo.png]({{site.baseurl}}/attachments/8224842/8355885.png) (image/png)
* [cannot-disable-simple-cms.png]({{site.baseurl}}/attachments/8224842/8355886.png) (image/png)