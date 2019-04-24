---
lang: en
layout: article_with_sidebar
updated_at: '2017-08-22 15:57 +0400'
title: Basics of working with product attributes
identifier: ref_681m1O5Q
order: 100
published: true
---

## Introduction

In this article we will show how you can pull product attributes for given product. For that we will create a simple module that will list all product attributes on product details page in customer area.

{% toc Table of Contents %}

## Creating a module

Before we get started let us go to any product details in admin area and create a bunch of attributes for it. I use product Astro A30 System for this example. Attributes should be different, so we create:
- Plain field attribute with mulit-value (Color: Black / White);
- Plain field attribute without multi-value (Size: One size);
- Yes/No attribute (Gift Wrapping: Yes);
- Textarea attribute (Compatibility: Works with ...)

My attributes will look as follows for the product:
![]({{site.baseurl}}/attachments/ref_681m1O5Q/product-attributes-admin.png)

Now we can start creating the module. We {% link "create a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **AttributesDemo**.

Then, we create {% link "a simple viewer class" ref_6dMJsZ63 %}. For that we create `classes\XLite\Module\XCExample\AttributesDemo\View\AttributesDemo.php` file with the following content:

```php
<?php
 
namespace XLite\Module\XCExample\AttributesDemo\View;
 
/**
 * @ListChild (list="product.details.page.info", weight="30", zone="customer")
 */
 
class AttributesDemo extends \XLite\View\AView
{
    protected function getDefaultTemplate()
    {
        return 'modules\XCExample\AttributesDemo\attributes_demo\body.twig';
    }
}
```

It says that we are going to insert our viewer class into product details page (view list: `product.details.page.info`) and that it is going to use template `skins/customer/modules/XCExample/AttributesDemo/attributes_demo/body.twig`

Let us create this template as well with the following code in it:

```html
<div>
    <h2>Attribute Details</h2>
</div>
```

Once we are done, rebuild the cache and make sure that now your product details page actually displays this new ‘Attribute Details’ section.

## Pulling product attributes and its values
Now it is important to understand that there are two different entities in X-Cart 5: product attributes and attribute values. Product attribute is one of product characteristics: size, color, shape, etc. Product attribute value is a value that this product attribute can have: S, M, L for size; black and white for color and so on.

This difference is important, because X-Cart has different classes for product attributes and for its values.

Currently there are three attribute value types in X-Cart 5:
1. Plain field or Select One. Such attribute can have multiple values and then it acts as an option that a customer needs to choose. Or it can have a single value, in this case info about this attribute will be displayed in Specification in customer area.
2. Yes/No or Checkbox. This attribute can be Yes or No. It is also only displayed in Specification area in customer zone.
3. Textarea. Such attribute allows to have big text as its value and admin can allow a customer to specify their own value for this attribute (e.g. engraving for a ring).

These three types are important to know, because values of different attribute types are handled by three different classes. However, these classes are pretty similar.

Let us pull all product attributes for a product and then pull all values of these attributes. For that, edit `\XLite\Module\XCExample\AttributesDemo\View\AttributesDemo` and add the following method there:

```php
    protected function getAttributeInfo()
    {        
        foreach ($this->getProduct()->getAttributes() as $attribute) {
 
            // to see more info about attribute object, look into \XLite\Model\Attribute class
            // classes/XLite/Model/Attribute.php
 
            $result = array (
                'name'      => $attribute->getName(),
                'type'      => $attribute->getType(),
                'values'    => array(),
            );
 
            foreach ($attribute->getAttributeValues() as $attributeValue) {
                if (
                    in_array(
                        $attribute->getType(),
                        array(
                            \XLite\Model\Attribute::TYPE_CHECKBOX,
                            \XLite\Model\Attribute::TYPE_TEXT
                        )
                    )
                ) {
                    $result['values'][] = $attributeValue->getValue();
 
                    // more info about attribute value objects in \XLite\Model\AttributeValue\AttributeValueCheckbox
                    // and \XLite\Model\AttributeValue\AttributeValueText classes
 
                } elseif ($attribute->getType() == \XLite\Model\Attribute::TYPE_SELECT) {
 
                    $result['values'][] = $attributeValue->asString();
 
                }
 
            }
 
            $return[] = $result;
 
        }
 
        return $return;
    }
```

As you can see you can access all product attributes by calling `$product->getAttributes()`. This method returns an array of objects of all product attributes and we can pull product attribute names and types:

```php
$attribute->getName();
$attribute->getType();
```

If we have an attribute object, then we can access its attribute values by calling `$attribute->getAttributeValues()` method. It returns an array of product attribute values. However, getting a plain attribute value depends on an attribute value type. If it is Yes/No or Textarea, then we can do it as `$attributeValue->getValue()`. If it is Select, then we should call `$attributeValue->asString()`.

Now, let us edit our template and add a code to display the attribute information on product details page. New code for the template will look like this:

```html
<div>
    <h2>Attribute Details</h2>
    <div>
    {% for attributeDetails in this.getAttributeInfo() %}
        <ol>
            <li>Name: {{ attributeDetails.name }}</li>
            <li>Type: {{ this.getAttributeTypeByCode(attributeDetails.type) }}</li>
            <li>Values:
                <ol>
                {% for value in attributeDetails.values %}
                    <li>{{ value }}</li>
                {% endfor%}
                </ol>
            </li>
        </ol>
    {% endfor %}
    </div>
</div>
```

It walks through the attribute info array and displays attribute name, type and values. We also need to add `getAttributeTypeByCode()` method to our viewer class, so that we can display proper attribute types instead of their service name. Final version of the `classes/XLite/Module/XCExample/AttributesDemo/View/AttributesDemo.php` file will be as follows:

```php
<?php
 
namespace XLite\Module\XCExample\AttributesDemo\View;
 
/**
 * @ListChild (list="product.details.page.info", weight="30", zone="customer")
 */
 
class AttributesDemo extends \XLite\View\AView
{
    protected function getDefaultTemplate()
    {
        return 'modules\XCExample\AttributesDemo\attributes_demo\body.twig';
    }
 
    protected function getAttributeInfo()
    {        
        foreach ($this->getProduct()->getAttributes() as $attribute) {
 
            // to see more info about attribute object, look into \XLite\Model\Attribute class
            // classes/XLite/Model/Attribute.php
 
            $result = array (
                'name'      => $attribute->getName(),
                'type'      => $attribute->getType(),
                'values'    => array(),
            );
 
            foreach ($attribute->getAttributeValues() as $attributeValue) {
                if (
                    in_array(
                        $attribute->getType(),
                        array(
                            \XLite\Model\Attribute::TYPE_CHECKBOX,
                            \XLite\Model\Attribute::TYPE_TEXT
                        )
                    )
                ) {
                    $result['values'][] = $attributeValue->getValue();
 
                    // more info about attribute value objects in \XLite\Model\AttributeValue\AttributeValueCheckbox
                    // and \XLite\Model\AttributeValue\AttributeValueText classes
 
                } elseif ($attribute->getType() == \XLite\Model\Attribute::TYPE_SELECT) {
 
                    $result['values'][] = $attributeValue->asString();
 
                }
 
            }
 
            $return[] = $result;
 
        }
 
        return $return;
    }
 
    public function getAttributeTypeByCode($code)
    {
        return \XLite\Model\Attribute::getTypes($code);
    }
}
```

Now you can refresh the page and it will displays an information about this product attributes as follows:
![]({{site.baseurl}}/attachments/ref_681m1O5Q/attribute-info.png)

## Module pack
You can download the aforementioned module from here: [https://www.dropbox.com/s/28g7ozp0m23mf3f/XCExample-AttributesDemo-v5_3_0.tar](https://www.dropbox.com/s/28g7ozp0m23mf3f/XCExample-AttributesDemo-v5_3_0.tar?dl=0 "Basics of working with product attributes")
