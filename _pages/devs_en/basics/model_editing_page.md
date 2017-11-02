---
title: ViewModel and entity editing page
identifier: ref_LanG54L9
updated_at: 2015-01-14 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.1 - 5.3
order: 49
description: During module creation developers sometimes create complex entities that
  require a separate page for editing of its properties. This article will explain
  how you can create a page where you can edit certain fields of a model.
keywords:
- forms
- module example
- form schema
- entities
- models
- model editing
- view model
categories:
- Developer docs
- Demo module
---

## Introduction

During module creation developers sometimes {% link "create complex entities" ref_wmExvPDD %} that require a **separate** page for editing of its properties, instead of doing it via {% link "ItemsList" ref_hBpBE0vS %}. This article will explain how you can create a page where you can edit certain fields of a model. For the sake of example, we will create a simple mod that will implement a new page where you can edit a product, but the same principles apply to all other entities as well.

You might want to see another way of creating such page - {% link "New model editing implementation" ref_8MoO0Ob %}. This method utilizes the power of Symfony forms and Twig blocks and is considered more actual.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating a simple module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ModelEditingDemo**. Then, we create a page **target=product_edit** in admin area. For that we create:

*   an empty {% link "controller" ref_hkVaxgds %} class `\XLite\Module\Tony\ModelEditingDemo\Controller\Admin\ProductEdit`;
*   page widget class `\XLite\Module\Tony\ModelEditingDemo\View\Page\Admin\ProductEdit` with the following content: 

    ```php
    <?php
    // vim: set ts=4 sw=4 sts=4 et:

    namespace XLite\Module\Tony\ModelEditingDemo\View\Page\Admin;

    /**
     * Product edit page view
     *
     * @ListChild (list="admin.center", zone="admin")
     */

    class ProductEdit extends \XLite\View\AView
    {
        /**
         * Return list of allowed targets
         *
         * @return array
         */
        public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('product_edit'));
        }

        /**
         * Return widget default template
         *
         * @return string
         */
        protected function getDefaultTemplate()
        {
            return 'modules/Tony/ModelEditingDemo/page/product_edit/body.twig';
        }
    }
    ```

*   an empty page template `<X-Cart>/skins/admin/en/modules/Tony/ModelEditingDemo/page/product_edit/body.twig`.

Now we start creating a widget for **model editing**. For that we create the `<X-Cart>/classes/XLite/Module/Tony/ModelEditingDemo/View/Model/Product.php` file with the following code: 

```php
<?php

namespace XLite\Module\Tony\ModelEditingDemo\View\Model; 

class Product extends \XLite\View\Model\AModel
{
    protected $schemaDefault = array(
        'sku' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Input\Text\SKU',
            self::SCHEMA_LABEL    => 'SKU',
            self::SCHEMA_REQUIRED => false,
        ),
        'name' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Input\Text',
            self::SCHEMA_LABEL    => 'Product Name',
            self::SCHEMA_REQUIRED => true,
        ),
        'price' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Input\Text\Price',
            self::SCHEMA_LABEL    => 'Price',
            self::SCHEMA_REQUIRED => false,
        ),
        'description' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Textarea\Advanced',
            self::SCHEMA_LABEL    => 'Full description',
            self::SCHEMA_REQUIRED => false,
            \XLite\View\FormField\Textarea\Advanced::PARAM_STYLE => 'product-description',
        ),
    );

    public function getModelId()
    {
        return \XLite\Core\Request::getInstance()->product_id;
    }

    protected function getDefaultModelObject()
    {
        $model = $this->getModelId()
            ? \XLite\Core\Database::getRepo('XLite\Model\Product')->find($this->getModelId())
            : null;

        return $model ?: new \XLite\Model\Product;
    }

    protected function getFormClass()
    {
        return '\XLite\Module\Tony\ModelEditingDemo\View\Form\Model\Product';
    }
}
```

Let us have a closer look at this implementation: 

