---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-31 15:09 +0400'
identifier: ref_0KlcQFy1
title: AJAX widget on product page
order: 100
published: false
---
## Introduction

X-Cart product page in customer area has a mechanism of updating parts of the page after some trigger. 

You can see this mechanism in action if you define some [variants](https://market.x-cart.com/addons/product-variants.html) with different SKUs for a product. Then, try to change attributes on the product details page and you will see that some areas of this page are greyed out. After it gets back to normal, you may see that the price or product's SKU or something else are changed depending on the settings of selected variant.

This article will explain how to create such widget which will be updated after changing product attributes.

For the sake of example, we will add a widget that displays product SKU. Then, we will create variants for a product and each variant will have its own SKU. We will set up our SKU widget in a way that once we change product attributes, new SKU will be displayed in the widget.

{% toc Table of Contents %}

## Preparation

First, let us set up a product. We go to product details page in admin area and define its attributes as follows:
![color-size-product-attributes.png]({{site.baseurl}}/attachments/ref_0KlcQFy1/color-size-product-attributes.png)

Then, we set up variants for these attributes and give each variant its own SKU:
![product-variants.png]({{site.baseurl}}/attachments/ref_0KlcQFy1/product-variants.png)

The product is set up now. The next step is to {% link "create an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **AjaxProductWidget**.

The preparation is over, let us get to the widget creation.

## Implementation

We start with creating a viewer class that will display SKU on product details page, so we create `classes/XLite/Module/XCExample/AjaxProductWidget/View/Product/Details/Customer/Widget/Sku.php` file with the following content:

```php
<?php

namespace XLite\Module\XCExample\AjaxProductWidget\View\Product\Details\Customer\Widget;

/**
 * @ListChild (list="product.details.page.info", weight="20")
 */ 
class Sku extends \XLite\View\Product\Details\Customer\Widget
{
    protected function getDefaultTemplate()
    {
        return 'modules/XCExample/AjaxProductWidget/product/details/sku.twig';
    }

    public function getFingerprint()
    {
        return 'widget-fingerprint-product-sku';
    }

    public function getSku()
    {
        $isProductVariantsEnabled = \XLite\Core\Database::getRepo('XLite\Model\Module')->isModuleEnabled('XC\ProductVariants');

        return $isProductVariantsEnabled && $this->getProductVariant()
            ? $this->getProductVariant()->getDisplaySku()
            : $this->getProduct()->getSKU();
    }
}
```

Generally speaking, we could have extended `\XLite\View\AView` class, but `\XLite\View\Product\Details\Customer\Widget` one comes handy, because it pulls info about product, attributes and so on.

`getDefaultTemplate()` method is pretty standard and it defines the template that will be used to display the code of the widget. Let us create this template: `skins/customer/modules/XCExample/AjaxProductWidget/product/details/sku.twig` and define its content as follows:

```twig
<div class="{{ this.getFingerprint() }}">Sku: {{ this.getSku() }}</div>
```

`getFingerprint()` method returns CSS class that will identify parent HTML element of our widget.  That is why we assign this CSS class to the <div> element in the template. After we change product attributes in customer area, X-Cart will send AJAX request to fetch updated sections of the product page and these sections will come in the JSON format as follows:
  
```js
[
  {
    "view":"widget-fingerprint-class",
    "content":"HTML code of widget"
  },
  {
    "view":"widget-fingerprint-of-another-class",
    "content":"HTML code of another widget"
  },
]
```
In other words, X-Cart will be able to look up HTML element by CSS class from `getFingerprint()` method and then it will replace code of this HTML element with one received in AJAX request.

`getSku()` method returns SKU of current product or variant and this value is used in the template. Essentially, we check whether module 'Product Variants' is enabled AND whether this product has variant selected. In this case, we return product variant's SKU, otherwise we return product's SKU.

Finally, we need to register our viewer class in widget collection that will be checked upon changing attributes on product details page in store-front. For that we should decorate `\XLite\View\ProductPageCollection` class, so we create `classes/XLite/Module/XCExample/AjaxProductWidget/View/ProductPageCollection.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\AjaxProductWidget\View;

/**
 * Product page widgets collection
 */
abstract class ProductPageCollection extends \XLite\View\ProductPageCollection implements \XLite\Base\IDecorator
{
    protected function defineWidgetsCollection()
    {
        $widgets = parent::defineWidgetsCollection();

        $widgets = array_merge(
            $widgets,
            [ '\XLite\Module\XCExample\AjaxProductWidget\View\Product\Details\Customer\Widget\Sku' ]
        );

        return array_unique($widgets);
    }    
}
```

Essentially, we just add our class to the array returned by `defineWidgetsCollection()` method.

That is it. You can check the results on the details page of the test product we created during preparation. If you change attributes with 'Network' tab opened in Google Chrome, you will see that there is our widget's piece in the response to AJAX request and product SKU is updated.
![network-tab.png]({{site.baseurl}}/attachments/ref_0KlcQFy1/network-tab.png)

## Module pack

You can download this module pack from here: <https://www.dropbox.com/s/0d6104q1cnb21xq/XCExample-AjaxProductWidget-v5_3_0.tar>