---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-28 16:28 +0400'
identifier: ref_74D8LsxZ
title: Increasing sku's length
order: 100
published: false
---
## Introduction

This article explains how you can increase sku's length for your products. X-Cart limits sku to 32 characters and if you want to increase this value, you need to write a small mod.

{% toc Table of Contents %}

## Implementation

1. {% link "Create a module" ref_G2mlgckf %}. We create a module with developer ID **XCMod** and module ID **SkuLength**.
2. Default sku's length is defined by this piece of code in the `\XLite\Model\Product` class ({% link "more info about namespaces" ref_FAgFbEx9 %}):
	```php
    /**
     * ...
     * @Column (type="string", length=32, nullable=true)
     */
    protected $sku;    
    ```
    
	This `length=32` bit is what limits the sku's length. In order to change that, we should {% link "decorate" ref_AF6bmvL6 %} `\XLite\Model\Product` class and define this line to contain `length=255` piece instead.
    
    To decorate the class, we create `classes/XLite/Module/XCMod/SkuLength/Model/Product.php` file with the following content:
    ```php
    <?php
	namespace XLite\Module\XCMod\SkuLength\Model;

	/**
	 * The "product" model class
	 */
	abstract class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
	{
	   /**
	    * Product SKU
	    *
    	* @var string
	    *
    	* @Column (type="string", length=255, nullable=true)
	    */
	   protected $sku;    
	}
    ```
    
That is it. Once you enable this module, your product sku's length will be increased to 255 characters.

## Module pack
You can downlad this module pack from here: <https://www.dropbox.com/s/5ukvxs295m590rt/XCMod-SkuLength-v5_3_0.tar>