1.  Our class extends an abstract implementation model editing widget (`\XLite\View\Model\AModel`): 

    ```php
    class Product extends \XLite\View\Model\AModel
    ```

2.  Next, we define what fields will be displayed in this widget by defining `$schemaDefault` property: 

    ```php
    protected $schemaDefault = array(
        'sku' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Input\Text\SKU',
            self::SCHEMA_LABEL    => 'SKU',
            self::SCHEMA_REQUIRED => false,
        ),
        'name' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Input\Text',
            self::SCHEMA_LABEL    => 'Product Name',
            self::SCHEMA_REQUIRED => true,
        ),
        'price' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Input\Text\Price',
            self::SCHEMA_LABEL    => 'Price',
            self::SCHEMA_REQUIRED => false,
        ),
        'description' => array(
            self::SCHEMA_CLASS    => 'XLite\View\FormField\Textarea\Advanced',
            self::SCHEMA_LABEL    => 'Full description',
            self::SCHEMA_REQUIRED => false,
            \XLite\View\FormField\Textarea\Advanced::PARAM_STYLE => 'product-description',
        ),
    );
    ```

    This property is an array. **Key** of its elements is a **name** of Model **property** that will be defined in this widget. In our case, they are **sku**, **name**, **price** and **description**. Value of array's elements is an array of parameters that define each field. There are three params: `self::SCHEMA_CLASS` defines a {% link "FormField class" ref_fxJxv6rf %} that will represent this field; `self::SCHEMA_LABEL` defines a label next to model's property field; `self::SCHEMA_REQUIRED` defines whether this field's value is required or not.
    Construction like `\XLite\View\FormField\Textarea\Advanced::PARAM_STYLE => 'product-description'` defines additional parameters for FormField class defined in the `self::SCHEMA_CLASS` param.

3.  After that, we implement the `getDefaultModelObject()` method that will define initial values in fields of our widget: 

    ```php
    public function getModelId()
    {
        return \XLite\Core\Request::getInstance()->product_id;
    }

    protected function getDefaultModelObject()
    {
        $model = $this->getModelId()
            ? \XLite\Core\Database::getRepo('XLite\Model\Product')->find($this->getModelId())
            : null;

        return $model ?: new \XLite\Model\Product;
    }
    ```

    The properties of an object returned by `getDefaultModelObject()` method will be put into widget's form as default values. In the `getDefaultModelObject()` method we just {% link "pull \XLite\Model\Product model" ref_L1zWfWvw %} based on the **product_id** parameter in the request. If there is no **product_id** parameter in the request –`{% link "\XLite\Core\Request::getInstance()->product_id" ref_pvZ8nad3 %}` returns `false` –  we assume that we are going to create a new product, not edit existing one, that is why we create new empty `\XLite\Model\Product` object.

4.  Finally, we implement the `getFormClass()` method that will define a form around our widget: 

    ```php
    protected function getFormClass()
    {
        return '\XLite\Module\Tony\ModelEditingDemo\View\Form\Model\Product';
    }
    ```

Now we need to create the `\XLite\Module\Tony\ModelEditingDemo\View\Form\Model\Produc`t class returned by the `getFormClass()` method as it does not exist yet. For that, we create the
`<X-Cart>/classes/XLite/Module/Tony/ModelEditingDemo/View/Form/Model/Product.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\ModelEditingDemo\View\Form\Model;

class Product extends \XLite\View\Form\AForm
{
    protected function getDefaultTarget()
    {
        return 'product_edit';
    }

    protected function getDefaultAction()
    {
        return 'update';
    }

    protected function getDefaultParams()
    {
        return array(
            'product_id' => \XLite\Core\Request::getInstance()->product_id,
        );
    }
}
```

