---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-20 00:00'
title: Creating product discount
identifier: ref_SMsZrhAi
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

Previously we have learned how to create a {% link "global discount" ref_mFAMapCB %} and this article explains how you can create an individual product discount. For the sake of example, we will create a module that will apply a 10% discount to each product that starts with A letter and this discount will be displayed near every such product as

*   a **10% off** label on product lists;
*   an **old price** label with crossed old price on product details page.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module example](#module-example)

## Implementation

The main difference between this module and {% link "one that described global discount" ref_mFAMapCB %} is that in this module we will simply alter product prices and then adjust appearance of the price in order to show that it has been reduced. In that sense, if we have a $10 product and want to apply 10% discount to it, then:

*   the database will still contain record about it having $10 price;
*   product object will return price as $9, however;
*   this $9 price will be used during cart calculation, but reduced price will be shown with special **old price** label and the customers will understand that it is reduced.

Such an approach is quite convenient, because you can enable such module for a sale period, it will automatically apply needed discounts and once the sale is over, you just disable the module. No export/import for updating prices is needed.

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **ProductDiscount**. Now we need to {% link "decorate" ref_AF6bmvL6 %} product {% link "model" ref_wmExvPDD %} class `\XLite\Model\Product`, so we create the
`classes/XLite/Module/XCExample/ProductDiscount/Model/Product.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\XCExample\ProductDiscount\Model;

/**
 * The "product" model class
 */
abstract class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
{
    protected $priceBeforeMyProductDiscount = null;

    public function getClearPrice()
    {
        $price = parent::getClearPrice();

        if ($this->isMyDiscount()) {
            $this->setPriceBeforeMyProductDiscount($price);
            $price = 0.9 * $price;
        }

        return $price;
    }

    protected function setPriceBeforeMyProductDiscount($price)
    {
        $this->priceBeforeMyProductDiscount = $price;
    }

    public function getPriceBeforeMyProductDiscount()
    {
        return $this->priceBeforeMyProductDiscount;
    }

    public function isMyDiscount() 
    {
        return 0 === stripos($this->getName(), 'A');
    }
}
```

Let us have a close look at this change of product model:

1.  First of all, we implement a condition when the discount must be applied: 

    ```php
        public function isMyDiscount() 
        {
            return 0 === stripos($this->getName(), 'A');
        }
    ```

    If a product name starts with A, then this method will return `true`.

2.  Next, we change default `getClearPrice()` method of the `\XLite\Model\Product` class. If a product meets the discount condition, then `getClearPrice()` will be reduced by 10%: 

    ```php
        public function getClearPrice()
        {
            $price = parent::getClearPrice();

            if ($this->isMyDiscount()) {
                $this->setPriceBeforeMyProductDiscount($price);
                $price = 0.9 * $price;
            }

            return $price;
        }
    ```

3.  Note, that if the condition is triggered, we save the price into the `$priceBeforeMyProductDiscount` property.

    ```php
            if ($this->isMyDiscount()) {
                $this->setPriceBeforeMyProductDiscount($price);
                // ....
            }
    ```

    We also create this property in the class as well as add accessor methods for it: 

    ```php
        protected $priceBeforeMyProductDiscount = null;

        protected function setPriceBeforeMyProductDiscount($price)
        {
            $this->priceBeforeMyProductDiscount = $price;
        }

        public function getPriceBeforeMyProductDiscount()
        {
            return $this->priceBeforeMyProductDiscount;
        }
    ```

Now the discount will be applied to products that start with A and we need to label these products in customer area:

*   display **10% off** label near those products on product lists;
*   display **Old price** label near price on the product details page.

In order to display **10% off** label on product lists, we have to decorate the `\XLite\View\Product\ListItem` {% link "ItemsList class" ref_MRidEzuz %}. We create the
`classes/XLite/Module/XCExample/ProductDiscount/View/Product/ListItem.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\XCExample\ProductDiscount\View\Product;

/**
 * ACustomer
 */
abstract class ListItem extends \XLite\View\Product\ListItem implements \XLite\Base\IDecorator
{
    protected function getLabels()
    {
        $labels = parent::getLabels();
        $product = $this->getProduct();

        if ($product->isMyDiscount()) {
            $labels += array('my-discount' => static::t('10% off'));
        }

        return $labels;
    }
}
```

As you can see, we need to only change the `getLabels()` method in this class and add our record into the array returned:

```php
$labels += array('my-discount' => static::t('10% off'));
```

Key of this array – **my-discount** – defines a CSS class that will be assigned to this label, value of this array – **10% off** – defines a text that will be displayed by this label.

This method `getLabels()` will be run for each product displayed by the ItemsList widget – we can access product object by calling `$this->product` – that is why we can freely use product model's methods in this `getLabels()` method, e.g.: 

```php
$product->isMyDiscount()
```

Now, let us add **Old price** label near price on product details page. We simply create the `skins/customer/modules/XCExample/ProductDiscount/old-price.twig` template with the following content: 

```php
{##
 # @ListChild (list="product.plain_price", weight="100")
 #}

{% if this.isMyDiscount() %}
  <li class="old-price">Old price: <span class="price old-price">{{ this.formatPrice(this.getPriceBeforeMyDiscount(), this.null, 1)|raw }}</span></li>
{% endif %}
```

and it will be assigned to the `product.plain_price` {% link "view list" ref_E88KCMDD %}, so 'Old price' section will be displayed below main product price. 

Since we use methods `isMyDiscount()` and `getPriceBeforeMyDiscount()` that do not exist in the default implementation of the `\XLite\View\Price` {% link "viewer class" ref_6dMJsZ63 %} – this viewer class manages the display of `product.plain_price` view list – we have to create such methods by decorating `\XLite\View\Price` viewer. We create the `classes/XLite/Module/XCExample/ProductDiscount/View/Price.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\XCExample\ProductDiscount\View;

/**
 * Product price
 */
abstract class Price extends \XLite\View\Price implements \XLite\Base\IDecorator
{
    protected function getPriceBeforeMyDiscount()
    {
        return $this->getProduct()->getPriceBeforeMyProductDiscount();
    }

    protected function isMyDiscount()
    {
        return $this->getProduct()->isMyDiscount();
    }
}
```

This implementation is just proxying product methods – `isMyDiscount()` and `getPriceBeforeMyProductDiscount()` – from our enhanced version of `\XLite\Model\Product` class.

Finally, we need to apply several CSS styles in order to make our **Old price** label look nice. We {% link "add CSS file" ref_p0CRZmMS %} by creating the `classes/XLite/Module/XCExample/ProductDiscount/View/AView.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\XCExample\ProductDiscount\View;

/**
 * Abstract widget
 */
abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{
    protected function getThemeFiles($adminZone = null)
    {
        $list = parent::getThemeFiles($adminZone);
 
        $list[static::RESOURCE_CSS][] = 'modules/XCExample/ProductDiscount/css/style.css';

        return $list;
    }
}
```

and then creating the actual `skins/customer/modules/XCExample/ProductDiscount/css/style.css` CSS file with the following content: 

```php
ul.product-price li.old-price {
    display: block;
    font-size: 18px;
}
ul.product-price li.old-price span.old-price {
    text-decoration: line-through;
}
```

Now the module is ready. Product lists display 10% off label
![product-list.png]({{site.baseurl}}/attachments/ref_SMsZrhAi/product-list.png)

while product details pages have 'Old price' section:
![old-price-crossed.png]({{site.baseurl}}/attachments/ref_SMsZrhAi/old-price-crossed.png)


## Module example

You can download this module pack from here: <https://www.dropbox.com/s/dk4z7vhr6sp87cp/XCExample-ProductDiscount-v5_3_0.tar>
