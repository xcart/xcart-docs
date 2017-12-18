---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-13 16:59 +0400'
title: Adding new property to a product
identifier: ref_2bJSTtR3
order: 80
categories:
  - Developer docs
  - Demo module
published: true
redirect_from:
  - /basics/adding_new_property_to_a_product/in-5.3.x.html
---
## Introduction

This article explains how to add a new field to a product in X-Cart and then display its value on some page. For the sake of example, we will add a new property called 'My Message' to a product and if it is not empty, it will be displayed on product details page in customer area.

## Table of Contents
* [Introduction](#introduction)
* [Table of Contents](#table-of-contents)
* [Creating the module](#creating-the-module)
* [Decorating model class](#decorating-model-class)
* [Decorating viewer class](#decorating-viewer-class)
* [Displaying field value in customer area](#displaying-field-value-in-customer-area)
* [Module pack](#module-pack)

## Creating the module

We start off with {% link "creating a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **ProductPropertyDemo**.

## Decorating model class

To add 'My Message' field to default product model, we need to decorate `\XLite\Model\Product` class. We create the `classes/XLite/Module/XCExample/ProductPropertyDemo/Model/Product.php` file with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\ProductPropertyDemo\Model;
 
abstract class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
{
    /**
     * @Column (type="string")
     */
    protected $myMessage;
 
    public function getMyMessage()
    {
        return $this->myMessage;
    }
 
    public function setMyMessage($value)
    {
        $this->myMessage = $value;
        return $this;
    }
}
```

The most important part of this PHP file is the declaration of the field:

```php
    /**
     * @Column (type="string")
     */
    protected $myMessage;
```

It tells X-Cart that now product model also has 'myMessage' field and its type is `string`. 

We also create getter and setter methods for this field, so that it can be accessed and changed from outside the class:

```php
    public function getMyMessage()
    {
        return $this->myMessage;
    }

    public function setMyMessage($value)
    {
        $this->myMessage = $value;
        return $this;
    }
```

## Decorating viewer class
Now we need to change the product details page in admin area and display our newly added field there. For that we need to decorate the `\XLite\View\FormModel\Product\Info` class.

We create the `classes/XLite/Module/XCExample/ProductPropertyDemo/View/FormModel/Product/Info.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:
 
namespace XLite\Module\XCExample\ProductPropertyDemo\View\FormModel\Product;
 
/**
 * Product form model
 */
abstract class Info extends \XLite\View\FormModel\Product\Info implements \XLite\Base\IDecorator
{
    protected function defineFields()
    {
        $schema = parent::defineFields();
 
        $schema['default']['myMessage'] = [
            'label'     => static::t('My message'),
            'position'  => 900,
        ];
 
        return $schema;
    }
 
}
```

It tells X-Cart that we need to display the 'My Message' field in `default` section with 900 weight. Other possible sections are `prices_and_inventory`, `shipping` and `marketing`.

If we refresh the page now, we will see a new field 'My Message', but X-Cart will not save its value and even if we go to the database and adjust the value for a product there, the page will not reflect that. This is because communication between model and the viewer class is done via data-transfer object (DTO) `\XLite\Model\DTO\Product\Info`, so we need to decorate DTO and add info about our field there.

For that we create the `classes/XLite/Module/XCExample/ProductPropertyDemo/Model/DTO/Product/Info.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:
 
namespace XLite\Module\XCExample\ProductPropertyDemo\Model\DTO\Product;
 
/**
 * Abstract widget
 */
abstract class Info extends \XLite\Model\DTO\Product\Info implements \XLite\Base\IDecorator
{
    protected function init($object)
    {
        parent::init($object);
 
        $this->default->myMessage = $object->getMyMessage();
    }
 
    /**
     * @param \XLite\Model\Product $object
     * @param array|null           $rawData
     *
     * @return mixed
     */
    public function populateTo($object, $rawData = null)
    {
        parent::populateTo($object, $rawData);
 
        $object->setMyMessage((string) $this->default->myMessage);
    }
}
```

This class has two methods:
1. `init()` defines what happens when we prepare data before showing product details page in admin area. At this point we want to pass current value of My Message field to DTO, so we call: `$this->default->myMessage = $object->getMyMessage()`. `$object` is current product's object;
2. `populateTo()` defines what happens we submit a form with product details in admin area. In this case, we take value from the form and save it as a current value for the product object, so we call `$object->setMyMessage((string) $this->default->myMessage);`.

If you refresh the page now and try to save a new value for My Message field, it will be successfully saved.

## Displaying field value in customer area
Now let us create a template that will display value of 'My message' field in customer area. For that we create `skins/customer/modules/XCExample/ProductPropertyDemo/product/my_message.twig` file with the following code:

```html
{##
 # @ListChild (list="product.details.page.info", weight="30")
 #}
 
{% if this.getProduct().getMyMessage() %}
<h2>My message</h2>
<div>{{ this.getProduct().getMyMessage() }}</div>
{% endif %}
```

As you can see you can access this new property in template the same way as other properties: by calling getter method on product object:
```html
{{ this.getProduct().getMyMessage() }}
```

## Module pack
You can download this module pack from here: [https://www.dropbox.com/s/ny81po07zxqnvku/XCExample-ProductPropertyDemo-v5_3_0.tar](https://www.dropbox.com/s/ny81po07zxqnvku/XCExample-ProductPropertyDemo-v5_3_0.tar?dl=0)