1.  `getDefaultTarget()` method defines an **action** field of the form. In our case, the request will be submitted to `admin.php?target=product_edit` page;
2.  `getDefaultAction()` method defines a value of `<input type="hidden" name="action" value="" />` element in this form. This param will be used in order to allow controller run proper routine that will handle data submitted. Of course, we will have to add corresponding method – `doActionUpdate()` in our case – to the controller class and we will do it a bit later.
3.  `getDefaultParams()` method defines an array of additional parameters that will be added to the form as `<input type="hidden" name="key-on-an-array" value="value-of-an-array" />` elements, so in our case, we will add `<input type="hidden" name="product_id" value="product-id-from-request" />` element.

Now we are good with the model editing widget and we need to add it to the page template. We go to the `<X-Cart>/skins/admin/en/modules/Tony/ModelEditingDemo/page/product_edit/body.twig` template and define its content as follows: 

```twig
{{ widget('\\XLite\\Module\\Tony\\ModelEditingDemo\\View\\Model\\Product') }}
```

Finally, we have to adjust our `\XLite\Module\Tony\ModelEditingDemo\Controller\Admin\ProductEdit` controller class in order to process requests about saving product model – implement aforementioned `doActionUpdate()` method. We go to the `<X-Cart>/classes/XLite/Module/Tony/ModelEditingDemo/Controller/Admin/ProductEdit.php` file and define its content as follows: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ModelEditingDemo\Controller\Admin;

/**
 * Product edit controller
 */
class ProductEdit extends \XLite\Controller\Admin\AAdmin
{
    protected $params = array('target', 'product_id');

    protected function getModelFormClass()
    {
        return 'XLite\Module\Tony\ModelEditingDemo\View\Model\Product';
    }

    protected function doActionUpdate()
    {
        $this->getModelForm()->performAction('modify');

        if ($this->getProductId() === 0) {
            $this->setReturnURL(
                $this->buildURL(
                    'product_edit',
                    '',
                    array('product_id' => $this->getModelForm()->getModelObject()->getId())
                )
            );
        }
    }

    public function getProductId()
    {
        return \XLite\Core\Request::getInstance()->product_id ?: 0;
    }
}
```

1.  We define `$params` property as: 

    ```php
    protected $params = array('target', 'product_id');
    ```

    and it will tell controller class that only **target** and **product_id** parameters can be accepted.

2.  `getModelFormClass()` method should return the model editing class that will define the model we are going to process (see more in the implementation of `getModelForm()` method of the `\XLite\Controller\AController` class).

3.  `doActionUpdate()` method defines a routine that will be run after we submit a form with the model editing widget values. The main processing happens in this line: 

    ```php
    $this->getModelForm()->performAction('modify');
    ```

    `getModelForm()` returns a model object – `\XLite\Model\Product` in our case – and `performAction('modify')` method will fill it with new values and then save the results in the database.

4.  Also, if we create a new product, we need to properly redirect merchant to this newly created product page, that is why we pull new product id – `$this->getModelForm()->getModelObject()->getId()` – and redirect customer as follows: 

    ```php
    $this->setReturnURL(
        $this->buildURL(
            'product_edit',
            '',
            array('product_id' => $this->getModelForm()->getModelObject()->getId())
        )
    );
    ```

We are done with this mod and now we have to re-deploy the store. After that try to open the `admin.php?target=product_edit` page. You should see the following result:![]({{site.baseurl}}/attachments/8225393/8356184.png)

If you fill this form in and submit it, then you will create a new product.

If you open `admin.php?target=product_edit&product_id=10` page, then you will see the following result (assuming product with ID 10 exists in your database):![]({{site.baseurl}}/attachments/8225393/8356185.png)As you can see, X-Cart picked up properties of this product and now you can edit the product via this form.

## Module pack

You can download this module example for Version 5.1 - 5.2 from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ModelEditingDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ModelEditingDemo-v5_1_0.tar)

## Attachments:

* [product-edit.png]({{site.baseurl}}/attachments/8225393/8356184.png) (image/png)
* [product-edit-2.png]({{site.baseurl}}/attachments/8225393/8356185.png) (image/png)