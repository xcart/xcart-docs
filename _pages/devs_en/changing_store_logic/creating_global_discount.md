---
title: Creating global discount
lang: en
layout: article_with_sidebar
updated_at: 2017-03-13 13:33 +0400
identifier: ref_mFAMapCB
categories:
- Developer docs
- Demo module
- Outdated
order: 100
---

## Introduction

This article teaches X-Cart developers how they can create discounts via custom module. For the sake of example, we will show how to create a straight-forward **10% discount** to order subtotal.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Video tutorial](#video-tutorial)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Video tutorial

<iframe class="youtube-player" type="text/html" style="width: 800px; height: 600px" src="https://www.youtube.com/embed/OmskLxiaweM" frameborder="0"></iframe>

## Implementation

As a first step, {% link "create an empty module" ref_G2mlgckf %}. We are creating the module with developer ID **Tony** and module ID **DiscountDemo**.

You can create a discount in X-Cart by extending the `\XLite\Logic\Order\Modifier\Discount` class. The `\XLite\Logic\Order\Modifier` type of classes define different types of order surcharges, e.g. shipping, taxes, discounts, etc. We use one that is typical discount: `\XLite\Logic\Order\Modifier\Discount`.

We create the `<X-Cart>/classes/XLite/Module/Tony/DiscountDemo/Logic/Order/Modifier/Discount.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\DiscountDemo\Logic\Order\Modifier;

class Discount extends \XLite\Logic\Order\Modifier\Discount
{
    const MODIFIER_CODE = 'DISCOUNT';

    protected $type = \XLite\Model\Base\Surcharge::TYPE_DISCOUNT;

    protected $code = self::MODIFIER_CODE;

    public function calculate()
    {
        $surcharge = null;
        $discount = $this->getOrder()->getSubtotal() * 0.1;
        $surcharge = $this->addOrderSurcharge($this->code, $discount * -1);
        $this->distributeDiscount($discount);
        return $surcharge;
    }
}
```

Let us have a closer look at this class' code.

1.  The code below defines that this order modifier is a discount and the surcharge value should be aggregated into single **Discount** line in order totals: 

    ```php
        const MODIFIER_CODE = 'DISCOUNT';

        protected $type = \XLite\Model\Base\Surcharge::TYPE_DISCOUNT;

        protected $code = self::MODIFIER_CODE;
    ```

2.  `calculate()` method is the most important part of this class. It defines the routine of calculating discount and applying it to the order object. This method will be called in the `calculate()` method of the `\XLite\Model\Order` object in this `foreach()`: 

    ```php
            foreach ($this->getModifiers() as $modifier) {
                if ($modifier->canApply()) {
                    $modifier->calculate();
                }
            }
    ```

3.  _Note: our mod does not use it, but you can define `canApply()` method in your class in order to define whether this modifier must be applied or not._
4.  Let us get back to our implementation of `calculate()` method. First we calculate the discount value: 

    ```php
    $discount = $this->getOrder()->getSubtotal() * 0.1;
    ```

    and then we apply this discount to the order as a **negative value**: 

    ```php
    $surcharge = $this->addOrderSurcharge($this->code, $discount * -1);
    ```

    We get the `$surcharge` object as a result, which will be returned as a result of `calculate()` method.

5.  Final step is we distribute the discount value across all order items in the cart: 

    ```php
    $this->distributeDiscount($discount);
    ```

That is it with discount class.

Now we need to register this order modifier in X-Cart and for that purpose we create the `<X-Cart>/classes/XLite/Module/Tony/DiscountDemo/install.yaml` file with the following content: 

```php
XLite\Model\Order\Modifier:
  - { class: '\XLite\Module\Tony\DiscountDemo\Logic\Order\Modifier\Discount', weight: 100 }
```

This way we tell X-Cart that our class described above must be registered as order modifier with **weight 100**. The higher the weight, the later this order modifier will be run in `foreach()` of bullet-point 3.

_Note: if you want to check all currently registered order modifiers, you can pull this info from the xc_order_modifiers MySQL table._

Once our **install.yaml** file is ready, we need to {% link "push it to the database" ref_HvrXVNvJ#X-CartSDK-LoadingYAMLfile %}. After that re-deploy the store and check the results: add any product to a cart and go to cart page. You will see a discount applied there:![]({{site.baseurl}}/attachments/8225204/8356110.png)

## Module pack

You can download this module's example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-DiscountDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-DiscountDemo-v5_1_0.tar)

## Attachments:

* [custom-discount-applied.png]({{site.baseurl}}/attachments/8225204/8356110.png) (image/png)
