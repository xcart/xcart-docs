---
title: ''
published: false
lang: en
layout: article_with_sidebar
updated_at: 2017-10-03 14:56 +0400
identifier: ref_bLhsOAwO
order: 100
---

## Introduction

This article explains how you can create product variants from the code instead of doing so through admin interface. During this article we assume that you have the module Product Variants enabled.

## Process

To get started, go to X-Cart admin area and pick a test product we are going to work with. Open this product page and look at the address line in your browser. It will be something like this:
`http://localhost/xcart/admin.php?target=product&product_id=30`

Remember the number after `product_id=`. We will use this product ID in our code.

After that, create product attributes as follows:
![product-attributes.png]({{site.baseurl}}/attachments/ref_bLhsOAwO/product-attributes.png)

In other words, we create attribute Color with Black and White options and attribute Size with S, M and L options.

For the sake of example we are going to write a script that will create a single variant for the product with Color = Black and Size = M. Also, we are going to use {% link "external script" ref_ogmCiRWZ %} in order to showcase the solution.

We create the test.php file inside X-Cart directory with the following content. See comments in the code to have an idea of what is going on there:

```php
<?php

// Initializing X-Cart
require_once (dirname(__FILE__) . DIRECTORY_SEPARATOR . 'top.inc.php');

// Pulling a product object since we know its ID. If your code just have 
// product objects, you can work with them too.

$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->find(30);

// An array that contains what product attributes will be used for variant
// We will create a variant with Color = Black and Size = M
$spec = [
    ['Color', 'Black'], 
    ['Size', 'M'],
];

// The general idea of creating a variant is to find objects \XLite\Model\AttributeValue
// that represent Color = Black and Size = M attribute values and then create 
// \XLite\Module\XC\ProductVariants\Model\ProductVariant object based on these found objects.
// $foundAttributeValues array will contain these objects.
$foundAttributeValues = [];

// We start a loop on $spec. $specValues will have attribute name (e.g. Color) $specValues[0] 
// and attribute value (e.g. Black) as $specValues[1]
foreach ($spec as $specValues) {
	
    // We cycle all product attributes in order to find one with proper attribute name
    foreach ($product->getAttributes() as $attribute) {
        if ($attribute->getName() == $specValues[0]) {

			// If there is an attribute with such name we register that variants are based on this 		       // attribute. If we had three attributes, we could still build variants based on only             // two ones. It is possible.
            
            $product->addVariantsAttributes($attribute);
            $attribute->addVariantsProduct($product);
            
            // Once we found proper attribute, we need to find an attribute value object 
            // (\XLite\Model\AttributeValue) that will be used for creating a variant. 

            foreach ($attribute->getAttributeValues() as $attributeValue) {

                if (
                    (in_array($attribute->getType(), array('C', 'T'))
                    && $attributeValue->getValue() == $specValues[1])
                    ||
                    (in_array($attribute->getType(), array('S'))
                    && $attributeValue->asString() == $specValues[1])
                ) {

                    $foundAttributeValues[] = array(
                        'attributeValue' => $attributeValue,
                        'method' => 'addAttributeValue' . $attribute->getType(),
                    );
                }

                // foreach ($attribute->getAttributeValues() as $attributeValue)
            }

        // if ($attribute->getName() == $specValues[0])
        }

    }
}

$variant = new \XLite\Module\XC\ProductVariants\Model\ProductVariant();

foreach ($foundAttributeValues as $a) {

    $foundAttributeValue = $a['attributeValue'];
    $method = $a['method'];

    $variant->$method($foundAttributeValue);
    $foundAttributeValue->addVariants($variant);
    $variant->setProduct($product);
    $product->addVariants($variant);
}

\XLite\Core\Database::getEM()->persist($variant);
$product->checkVariants();
\XLite\Core\Database::getEM()->flush();
```