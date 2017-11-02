---
title: Forcing product quantity while adding to cart
identifier: ref_a5KAeMkw
updated_at: 2015-01-21 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This article aims to show how you can change the routine of adding product to cart. In our case, we will create a module that will allow only **even** quantity of product (2, 4, 6) to be added to cart. If you try to add **odd** quantity of product (1, 3, 5), then you will be given a warning message.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **AddQuantityDemo**.

When a product is added to cart, the request goes to `cart.php?target=cart` URL with **action=add** parameter, which means that {% link "this request will be handled" ref_hkVaxgds %} by `doActionAdd()` method of `\XLite\Controller\Customer\Cart` class ({% link "more info about classnames in X-Cart" ref_FAgFbEx9 %}). The `doActionAdd()` method performs checks and then calls `addItem()` method of the same controller class – this method will actually add a product to a cart and then redirect a customer. In our module, we need to {% link "decorate" ref_AF6bmvL6 %} the `\XLite\Controller\Customer\Cart` class and enhance the `addItem()` method. This enhancement will make sure that quantity of product added is even. Otherwise, we will show an error message and the product will not be added to cart.

We decorate the `\XLite\Controller\Customer\Cart` class by creating the `<X-Cart>/classes/XLite/Module/Tony/AddQuantityDemo/Controller/Customer/Cart.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\AddQuantityDemo\Controller\Customer;

/**
 * \XLite\Controller\Customer\Cart
 */
abstract class Cart extends \XLite\Controller\Customer\Cart implements \XLite\Base\IDecorator
{
    protected function addItem($item)
    {
        if (0 == $item->getAmount() % 2) {
            $result = parent::addItem($item);
        } else {
            $result = false;
            \XLite\Core\TopMessage::addWarning('You can add only even number of this product (2, 4, 6, etc).');
        }

        return $result;
    }
}
```

As you can see, there is only `addItem()` method implemented. We check whether an item adding has even amount: 

```php
if (0 == $item->getAmount() % 2)
```

and if so, we just call a parent's `addItem()` method: 

```php
$result = parent::addItem($item);
```

If item's amount is odd, then we do not call parent's `addItem()`, set `$result` as `false` and add warning message: 

```php
$result = false;
\XLite\Core\TopMessage::addWarning('You can add only even number of this product (2, 4, 6, etc).');
```

Basically, the mod is done here, but since we can check item's amount right in JavaScript, we want to add it as well.

For that we {% link "register a new JS file" ref_p0CRZmMS %} by creating the `<X-Cart>/classes/XLite/Module/Tony/AddQuantityDemo/View/AView.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\AddQuantityDemo\View;

/**
 * Abstract widget
 */
abstract class AView extends \XLite\View\AView implements \XLite\Base\IDecorator
{
    protected function getThemeFiles($adminZone = null)
    {
        $list = parent::getThemeFiles($adminZone);

        if (\XLite::getController() instanceof \XLite\Controller\Customer\Product) {
            $list[static::RESOURCE_JS][] = 'modules/Tony/AddQuantityDemo/js/script.js';
        }

        return $list;
    }
}
```

This implementation will add our JS file to **product** **pages** only. Then, we create the `<X-Cart>/skins/default/en/modules/Tony/AddQuantityDemo/js/script.js` file with the following content: 

```php
$(".product-buttons .add2cart").click(
    function() 
    {
        if (parseInt($(".product-buttons input.quantity").val()) % 2 != 0) {
            alert('You can add only even number of this product (2, 4, 6, etc).');
            event.preventDefault();
        }
    }
)
```

That is it. Now we need to re-deploy the store and check the results in customer area. If we add 2 quantity of a product to cart, everything will work as before. If we try to add 1 product, we will see this warning:![]({{site.baseurl}}/attachments/8225442/8356203.png)

If you want to see the PHP check in action, then go the JS file, comment out its entire content and reload the page. Try to add 1 product to a cart and you will see the following warning:![]({{site.baseurl}}/attachments/8225442/8356204.png)

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-AddQuantityDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-AddQuantityDemo-v5_1_0.tar)

## Attachments:

* [js-warning.png]({{site.baseurl}}/attachments/8225442/8356203.png) (image/png)
* [top-warning.png]({{site.baseurl}}/attachments/8225442/8356204.png) (image/png)