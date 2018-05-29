---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-19 00:00'
title: Special offer with free item
identifier: ref_9VmCzbOW
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---

## Introduction

This guide explains how to create a module that implements a **special offer**: buy three or more items of the same product and one will be free for you. On top of that, this type of discount will be displayed as a **separate line** on the checkout.

This guide is based on the previous one about {% link "creating a discount" ref_mFAMapCB %}, so you might want to look at it first.

{% toc Table of Contents %}

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **FreeItemDemo**. Then we create an order modifier class inside our module similar to one we described in the {% link "discount module" ref_mFAMapCB %}. We create the
`classes/XLite/Module/XCExample/FreeItemDemo/Logic/Order/Modifier/FreeItem.php` file with the following content: 

```php
<?php

namespace XLite\Module\XCExample\FreeItem\Logic\Order\Modifier;

class FreeItem extends \XLite\Logic\Order\Modifier\Discount
{
    protected $code = 'FREEITEM';

    public function calculate() 
    {
        $surcharge = null;
        $totalDiscount = 0;

        foreach ($this->getOrder()->getItems() as $item) {
            if ($item->getAmount() > 2) {
                $discount = $item->getPrice();
                $totalDiscount += $discount;
                $item->setDiscountedSubtotal($item->getSubtotal() - $discount);
            }
        }

        if ($totalDiscount > 0) {
            $surcharge = $this->addOrderSurcharge($this->code, $totalDiscount * -1);    
        }        

        return $surcharge;
    }

    public function getSurchargeInfo(\XLite\Model\Base\Surcharge $surcharge)
    {
        $info = new \XLite\DataSet\Transport\Order\Surcharge;

        $info->name = \XLite\Core\Translation::lbl('You save in free items');

        return $info;
    }

    public function canApply()
    {
        return  !\XLite\Core\Database::getRepo('XLite\Model\Module')->isModuleEnabled('XC\MultiVendor')
                || $this->getOrder()->isChild();
    }
}
```

As you can see, this class implements required `calculate()` method that walks through order items and if item's amount is more than 2, then it applies a discount to this item: 

```php
        foreach ($this->getOrder()->getItems() as $item) {
            if ($item->getAmount() > 2) {
                $discount += $item->getPrice();
                $item->setDiscountedSubtotal($item->getSubtotal() - $item->getPrice());
            }
        }
```

However, there are several differences compared to the implementation of usual discount order modifier.

1. `$code` variable is not defined as `DISCOUNT`:

    ```php
    protected $code = 'FREEITEM';
    ```

    It is done in order to distinguish this discount from other ones.

2. We need to define some text label for our separate line (different from just **Discount**), so we have to implement the `getSurchargeInfo()` method as follows: 

    ```php
        public function getSurchargeInfo(\XLite\Model\Base\Surcharge $surcharge)
        {
            $info = new \XLite\DataSet\Transport\Order\Surcharge;

            $info->name = \XLite\Core\Translation::lbl('You save in free items');

            return $info;
        }
    ```
    
3. We have two discount variables in `calculate()` method: 
	- `$discount` that represents the discount of individual order item and is used to define order item's discounted subtotal;
    - `$totalDiscount` that represents the order's discount and this value is used in our surcharge object.
    
4. We have `canApply()` method that is used to make the module compatible with [Multi-vendor add-on](https://market.x-cart.com/addons/suppliers-multivendors.html "Special offer with free item"). Multi-vendor module makes all orders to have a parent part and child orders: one child order for each vendor. If we do not add this method, then X-Cart will apply this discount to parent order and to child orders all the same, so the discount will be doubled. Our `canApply()` method allows to run `calculate()` method with no restrictions if Multi-vendor is disabled, or if Multi-vendor is there, then we run `calculate()` method only for child orders.

That is it, we are done with the order modifier implementation. As a final step, we need to register this order modifier in the system, so we create the `classes/XLite/Module/XCExample/FreeItemDemo/install.yaml` file with the following content: 

```php
XLite\Model\Order\Modifier:
  - { class: '\XLite\Module\XCExample\FreeItem\Logic\Order\Modifier\FreeItem', weight: 100 }
```

and then {% link "push it to the database" ref_HvrXVNvJ#X-CartSDK-LoadingYAMLfile %}.

Now we go to the customer area of your store and check the results. Just add three items of the same product to a cart and you will see the following picture at the cart page: 
![]({{site.baseurl}}/attachments/8225412/5_3_x.png)

## Module pack

You can download this module example from here: 

* (X-Cart 5.3) [XCExample-FreeItem-v5_3_0.tar](https://www.dropbox.com/s/yzpgj95yjz7zguv/XCExample-FreeItem-v5_3_0.tar)
* (X-Cart 5.1) [https://dl.dropboxusercontent.com/u/23858825/Tony-FreeItemDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-FreeItemDemo-v5_1_0.tar)