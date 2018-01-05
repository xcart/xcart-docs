---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-03 14:56 +0400'
title: ''
published: true
identifier: ref_bLhsOAwO
order: 100
---
## Introduction

This article explains how you can create product variants from inside the code instead of doing so via admin interface. This article assumes that you have the module Product Variants enabled.

## Process

To get started, go to X-Cart admin area and pick a test product we are going to work with. Open this product page and look at the address line in your browser. It will be something like this:
`http://localhost/xcart/admin.php?target=product&product_id=30`

Remember the number after `product_id=`. We will use this product ID in our code.

After that, create product attributes as follows:
![product-attributes.png]({{site.baseurl}}/attachments/ref_bLhsOAwO/product-attributes.png)

In other words, we create attribute *Color* with Black and White options and attribute *Size* with S, M and L options.

For the sake of example we are going to write a script that will create a single variant with Color = Black and Size = M. Also, we are going to use {% link "external script" ref_ogmCiRWZ %} in order to showcase the solution.

We create the `test.php` file inside X-Cart directory with the following content. See comments in the code to have an idea of what is going on there:

```php
<?php

// Initializing X-Cart
require_once (dirname(__FILE__) . DIRECTORY_SEPARATOR . 'top.inc.php');

// Pulling a product object since we know its ID. If your code already has
// explicit product objects, you can work with them too.

$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->find(40);

// An array that specifies what product attributes will be used for variant
// We will create a variant with Color = Black and Size = M
$spec = [
    ['Color', 'Black'], 
    ['Size', 'M'],
];

// The general idea of creating a variant is to find \XLite\Model\AttributeValue objects
// that represent Color = Black and Size = M attribute values and then create 
// \XLite\Module\XC\ProductVariants\Model\ProductVariant object based on these objects.
// $foundAttributeValues array will contain these objects.
$foundAttributeValues = [];

// We start a loop on $spec. $specValues will have attribute name (e.g. Color) as 
// 0 element (we will refer to it as $neededAttributeName) and 
// attribute value (e.g. Black) as 1st element (we will refer to it as $neededAttributeValue)
foreach ($spec as $specValues) {

    $neededAttributeName = $specValues[0];
    $neededAttributeValue = $specValues[1];
    
    // We cycle product attributes in order to find one with proper attribute name
    // We also make sure that we work with selectable attributes 
    // (in_array($attribute->getType(), array('S')) as only these ones can be used
    // as a base for product variants.
    foreach ($product->getAttributes() as $attribute) {
        if (
            $attribute->getName() == $neededAttributeName
            && in_array($attribute->getType(), array('S'))
        ) {

            // If there is an attribute with such name, we specify in product details, 
            // that variants will be based on this attribute. 
            // It is not necessary to build a variant based on all existing product attributes.
            
            $product->addVariantsAttributes($attribute);
            $attribute->addVariantsProduct($product);         
            
            // Once we found proper attribute, we need to find an attribute value object 
            // (\XLite\Model\AttributeValue) that will be used for creating a variant. 
            // For that we cycle through attribute value objects in order to find one with 
            // $neededAttributeValue value.
            foreach ($attribute->getAttributeValues() as $attributeValue) {

                if ($attributeValue->asString() == $neededAttributeValue) {
                    $foundAttributeValues[] = $attributeValue;
                }

            }

        // end of if ($attribute->getName() == $neededAttributeName)
        }

    }
}

// We create an empty product variant object
$variant = new \XLite\Module\XC\ProductVariants\Model\ProductVariant();

// Assigning found attribute value objects to this new product variant
// and specifying in attribute value object that it is used in this
// new product variant.
foreach ($foundAttributeValues as $attributeValue) {
    $variant->addAttributeValueS($attributeValue);
    $attributeValue->addVariants($variant);
}

// Assigning product variant to a product and backwards
$variant->setProduct($product);
$product->addVariants($variant);

// Saving results into the database
\XLite\Core\Database::getEM()->persist($variant);
$product->checkVariants();
\XLite\Core\Database::getEM()->flush();
```

After you run this script, check *Variants* section of the test product in admin area. You will see that the variant for Color: Black and Size: M combination is created.

When we specify what product attributes we will be basing our product variants on
```php
	$product->addVariantsAttributes($attribute);
    $attribute->addVariantsProduct($product);
```

it is the same step as this one admin area here:
![what-attributes-product-variants-will-be-based-on.png]({{site.baseurl}}/attachments/ref_bLhsOAwO/what-attributes-product-variants-will-be-based-on.png)

When we say that 'it is not necessary to build variant based on all existing product attributes', we mean that we can tick on only one attribute (Size or Color) and build variants only on it. In case of t-shirts, if there is an attribute material: cotton, it is the same for all sizes and colors of a certain model, so we would not want to use this attribute in product variants.
