---
title: Adding product property via FormModel API
identifier: ref_productprop_formmodel
updated_at: 2016-09-29 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.3.0 and later
order: 80
---

## Introduction

This guide shows how to add a property to the product entity and provide the UI to edit it. Due to adoption of the new {% link 'FormModel API' ref_bOmExTXA %} in the product configuration page, {% link 'old method' ref_2bJSTtR3 %} is no longer applicable and you have to upgrade existing modifications.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
    *   [Adding new field to product model](#adding-new-field-to-product-model)
    *   [Creating interface for editing this field](#creating-interface-for-editing-this-field)
    *   [Transfering data from form to entity and back](#transfering-data-from-form-to-entity-and-back)
    *   [Displaying the field value](#displaying-the-field-value)

## Implementation

First of all, {% link "create a new module" ref_G2mlgckf %}. We are creating a module with developer ID **XCExample** and module ID **NewProductFieldDemo**.

### Adding new field to product model

This part is basically identical to the old guide, no changes here except we have to create getter and setter manually.

{% link "Decorate" ref_AF6bmvL6 %} the `\XLite\Model\Product` class ({% link "more info about X-Cart classnames" ref_FAgFbEx9 %}). We are creating the `<X-Cart>/classes/XLite/Module/XCExample/NewProductFieldDemo/Model/Product.php` file with the following content: 

```php
<?php

namespace XLite\Module\XCExample\NewProductFieldDemo\Model;

class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
{
    /**
     * @Column (type="string", length=32)
     */
    protected $testField;

    /**
     * Public getter
     * @return string
     */
    public function getTestField() {
      return $this->testField;
    }

    /**
     * Public setter
     * @param string $value
     */
    public function setTestField($value) {
      return $this->testField;
    }
}
```

Voilà, you can proceed to creating an UI for that field.

### Creating interface for field editing

To be able to specify value of this property on product details page in admin area, we have to decorate `\XLite\View\FormModel\Product\Info` class and create
`<X-Cart>/classes/XLite/Module/XCExample/NewProductFieldDemo/View/FormModel/Product/Info.php` file with the following content: 

```php
<?php

namespace XLite\Module\XCExample\NewProductFieldDemo\View\FormModel\Product;

class Info extends \XLite\View\FormModel\Product\Info implements \XLite\Base\IDecorator
{
    /**
     * @return array
     */
    protected function defineFields()
    {
        $schema = parent::defineFields();

        $schema[self::SECTION_DEFAULT]['testField'] = [
            'label'      => static::t('Test field'),
            'position'   => 100,
        ];

        return $schema;
    }
}
```

Such code will add a new field to the product details page in admin area. This field will be named **Test field** and its value will be presented as 'testField' variable in request data. By default, field type is simple text input, but you can change it via `type` parameter.

{% note info %}
Note: see an example of creating model editing form with more detailed explanation here: {% link "Editable form model" ref_8MoO0Ob %}.
{% endnote %}

{% note warning %}
Every field must be assigned to a certain section. By default, product page form contains several sections: the __default__ one, __Prices & Inventory__, __Shipping__, __Marketing__. You can assign your field to one of them or create a new one through decorating the `defineSections()` method.
{% endnote %}

### Transfering data from form to entity and back

The major change from old way to create editable entity properties is that UI representation of the property is completely separated from its model and persistance scheme.

That requires us to define a way to transfer user input from request data to the storage and back. Transfer can be achieved through [Data Transfer Object](https://en.wikipedia.org/wiki/Data_transfer_object) pattern and implemented in X-Cart via `\XLite\Model\DTO\*` classes.

The following code will decorate the class `\XLite\Model\DTO\Product\Info` (which is responsible for transfering data from product editing page):

```php
<?php

namespace XLite\Module\XCExample\NewProductFieldDemo\Model\DTO\Product;

/**
 * Product
 */
class Info extends \XLite\Model\DTO\Product\Info implements \XLite\Base\IDecorator
{
    /**
     * Method to initialize default data
     *
     * @param mixed|\XLite\Model\Product $object
     */
    protected function init($object)
    {
        parent::init($object);

        // Here you have all sections data available through $this->default, $this->shipping, $this->marketing etc.
        $this->default->testField = $object->getTestField();
    }

    /**
     * Method which transfers data from DTO to given object (product entity, in our case)
     *
     * @param \XLite\Model\Product $object
     * @param array|null           $rawData
     *
     * @return mixed
     */
    public function populateTo($object, $rawData = null)
    {
        parent::populateTo($object, $rawData);

        // The same here, $this->default, $this->shipping etc. vars contain the state of the field sections.

        $object->setTestField($this->default->testField);
    }

    /**
     * @param Info                      $dto
     * @param ExecutionContextInterface $context
     */
    public static function validate($dto, ExecutionContextInterface $context)
    {
        parent::validate($dto, $context);

        if (!empty($dto->default->testField) && static::isTestFieldUnique($dto)) {
            static::addViolation($context, 'default.testField', Translation::lbl('Test field must be unique'));
        }
    }

    protected static function isTestFieldUnique($dto)
    {
        $testField = $dto->default->testField;
        $identity = $dto->default->identity; // Entity identifier, e.g. product ID

        $entity = \XLite\Core\Database::getRepo('XLite\Model\Product')->findOneByTestField($testField);

        return !$entity || (int) $entity->getProductId() === (int) $identity;
    }
}
```

In DTO class you can define several aspects of data transfer:

-   Initial form state via `init($object)` function. You can use a plain getter as in example, or define some complex logic.

-   Transfer to object via `populateTo($object, $rawData)` function. Use plain setters or populate a collection, or do some preprocessing, depending on your entity field type and needs.

-   (**Optional**) Domain-level data validation via `validateTo($dto, $context)` function. Run the code to test field against the domain rules. Don't run format validation here, the right way is to define constraints in `View\FormModel` class.

{% note info %}
You should use `$this->default` and other section vars inside `init()` and `populateTo()` function to access DTO data. For the product, there are `$this->default`, `$this->prices_and_inventory`, `$this->shipping`, `$this->marketing` vars available by default.
{% endnote %}

### Displaying the field value

Finally, we can display the value of this field on some page. As an example, we will show it on the **Invoice** page after a customer completes his checkout.

In order to achieve it, we'll create the `<X-Cart>/skins/customer/modules/XCExample/NewProductFieldDemo/item.test-field.twig` template with the following content: 

```twig
{##
 # Test field item cell
 #
 # @ListChild (list="invoice.item.name", weight="20")
 #}
<li class="test-field">
  <span class="name">{{ t('Test field') }}</span>
  <span class="field-value">{{ this.item.getTestField() }}</span>
</li>

```

