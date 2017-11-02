---
title: Special offer with free item
identifier: ref_9VmCzbOW
updated_at: 2015-01-19 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.3.x and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This guide explains how to create a module that implements a **special offer**: buy three items of the same product and the third one will be free for you. On top of that, this type of discount will be displayed as a **separate line** on the checkout.

This guide is based on the previous one about {% link "creating a discount" ref_mFAMapCB %}, so you might want to look at it first.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **FreeItemDemo**. Then we create an order modifier class inside our module similar to one we described in the {% link "discount module" ref_mFAMapCB %}. We create the
`<X-Cart>/classes/XLite/Module/Tony/FreeItemDemo/Logic/Order/Modifier/FreeItem.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\FreeItemDemo\Logic\Order\Modifier;

class FreeItem extends \XLite\Logic\Order\Modifier\Discount
{
	protected $code = 'FREEITEM';

    public function calculate() 
    {
        $surcharge = null;
        $discount = 0;

        foreach ($this->getOrder()->getItems() as $item) {
            if ($item->getAmount() > 2) {
                $discount += $item->getPrice();
                $item->setDiscountedSubtotal($item->getSubtotal() - $item->getPrice());
            }
        }

        $surcharge = $this->addOrderSurcharge($this->code, $discount * -1);
        return $surcharge;
    }

    public function getSurchargeInfo(\XLite\Model\Base\Surcharge $surcharge)
    {
        $info = new \XLite\DataSet\Transport\Order\Surcharge;

        $info->name = \XLite\Core\Translation::lbl('You save in free items');

        return $info;
    }
}
```

As you can see, this implementation has the required `calculate()` method that walks through order items and if item's amount is more than 2, then it applies a discount to this item: 

```php
        foreach ($this->getOrder()->getItems() as $item) {
            if ($item->getAmount() > 2) {
                $discount += $item->getPrice();
                $item->setDiscountedSubtotal($item->getSubtotal() - $item->getPrice());
            }
        }
```

However, there are two differences compared to the implementation of usual discount order modifier.

1.  `$code` variable is not defined as `DISCOUNT`:

    ```php
    protected $code = 'FREEITEM';
    ```

    It is done in order to distinguish this discount from other ones.

2.  We need to define some text label for our separate line (different from just **Discount**), so we have to implement the `getSurchargeInfo()` method as follows: 

    ```php
        public function getSurchargeInfo(\XLite\Model\Base\Surcharge $surcharge)
        {
            $info = new \XLite\DataSet\Transport\Order\Surcharge;

            $info->name = \XLite\Core\Translation::lbl('You save in free items');

            return $info;
        }
    ```

We are done with the order modifier implementation. As a final step, we need to register this order modifier in the system, so we create the `<X-Cart>/classes/XLite/Module/Tony/FreeItemDemo/install.yaml` file with the following content: 

```php
XLite\Model\Order\Modifier:
  - { class: '\XLite\Module\Tony\FreeItemDemo\Logic\Order\Modifier\FreeItem', weight: 100 }
```

and then {% link "push it to the database" ref_HvrXVNvJ#X-CartSDK-LoadingYAMLfile %}.

Now we need to re-deploy the store and then check the results. For that, go to your customer area and add three items of the same product to a cart. You will see the following picture at the cart page: ![]({{site.baseurl}}/attachments/8225412/5_3_x.png)

## Module pack

You can download this module example from here: 

*   (X-Cart 5.1) [https://dl.dropboxusercontent.com/u/23858825/Tony-FreeItemDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-FreeItemDemo-v5_1_0.tar)

*   (X-Cart 5.3) [XCExample-FreeItem-v5_3_0.tar]({{site.baseurl}}/attachments/modules/XCExample-FreeItem-v5_3_0.tar)

## Attachments:

* [free-item.png]({{site.baseurl}}/attachments/8225412/8356192.png) (image/png)