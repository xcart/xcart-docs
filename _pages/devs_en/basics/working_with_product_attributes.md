---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-23 00:00'
title: Hiding product attributes
identifier: ref_cPPwdSA9
categories:
  - Developer docs
  - Demo module
  - Outdated
published: true
order: 100
---
## Introduction

This guide aims to show an approach to working with product attributes. In this article we will create a mod that hides particular attribute from being displayed in customer area.

Imagine that we have a product with **hidden-attribute** attribute:
![hidden-attribute-admin.png]({{site.baseurl}}/attachments/ref_cPPwdSA9/hidden-attribute-admin.png)

We use this attribute in some modification, but we do not want to show its value to the customer. 
However, the value is shown in the **Specification** tab in storefront by default:
![hidden-attribute-shown-in-customer.png]({{site.baseurl}}/attachments/ref_cPPwdSA9/hidden-attribute-shown-in-customer.png)

Our mod will hide this **hidden-attribute** attribute in storefront.

{% toc Table of Contents %}

## Default implementation

Attributes in the **Specification** tab are shown by the `customer/product/details/parts/page.tabs.attributes.twig` template, as we can see in **Webmaster Kit** module.  However, this template only calls 'product.details.common.product-attributes.attributes' {% link "view list" ref_E88KCMDD#how-x-cart-renders-pages %}. This view list contains only one template: `customer/product/details/parts/common.product-attributes-list.twig`.

Code of this template is as follows:

```php
{##
 # Product attributes
 #
 # @ListChild (list="product.details.common.product-attributes.attributes", weight="10")
 #}
{% for aWidget in this.getAttributesWidgets() %}
  {{ aWidget.display() }}
{% endfor %}
```

In other words, X-Cart pulls attribute widgets using `getAttributesWidgets()` method (it is defined in `\XLite\View\Product\Details\Customer\Page\APage` class) and then displays each of those widgets. `getAttributesWidgets()` method returns widgets defined in `defineAttributesWidgets()` method, which looks as follows:

```php
    protected function defineAttributesWidgets()
    {
        $this->attributesWidgets = array();

        $product = $this->getProduct();

        if ($product->getProductClass()) {
            $this->attributesWidgets[] = $this->getWidget(
                array(
                    'product'      => $product,
                    'productClass' => $product->getProductClass()
                ),
                '\XLite\View\Product\Details\Customer\Attributes'
            );
        }

        $this->attributesWidgets[] = $this->getWidget(
            array(
                'product' => $product
            ),
            '\XLite\View\Product\Details\Customer\Attributes'
        );

        $this->attributesWidgets[] = $this->getWidget(
            array(
                'product'      => $product,
                'personalOnly' => true
            ),
            '\XLite\View\Product\Details\Customer\Attributes'
        );

        if ($product->getProductClass()) {
            foreach ($product->getProductClass()->getAttributeGroups() as $group) {
                $this->attributesWidgets[] = $this->getWidget(
                    array(
                        'product' => $product,
                        'group'   => $group
                    ),
                    '\XLite\View\Product\Details\Customer\Attributes'
                );
            }
        }

        foreach (\XLite\Core\Database::getRepo('XLite\Model\AttributeGroup')->findByProductClass(null) as $group) {
            $this->attributesWidgets[] = $this->getWidget(
                array(
                    'product' => $product,
                    'group'   => $group
                ),
                '\XLite\View\Product\Details\Customer\Attributes'
            );
        }
    }
```

In other words, X-Cart pulls all sorts of product specific and global attributes and then wrap them into `\XLite\View\Product\Details\Customer\Attributes` widget.

When X-Cart walks through widgets returned by `getAttributesWidgets()` method, it just tells this widget to display its content, so we essentially display a number of `\XLite\View\Product\Details\Customer\Attributes` widgets. Each of these widgets uses `customer/product/details/parts/attribute.twig` template to display its content. Here is a code of this template:

```php
{% if this.getAttributeGroup() %}
<li><div class="head-h3"><span class="title-text">{{ this.getTitle() }}</span><span class="line"></span></div>
  <ul>
{% endif %}
{% for a in this.getAttrList() %}
  <li>
    <div><strong>{{ a.name }}</strong></div>
    <span class="{{ a.class }}">{{ a.value|nl2br }}</span>
  </li>
{% endfor %}
{% if this.getAttributeGroup() %}
  </ul>
</li>
{% endif %}
```

The most important part here is the following loop:

```php
{% for a in this.getAttrList() %}
  <li>
    <div><strong>{{ a.name }}</strong></div>
    <span class="{{ a.class }}">{{ a.value|nl2br }}</span>
  </li>
{% endfor %}
```

This means that we take attributes from `getAttrList()` method and display them; and the same process happens again for each `\XLite\View\Product\Details\Customer\Attributes` widget. So, we just need to stop our **hidden-attribute** attribute from being returned by the `getAttrList()` method.

## Applying change

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **HidingAttributes**.

Since we want to remove **hidden-attribute** attribute from array returned by the `getAttrList()` method, we must {% link "decorate" ref_AF6bmvL6 %} the `\XLite\View\Product\Details\Customer\Attributes` class. We create the
`classes/XLite/Module/XCExample/HidingAttributes/View/Product/Details/Customer/Attributes.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\HidingAttributes\View\Product\Details\Customer;

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

            if (strtoupper($attr['name']) != 'HIDDEN-ATTRIBUTE') {
                $return[] = $attr;
            }
        }

        return $return;
    }
}
```

We simply cycle through attributes returned by parent class' `getAttrList()` method and if attribute's name is **hidden-attribute**, this attribute is excluded from result array.

That is it. Now we can check results in storefront. If we open the same product's details page, we will not see the **hidden-attribute** attribute there, although it exists in admin area.

![no-hidden-attribute-customer.png]({{site.baseurl}}/attachments/ref_cPPwdSA9/no-hidden-attribute-customer.png)

## Module pack

You can download this module example from here: <https://www.dropbox.com/s/xqwxsczsi8qnxre/XCExample-HidingAttributes-v5_3_0.tar>
