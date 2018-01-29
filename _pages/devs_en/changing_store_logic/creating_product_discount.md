---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-20 00:00'
title: Creating product discount
identifier: ref_SMsZrhAi
version: X-Cart 5.2.16 and earlier
categories:
  - Developer docs
  - Demo module
  - Outdated
published: true
order: 100
---

## Introduction

Previously we have learned how to create a {% link "global discount" ref_mFAMapCB %} and this article explains how you can create an individual product discount. For the sake of example, we will create a module that will apply a 10% discount to each product that starts with A letter and this discount will be displayed near each such product as

*   a **10% off** label on product lists;
*   an **old price** label with crossed old price near product price.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module example](#module-example)

## Implementation

The main difference between this module and {% link "one that described global discount" ref_mFAMapCB %} is that in this module we will simply alter product prices and then adjust appearance of the price in order to show that it has been reduced. In that sense, if we have a $10 product and want to apply 10% discount to it, then:

*   the database will still contain record about it having $10 price;
*   product object will return price as $9, however;
*   this $9 price will be used during cart calculation, but reduced price will be shown with special **old price** label and the customers will understand that it has been reduced.

Such an approach is quite convenient, because you can enable such module for a sale period, it will automatically apply needed discounts and once the sale is over, you just disable the module. No import/export for updating prices will be needed.

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ProductDiscountDemo**. Now we need to {% link "decorate" ref_AF6bmvL6 %} product {% link "model" ref_wmExvPDD %} class `\XLite\Model\Product`, so we create the
`<X-Cart>/classes/XLite/Module/Tony/ProductDiscountDemo/Model/Product.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ProductDiscountDemo\Model;

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

Let us have a close look at this enhancement of product model:

1.  First of all we implement a condition when the discount must be applied: 

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

Now the discount will be applied to products that start with A and we need to add display changes:

*   display **10% off** label near such products on product lists;
*   display **Old price** label near such product prices.

In order to display **10% off** label on product lists, we have to decorate the `\XLite\View\ItemsList\Product\Customer\ACustomer` {% link "ItemsList class" ref_MRidEzuz %}. We create the
`<X-Cart>/classes/XLite/Module/Tony/ProductDiscountDemo/View/ItemsList/Product/Customer/ACustomer.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ProductDiscountDemo\View\ItemsList\Product\Customer;

/**
 * ACustomer
 */
abstract class ACustomer extends \XLite\View\ItemsList\Product\Customer\ACustomer implements \XLite\Base\IDecorator
{
    protected function getLabels(\XLite\Model\Product $product)
    {
        $labels = parent::getLabels($product);

        if ($product->isMyDiscount()) {
            $labels += array('my-discount' => '10% off');
        }

        return $labels;
    }
}
```

As you can see, we need to only change the `getLabels()` method in this class and add our record to its returning array: 

```php
$labels += array('my-discount' => '10% off');
```

Key of this array – **my-discount** – defines a CSS class that will be assigned to this label, value of this array – **10% off** – defines a text that will be displayed by this label.

This method `getLabels()` will be run on each product displayed by the ItemsList widget – as you can see a `$product` object is passed to this method as an argument – that is why we can freely use product model's methods in this `getLabels()` method, e.g.: 

```php
$product->isMyDiscount()
```

Now, let us add **Old price** label near price display of discounted products. We simply create the `<X-Cart>/skins/default/en/modules/Tony/ProductDiscountDemo/old-price.tpl` template with the following content: 

```php
{**
 * @ListChild (list="product.plain_price", weight="100")
 *}
<li IF="{isMyDiscount()}" class="old-price">Old price: <span class="price old-price">{formatPrice(getOldPrice(),null,1):h}</span></li>
```

and it will be assigned to the `product.plain_price` {% link "view list" ref_E88KCMDD %}, so it will be displayed below main product price in store-front. Since we use two methods – `isMyDiscount()` and `getOldPrice()` – that do not exist in the default implementation of the `\XLite\View\Price` {% link "viewer class" ref_6dMJsZ63 %}– this viewer class manages the display of `product.plain_price` view list –, we have to create such methods by decorating `\XLite\View\Price` viewer. We create the `<X-Cart>/classes/XLite/Module/Tony/ProductDiscountDemo/View/Price.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ProductDiscountDemo\View;

/**
 * Product price
 */
abstract class Price extends \XLite\View\Price implements \XLite\Base\IDecorator
{
    protected function getOldPrice()
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

Finally, we need to apply several CSS styles in order to make our **Old price** label look smooth. We {% link "add CSS file" ref_p0CRZmMS %} by creating the `<X-Cart>/classes/XLite/Module/Tony/ProductDiscountDemo/View/AView.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ProductDiscountDemo\View;

/**
 * Abstract widget
 */
abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{
    protected function getThemeFiles($adminZone = null)
    {
        $list = parent::getThemeFiles($adminZone);

        $list[static::RESOURCE_CSS][] = 'modules/Tony/ProductDiscountDemo/css/style.css';

        return $list;
    }
}
```

and then creating the actual `<X-Cart>/skins/default/en/modules/Tony/ProductDiscountDemo/css/style.css` CSS file with the following content: 

```php
ul.product-price li.old-price {
    display: block;
    font-size: 18px;
}
ul.product-price li.old-price span.old-price {
    text-decoration: line-through;
}
```

That is it. Now we need to re-deploy the store and check the results in store-front.

Your product list will have discount labels and old price crossed:
![]({{site.baseurl}}/attachments/8225422/8356196.png)

Your product details page will also have old price crossed, because product price is displayed by the same `\XLite\View\Price` widget:![]({{site.baseurl}}/attachments/8225422/8356197.png)

Finally, since we decorated the most basic product ItemsList class `\XLite\View\ItemsList\Product\Customer\ACustomer`, absolutely all product lists in customer area are having **10% off** labels, even those ones that are produced by other modules, e.g. **Customers who bought this product also bought **product list by **Product Advisor** module: ![]({{site.baseurl}}/attachments/8225422/8356198.png)

## Module example

You can download this module pack from here: <https://www.dropbox.com/s/1fdy27xvyznfglb/Tony-ProductDiscountDemo-v5_1_0.tar>

## Attachments:

* [discount-items-list.png]({{site.baseurl}}/attachments/8225422/8356196.png) (image/png)
* [product-details-page-discount.png]({{site.baseurl}}/attachments/8225422/8356197.png) (image/png)
* [customers-who-bought-discount.png]({{site.baseurl}}/attachments/8225422/8356198.png) (image/png)
