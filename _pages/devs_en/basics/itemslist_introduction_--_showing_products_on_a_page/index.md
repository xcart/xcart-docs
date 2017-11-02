---
title: ItemsList in customer area
identifier: ref_MRidEzuz
updated_at: 2015-01-12 00:00
layout: article_with_sidebar
lang: en
order: 60
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes the process of creating page with products. For instance, any category page is a page with products. In this guide we will create a page that is available at `cart.php?target=all_products` and then display all products on this page.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

1.  {% link "Create an empty module" ref_G2mlgckf %}. We are creating a module with developer ID **Tony** and module ID **ProductsDemo**.
2.  {% link "Create a page" ref_0VgqyxB8 %} in this module. We are creating a page in customer area that will be accessible by `cart.php?target=all_products` URL.
3.  Create new **ItemsList** class that will display all products in the center of this new page. We create the
    `<X-Cart>/classes/XLite/Module/Tony/ProductsDemo/View/ItemsList/Product/Customer/AllProducts.php` file with the following content: 

    ```php
    <?php 

    namespace XLite\Module\Tony\ProductsDemo\View\ItemsList\Product\Customer; 

    /** 
     * 
     * @ListChild (list="center.bottom", zone="customer", weight="300") 
     */ 

    class AllProducts extends \XLite\View\ItemsList\Product\Customer\ACustomer
    { 
        protected static function getWidgetTarget()
        {
            return 'all_products';
        }

        public static function getAllowedTargets()  
        {  
            $result = parent::getAllowedTargets();

            $result[] = self::getWidgetTarget();

            return $result;
        } 

        protected function getData(\XLite\Core\CommonCell $cnd, $countOnly = false)
        {
            return \XLite\Core\Database::getRepo('\XLite\Model\Product')->search(
                $cnd,
                $countOnly
            );
        }

        protected function getPagerClass()
        {
            return '\XLite\Module\Tony\ProductsDemo\View\Pager\Customer\Product\Product';
        }
    }
    ```

4.  Let us have a look at key parts of this class implementation. First is the class declaration: 

    ```php
    class AllProducts extends \XLite\View\ItemsList\Product\Customer\ACustomer
    ```

    This line says that we will use `\XLite\View\ItemsList\Product\Customer\ACustomer` parent class as a template for our products output. This class is parent of all ItemsLists used for display of products in customer area, so the result will be rendered the same, but it will display all products instead of ones that defined by other ItemsLists.

5.  `@ListChild (list="center.bottom", zone="customer", weight="300")` directive says that the output of this ItemsList {% link "must be put" ref_6dMJsZ63 %} into central area of the page.

6.  `getWidgetTarget()` method defines a target of a page where our ItemsList will sit. In our case, this page is `cart.php?target=all_products`.
7.  `getAllowedTargets()` method defines what pages must display this widget: 

    ```php
        public static function getAllowedTargets()  
        {  
            $result = parent::getAllowedTargets();

            $result[] = self::getWidgetTarget();

            return $result;
        }  
    ```

    In our case, only `cart.php?target=all_products` page must contain this widget and any other page must not display it.

8.  `getData()` method is the most important one in this implementation: 

    ```php
        protected function getData(\XLite\Core\CommonCell $cnd, $countOnly = false) 
        { 
            return \XLite\Core\Database::getRepo('\XLite\Model\Product')->search(
                $cnd,
                $countOnly
            ); 
        }
    ```

    **ItemsList** widgets use {% link "search() method" ref_ehDn4NIi %} as an approach to pull entities from the database. `getData()` method is called through `getPageData()` and `getItemsCount()` methods of `\XLite\View\ItemsList\AItemsList` class. When it is called this way, `getData()` receives `$cnd` parameter returned from the `getSearchCondition()` method of `\XLite\View\ItemsList\AItemsList` class. By default it represents an empty array, so if we call `search()` method with it, it will return all products, which is what we need.

9.  `getPagerClass()` method is used in order to define a pagination look. X-Cart does not have a generic pager class, so we need to create it, luckily it is very easy. We just create the
    `<X-Cart>/classes/XLite/Module/Tony/ProductsDemo/View/Pager/Customer/Product/Product.php` file with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\ProductsDemo\View\Pager\Customer\Product;

    class Product extends \XLite\View\Pager\Customer\Product\AProduct
    {
    }
    ```

    As you can see, we just extend an abstract class `\XLite\View\Pager\Customer\Product\AProduct`. Once it is done we define our `getPagerClass()` method as: 

    ```php
    protected function getPagerClass()
    {
        return '\XLite\Module\Tony\ProductsDemo\View\Pager\Customer\Product\Product';
    }
    ```

10.  That is it. Now we need to re-deploy the store and then open `cart.php?target=all_products` page in order to see the result of our mod work:![]({{site.baseurl}}/attachments/8225226/8356122.png)

## Module pack

You can download this module from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ProductsDemo-v5_1_2.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ProductsDemo-v5_1_2.tar)