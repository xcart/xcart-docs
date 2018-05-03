---
lang: en
layout: article_with_sidebar
updated_at: '2015-12-02 00:00'
title: Module dependencies
identifier: ref_xdDPawlG
order: 46
categories:
  - Developer docs
  - Demo module
published: true
---
## Introduction

This article aims to show developers how to give priority to one class over another during the {% link "decoration process" ref_AF6bmvL6 %}. It also shows how one module can require another one for proper work.

{% toc Table of Contents %}

## Understanding the problem

Imagine the situation: you are writing a module that correlates with another one. A typical case - you want to override a customer menu on the storefront.

The top menu is defined in the core class `\XLite\View\Menu\Customer\Top` (see the article about {% link "class names" ref_FAgFbEx9 %}):

By default, top menu is empty and the **SimpleCMS** module overrides the `\XLite\View\Menu\Customer\Top` class by `\XLite\Module\CDev\SimpleCMS\View\Menu\Customer\Top` one and actually creates the top menu we see. 

If we want to replace existing menu and show our items no matter whether the module **SimpleCMS** is enabled or not, we must be sure that our module decorates the core class `\XLite\View\Menu\Customer\Top` after the SimpleCMS' class, otherwise SimpleCMS will just ignore our implementation of the menu.

## Solution

1.  {% link "Create a module" ref_G2mlgckf %}. We create it with 
developer ID **XCExample** and module ID **OverridingTopMenu**.
2.  To define our version of top menu in store-front, we need to decorate the method `defineItems()` of the class `\XLite\View\Menu\Customer\Top`.
3.  We create the file `classes/XLite/Module/XCExample/OverridingTopMenu/View/Menu/Customer/Top.php` with the following content: 

    ```php
	<?php
 
	namespace XLite\Module\XCExample\OverridingTopMenu\View\Menu\Customer;
 
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

4.  If we leave this code as is, our module will work properly with the module SimpleCMS disabled, but if it is enabled, SimpleCMS will still override our change.
5.  In order to overcome the situation, we create the file `classes/XLite/Module/Tony/OverridingTopMenu/View/Menu/Customer/TopAfterSimpleCMS.php` with the following content: 

    ```php
	<?php
 
	namespace XLite\Module\XCExample\OverridingTopMenu\View\Menu\Customer;
 
	/**
	 * @Decorator\Depend ("CDev\SimpleCMS")
	 */
 
	class TopAfterSimpleCMS extends \XLite\View\Menu\Customer\Top implements \XLite\Base\IDecorator 
	{
    	protected function defineItems()
	    {
    	    return $this->getMyItems();
	    }
	}
    ```

    _Note: The viewer class name can be whatever you want – it does not have to be TopAfterSimpleCMS, but its name has to be the same as the .php filename it is declared in._
    
    As you can see, its implementation is similar, we are overriding the method `defineItems()` that calls the method `getMyItems()` which was declared in our first viewer class. However, there is the directive 

    ```php
	/**
	 * @Decorator\Depend ("CDev\SimpleCMS")
	 */
    ```

    which tells X-Cart that this class (TopAfterSimpleCMS) must decorate the `\XLite\View\Menu\Customer\Top` one only after all viewer classes of the SimpleCMS module. On the other hand, if there is no SimpleCMS module enabled in the system, then this decoration will never happen, but our first class will still apply the needed change.
    The directive `@Decorator\Depend ()` has to be put into PHP comments according to [DocBlock standard](http://www.phpdoc.org/docs/latest/getting-started/your-first-set-of-documentation.html#what-does-a-docblock-look-like); in other words, it must start with the `/**` construction, end with the `*/` construction, and every line between those must start with the `*` symbol. If the `@Decorator\Depend` directive is put in any other format, X-Cart will not be able to fetch and use it.

6. Check results in store-front. You should only see the **Google menu** item in the storefront, no matter if the module SimpleCMS is enabled or not.

## All available directives

X-Cart has three directives that can be used in order to define an order of class decorators:
- `@Decorator\Depend` directive means that decoration will happen only if such module is enabled.
- `@Decorator\After` directive means that decoration will happen after decorations of such module. If the module is not enabled, such directive will be ignored and our decorator will work as regular one. Essentially, we could have written the same mod using `@Decorator\After` directive and using only one class, instead of two.
- `@Decorator\Before` is similar to `@Decorator\After`, but X-Cart will put your decorators before decorators of the given module. If there is no given module, the directive will be ignored.

Examples of usage:
- `@Decorator\Before ("CDev\SimpleCMS")`;
- `@Decorator\After ({"CDev\SimpleCMS", "CDev\Coupons"})`, if you need to specify dependency on several modules;
- `@Decorator\Depend("!CDev\SimpleCMS")`, if you need to decorate a class in case the module is NOT in the system.

## Module pack

You can download this sample module from here: <https://www.dropbox.com/s/c2pc4gxe908hhco/XCExample-OverridingTopMenu-v5_3_0.tar>

## What if one module requires another one to work properly

In this case, you need to make the entire module to be dependent on that other one.

For example, we want to write a module that can work only if the module **CDev\SimpleCMS** is installed and enabled. It can be true if our module is an adjustment of the SimpleCMS.

Here is how we can achieve that.

1.  We create the module with developer ID **XCExample** and module ID **DependenciesDemo**.
2.  We add the following method to the file `Main.php` of your module: 

    ```php
        public static function getDependencies()
        {
            return array('CDev\SimpleCMS');
        }
    ```

3.  This method tells X-Cart that our 'DependenciesDemo' module cannot work without the module SimpleCMS enabled. X-Cart will not even allow to enable it, if SimpleCMS is not active.
![example-dependencies-demo.png]({{site.baseurl}}/attachments/ref_xdDPawlG/example-dependencies-demo.png)

4.  Note that if the 'DependenciesDemo' module is active, you cannot disable the 'SimpleCMS' module either.
![]({{site.baseurl}}/attachments/ref_xdDPawlG/simple-cms.png)

## Second module pack

Еxample of the DependenciesDemo module can be downloaded from here: <https://www.dropbox.com/s/94cqbnvlsapm7nm/XCExample-DependenciesDemo-v5_3_0.tar>