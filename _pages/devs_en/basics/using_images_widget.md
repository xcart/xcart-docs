---
title: Image widget, uploading and storage
identifier: ref_IwyaUWEq
updated_at: 2015-01-03 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article explains how to use image selection widget in X-Cart as well as how to attach images to an entity. For the sake of example, we will create a mod that will add secondary images field for a product. Merchant will be able to assign any number of secondary images to a product and these images will be shown on product details page in customer area.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
    *   [Create an empty module](#create-an-empty-module)
    *   [Decorate Product class](#decorate-product-class)
    *   [Create SecondaryImage class](#create-secondaryimage-class)
    *   [Tweaking design of admin and customer interfaces](#tweaking-design-of-admin-and-customer-interfaces)
    *   [Checking the results](#checking-the-results)
*   [Module pack](#module-pack)

## Implementation

### Create an empty module

First of all, we {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ImageDemo**.

### Decorate Product class

Inside this module, we {% link "decorate" ref_AF6bmvL6 %} the `\XLite\Model\Product` class as we want to add a new property to it as follows: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ImageDemo\Model;

abstract class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
{
    /**
     * @OneToMany (targetEntity="XLite\Module\Tony\ImageDemo\Model\Image\Product\SecondaryImage", mappedBy="product", cascade={"all"})
     * @OrderBy   ({"orderby" = "ASC"})
     */	
	protected $secondaryImages;

	public function __construct(array $data = array())
	{
		parent::__construct($data);

		$this->secondaryImages = new \Doctrine\Common\Collections\ArrayCollection();
	}
}
```

Let us have a closer look at this implementation.

1.  We {% link "add a new property to a product object" ref_2bJSTtR3 %}: 

    ```php
        /**
         * @OneToMany (targetEntity="\XLite\Module\Tony\ImageDemo\Model\Image\Product\SecondaryImage", mappedBy="product", cascade={"all"})
         * @OrderBy   ({"orderby" = "ASC"})
         */	
    	protected $secondaryImages;
    ```

    We define it as `OneToMany`, which means that one product can have many secondary images, while a secondary image is always have a single relation to a product.

    ```php
    @OneToMany
    ```

    The secondary image object is defined by the `\XLite\Module\Tony\ImageDemo\Model\Image\Product\SecondaryImage` class:

    ```php
    targetEntity="\XLite\Module\Tony\ImageDemo\Model\Image\Product\SecondaryImage"
    ```

    This class does not exist yet, so we will have to create it as a next step. Then, we specify that each record about **SecondaryImage** object must contain a reference to its product object: 

    ```php
    mappedBy="product"
    ```

    Learn more about `[mappedBy](http://doctrine-orm.readthedocs.org/en/latest/reference/association-mapping.html#one-to-many-bidirectional)` in Doctrine 2 docs. Also, using `mappedBy` in **Product** class means that we will have to use `inversedBy` directive in **SecondaryImage** class in order to create **bidirectional** relation. This way we will be able to access **SecondaryImage** object from **Product** object `$product->getSecondaryImages()` as well as access **Product** object from **SecondaryImage** object `$secondaryImage->getProduct()`. 

    ```php
    cascade={"all"}
    ```

    This directive defines that **SecondaryImage** objects are associated with its **Product** object and if we remove, clone, etc Product entity, the same will happen to SecondaryImage objects linked to it. Learn more about [cascade](http://doctrine-orm.readthedocs.org/en/latest/reference/working-with-associations.html#transitive-persistence-cascade-operations) in Doctrine 2 docs. 

    ```php
    @OrderBy   ({"orderby" = "ASC"})
    ```

    This directive means that SecondaryImage objects will be ordered by SecondaryImage's `orderby` field.

2.  We also alter constructor method a bit: 

    ```php
    	public function __construct(array $data = array())
    	{
    		parent::__construct($data);

    		$this->secondaryImages = new \Doctrine\Common\Collections\ArrayCollection();
    	}
    ```

    telling Product class that `secondaryImages` property is an array.

### Create SecondaryImage class

We create the `<X-Cart>/classes/XLite/Module/Tony/ImageDemo/Model/Image/Product/SecondaryImage.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ImageDemo\Model\Image\Product;

/**
 * @Entity
 * @Table  (name="product_secondary_images")
 */
class SecondaryImage extends \XLite\Model\Base\Image
{
    /**
     * @Column (type="integer")
     */
    protected $orderby = 0;

    /**
     * @ManyToOne  (targetEntity="\XLite\Model\Product", inversedBy="secondary_images")
     * @JoinColumn (name="product_id", referencedColumnName="product_id")
     */
    protected $product;

    /**
     * @Column (type="string", length=255)
     */
    protected $alt = '';
}
```

Let us have a look at each important moment of this **SecondaryImage** class:

1.  The directive: 

    ```php
    @Entity
    ```

    means that this class defines a new entity.

2.  We define the name of the table where info about these objects will be stored: 

    ```php
    @Table  (name="product_secondary_images")
    ```

    In our case, this table will be `xc**_****product_secondary_images**`, assuming you have not changed table prefix in config.

3.  We create our `SecondaryImage` class based on standard `\XLite\Model\Base\Image` image class: 

    ```php
    class SecondaryImage extends \XLite\Model\Base\Image
    ```

4.  Our image class will have three additional properties: `$orderby` field for sorting facilities, `$product` property as a link to a parent product object and `$alt` field that will define a text for HTML alt property.
5.  Implementation of `$orderby` and `$alt` properties is quite straight-forwart, while `$product` is more complex: 

    ```php
        /**
         * @ManyToOne  (targetEntity="\XLite\Model\Product", inversedBy="secondaryImages")
         * @JoinColumn (name="product_id", referencedColumnName="product_id")
         */
    ```

    We create a backward relation to `\XLite\Model\Product` class similar to `$secondaryImages` property in `\XLite\Module\Tony\ImageDemo\Model\Product` class.

6.  We define `$product` property as `@ManyToOne` – because one secondary image can be assigned to a single product, while a product can have multiple secondary images assigned – and link it to `$secondaryImages` property of the `\XLite\Model\Product` class:

    ```php
    @ManyToOne  (targetEntity="\XLite\Model\Product", inversedBy="secondaryImages")
    ```

     We also specify that MySQL table where secondary images are stored must contain the `product_id` column with value of parent image's ID in order to create this relation: 

    ```php
    @JoinColumn (name="product_id", referencedColumnName="product_id")
    ```

7.  Now it is time to create the repository class that will handle pulling info about **SecondaryImage** objects from the database. We create the `<X-Cart>/classes/XLite/Module/Tony/ImageDemo/Model/Repo/Image/Product/SecondaryImage.php` file with the following content: 

    ```php
    <?php
    // vim: set ts=4 sw=4 sts=4 et:

    namespace XLite\Module\Tony\ImageDemo\Model\Repo\Image\Product;

    class SecondaryImage extends \XLite\Model\Repo\Base\Image
    {
        protected $defaultOrderBy = 'orderby';

        /**
         * Returns the name of the directory within 'root/images' where images stored
         */
        public function getStorageName()
        {
            return 'product_secondary';
        }
    }
    ```

    We extend the standard `\XLite\Model\Repo\Base\Image` repository class and use it as a template: 

    ```php
    class SecondaryImage extends \XLite\Model\Repo\Base\Image
    ```

    We define that a filed that will be used for sorting by default is `orderby`: 

    ```php
    protected $defaultOrderBy = 'orderby';
    ```

    Also, we define a folder where secondary image files will be stored as `<X-Cart>/images/product_secondary/` 

    ```php
        public function getStorageName()
        {
            return 'product_secondary';
        }
    ```

    We are done with creating **SecondaryImage** entity.

### Tweaking design of admin and customer interfaces

First, we need to allow merchant to upload secondary images for a product on product details page in admin area. Similar task is already described in {% link "one of previous articles" ref_2bJSTtR3 %}.

We need to decorate `\XLite\View\Model\Product` class, so we create the `<X-Cart>/classes/XLite/Module/Tony/ImageDemo/View/Model/Product.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ImageDemo\View\Model;

/**
 * Product view model
 */
abstract class Product extends \XLite\View\Model\Product implements \XLite\Base\IDecorator
{
	public function __construct(array $params = array(), array $sections = array())
	{
		parent::__construct($params, $sections);
		$this->schemaDefault['secondaryImages'] = array(
            self::SCHEMA_CLASS    => '\XLite\View\FormField\FileUploader\Image',
            self::SCHEMA_LABEL    => 'Secondary images',
            self::SCHEMA_REQUIRED => false,
            \XLite\View\FormField\FileUploader\Image::PARAM_MULTIPLE => true,
        );
	}
}
```

You should note that `SCHEMA_CLASS` param is defined as `\XLite\View\FormField\FileUploader\Image`. This class defines a widget that allows choosing files for upload and it only accepts images. Also, we specify the `\XLite\View\FormField\FileUploader\Image::PARAM_MULTIPLE` param as `true` in order to allow multiple images to be uploaded for a product.

Besides that, we need to display secondary images in store-front. For that we {% link "create a template" ref_E88KCMDD#Step2-applyingdesignchanges-Addingnewtemplatesandwidgets %} that will be shown on product details page. We create the
`<X-Cart>/skins/default/en/modules/Tony/ImageDemo/secondary-images.tpl` with the following content: 

```php
{* vim: set ts=2 sw=2 sts=2 et: *}

{**
 * @ListChild (list="product.details.page", weight="80")
 *}
<div>
	<div>Secondary images:</div>
	<div FOREACH="product.getSecondaryImages(),image" >
		<widget class="\XLite\View\Image" image="{image}" maxWidth="200" maxHeight="200" />
	</div>
</div>
```

In this template, we go through each secondary image object and then call `<widget class="\XLite\View\Image" image="{image}" />` in order to build proper HTML code for it. This widget also performs image resize on-the-fly if needed.

### Checking the results

Now we need to re-deploy the store and check the results. First we go to a product details page in admin area and try to add secondary images: ![]({{site.baseurl}}/attachments/8225295/8356163.png)

After we save the changes, we go to this product details page in customer zone and should be able to see the following results:![]({{site.baseurl}}/attachments/8225295/8356164.png)

## Module pack

You can download the example of this module from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ImageDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ImageDemo-v5_1_0.tar)

## Attachments:

* [secondary-images-admin.png]({{site.baseurl}}/attachments/8225295/8356163.png) (image/png)
* [secondary-images-customer-area.png]({{site.baseurl}}/attachments/8225295/8356164.png) (image/png)