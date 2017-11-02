---
title: Product attributes
identifier: ref_cPPwdSA9
updated_at: 2015-01-23 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This guide aims to show some approach of working with product attributes. In this article we will create a mod that will hide certain attribute from being displayed in customer area.

Imagine that we have a product with **hidden-value** attribute:
![]({{site.baseurl}}/attachments/8225478/8356216.png)

We want to use this attribute in some modification, but we do not want to show its value to the customer. However, the value is shown by default in the **Specification** tab in storefront:![]({{site.baseurl}}/attachments/8225478/8356217.png)

Our mod will hide this **hidden-value** attribute in storefront.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **AttributeDemo**.

Attributes in the **Specification** tab are shown by the `<X-Cart>/skins/default/en/product/details/parts/attribute.tpl` template – as we can find it via **Webmaster Kit** module. Here is a code of this template:

```php
{if:getAttributeGroup()}
<li><div class="head-h3">{getTitle()}</div>
  <ul>
{end:}
<li FOREACH="getAttrList(),a">
  <div><strong>{a.name}</strong></div>
  <span class="{a.class}">{a.value:nl2br}</span>
</li>
{if:getAttributeGroup()}
  </ul>
</li>
{end:}
```

It takes attributes from array returned by the `getAttrList()` method and then display them in cycle. If we want to hide the **hidden-value** attribute, we should remove it from array returned by the `getAttrList()` method, so we must {% link "decorate" ref_AF6bmvL6 %} the `\XLite\View\Product\Details\Customer\Attributes` class ({% link "more info about classnames in X-Cart" ref_FAgFbEx9 %}). In order to do that we create the
`<X-Cart>/classes/XLite/Module/Tony/AttributeDemo/View/Product/Details/Customer/Attributes.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\AttributeDemo\View\Product\Details\Customer;

/**
 * Product attributes
 */
abstract class Attributes extends \XLite\View\Product\Details\Customer\Attributes implements \XLite\Base\IDecorator
{
    public function getAttrList()
    {
        $attributes = parent::getAttrList();
        $return = array();

        foreach ($attributes as $attr) {
            if (strtoupper($attr['name']) != 'HIDDEN-VALUE') {
                $return[] = $attr;
            }
        }

        return $return;
    }
}
```

We simply take attributes returned by parent class' `getAttrList()` method as array, walk through this array and if attribute's name is not **hidden-value**, then this attribute will be put into `$return` array.

That is it. Now we need to re-deploy the store and check the results in storefront. If we open the same product's details page, we will not see the **hidden-value** attribute there, although it exists in admin area. ![]({{site.baseurl}}/attachments/8225478/8356218.png)

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-AttributeDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-AttributeDemo-v5_1_0.tar)
