---
title: ItemsList in customer area
identifier: ref_MRidEzuz
updated_at: '2015-01-12 00:00'
layout: article_with_sidebar
lang: en
order: 60
categories:
  - Developer docs
  - Demo module
published: true
---
## Introduction

This article describes the process of creating a list of products. We call such lists as ItemsList. For instance, any category page is a list of products and it is rendered by `XLite\View\ItemsList\Product\Customer\Category\Main` ItemsList.

In this guide we will create a page `cart.php?target=all_products` and then display all products there. Using the same approach you can display lists of any other entities anywhere in X-Cart.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

1.  {% link "Create an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **AllProductsDemo**.
2.  {% link "Create a page" ref_0VgqyxB8 %} `cart.php?target=all_products` in the module. 
	For that we create a basic controller class as `classes/XLite/Module/XCExample/AllProductsDemo/Controller/Customer/AllProducts.php` file with the following content:
    ```php
    <?php
	// vim: set ts=4 sw=4 sts=4 et:

	namespace XLite\Module\XCExample\AllProductsDemo\Controller\Customer;

	/**
	 * All products controller
	 */
	class AllProducts extends \XLite\Controller\Customer\ACustomer
	{
	}
    ```
    
    Page viewer class. File `classes/XLite/Module/XCExample/AllProductsDemo/View/Page/Customer/AllProducts.php` with the following content:
    ```php
	<?php
	// vim: set ts=4 sw=4 sts=4 et:

	namespace XLite\Module\XCExample\AllProductsDemo\View\Page\Customer;

	/**
	 * All products page view
	 *
	 * @ListChild (list="center")
	 */
	class AllProducts extends \XLite\View\AView
	{
    	/**
	     * Return list of allowed targets
    	 *
	     * @return array
    	 */
	    public static function getAllowedTargets()
    	{
        	return array_merge(parent::getAllowedTargets(), array('all_products'));
	    }

    	/**
	     * Return widget default template
    	 *
	     * @return string
    	 */
	    protected function getDefaultTemplate()
    	{
        	return 'modules/XCExample/AllProductsDemo/page/all_products/body.twig';
	    }
	}
    ```
    
    Empty page template file at `skins/customer/modules/XCExample/AllProductsDemo/page/all_products/body.twig`.
    
3.  Create new **ItemsList** class that will display all products in the central area of this new page. We create the `classes/XLite/Module/XCExample/AllProductsDemo/View/ItemsList/Product/Customer/AllProducts.php` file with the following content: 

    ```php
	<?php 

	namespace XLite\Module\XCExample\AllProductsDemo\View\ItemsList\Product\Customer; 

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
    	    return 'XLite\Module\XCExample\AllProductsDemo\View\Pager\Customer\Product\Product';
	    }
	}
    ```

4.  Let us have a look at key parts of this class implementation. First is the class declaration: 

    ```php
    class AllProducts extends \XLite\View\ItemsList\Product\Customer\ACustomer
    ```

    This line says that we will use `\XLite\View\ItemsList\Product\Customer\ACustomer` class as a template for our product list. This class is parent of all ItemsLists used for displaying products in customer area, so the result will be rendered the same, but it will display all products instead of ones defined in other ItemsLists.

5.  `@ListChild (list="center.bottom", zone="customer", weight="300")` directive says that the output of this ItemsList {% link "must be put" ref_6dMJsZ63 %} into central area of the page.

6.  `getWidgetTarget()` method defines target of a page where our ItemsList is displayed. In our case, this page is `cart.php?target=all_products`, so the method returns 'all_products'.

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

    **ItemsList** widgets use {% link "search() method" ref_ehDn4NIi %} as an approach to pull entities from the database. `getData()` method is called through `getPageData()` and `getItemsCount()` methods of `\XLite\View\ItemsList\AItemsList` class. When it is called this way, `getData()` receives `$cnd` parameter returned from the `getSearchCondition()` method of `\XLite\View\ItemsList\AItemsList` class. By default it represents an empty array, so if we call `search()` method with it, it will return all products, which is exactly what we want.

9.  `getPagerClass()` method is used in order to define a pagination wdiget. X-Cart does not have a generic pager class, so we need to create it, luckily it is very easy. We just create the `classes/XLite/Module/XCExample/AllProductsDemo/View/Pager/Customer/Product/Product.php` file with the following content: 

    ```php
	<?php

	namespace XLite\Module\XCExample\AllProductsDemo\View\Pager\Customer\Product;

	class Product extends \XLite\View\Pager\Customer\Product\AProduct
	{
	}
    ```

    As you can see, we just extend an abstract pager class `\XLite\View\Pager\Customer\Product\AProduct`. Once it is done, we define our `getPagerClass()` method in ItemsList class as follows: 

    ```php
    protected function getPagerClass()
    {
        return '\XLite\Module\Tony\ProductsDemo\View\Pager\Customer\Product\Product';
    }
    ```

10.  That is it. If we open `cart.php?target=all_products` page, you will see that all products are displayed there:![]({{site.baseurl}}/attachments/8225226/8356122.png)

## Module pack

You can download this module from here: <https://www.dropbox.com/s/vhmeeo25vpkfkl4/XCExample-AllProductsDemo-v5_3_0.tar?dl=0>
