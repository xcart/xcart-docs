---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-06 00:00'
title: Making payment method depend on shipping method
identifier: ref_Z6mwXUDg
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---

## Introduction

This article explains how you can make payment methods depend on a shipping method chosen.

For instance, you have two shipping options for an order: a customer can come to your shop and **pick up an order** there or you can send a **courier** to this customer. When a person comes to your shop you can accept **cash** or **credit card** – so you will show these two options on checkout – but when you send a courier, then they can accept **cash only**. Agreed, the example is a bit farfetched, but the most important is to grasp an idea: one shipping method allows one set of payment methods, another shipping method allows another set of payment methods.

The mod described in this article will explain how you can achieve this result.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Initial set up of the store](#initial-set-up-of-the-store)
*   [Implementation](#implementation)
*   [Checking results](#checking-results)
*   [Module pack](#module-pack)

## Initial set up of the store

We need to start with setting up payment and shipping methods in the store. We want to have two shipping methods:

1.  Pick up at store
2.  Courier

We go to **Store setup** > **Shipping** section in your admin area and create these two shipping methods as follows:
![]({{site.baseurl}}/attachments/8225320/8356171.png)

Do not forget to [assign some shipping rates](http://kb.x-cart.com/en/shipping/custom_table_rates.html) to these shipping methods. I am using 0 shipping rate for **Pick up at store** and $10 for **Courier**. We also need to know ID of **Courier** shipping method, that is why we click the **Edit Rates** link next to it and look at address bar in the browser. It will be something like this: 

```php
admin.php?target=shipping_rates&methodid=2
```

The value right after `methodid=` part is the shipping method ID. In my case, it is **2**.

We also have to have two payment methods, that is why we go to **Store setup** > **Payment methods** section in admin area and create two offline payment methods as follows:![]({{site.baseurl}}/attachments/8225320/8356172.png)

We need to know ID of **Credit Card** payment method that is why we click its **Configure** button and then look at browser's address bar again. It will be something like: 

```php
admin.php?target=payment_method&method_id=132
```

The value right after `method_id=` part is the payment method ID. In my case, it is **132**.

## Implementation

Now we can start creating our mod.

We {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **PaymentShippingDependencyDemo**. Inside this module, we decorate the `getPaymentMethods()` method of the `\XLite\Model\Order` class. We create the `<X-Cart>/classes/XLite/Module/Tony/PaymentShippingDependencyDemo/Model/Order.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\PaymentShippingDependencyDemo\Model;

/**
 * Class represents an order
 */
abstract class Order extends \XLite\Model\Order implements \XLite\Base\IDecorator
{
	public function getPaymentMethods()
    {
        if (0 < $this->getOpenTotal()) {

            $list = \XLite\Core\Database::getRepo('XLite\Model\Payment\Method')
                ->findAllActive();

            foreach ($list as $i => $method) {
                if (!$method->isEnabled() || !$method->getProcessor()->isApplicable($this, $method)) {
                    unset($list[$i]);
                }
            }

        } else {
            $list = array();
        }

        return $list;
    }
}
```

Right now, `getPaymentMethods()` method looks default. We want to disable the **Credit Card** payment method for **Courier** shipping method that is why we should alter the condition: 

```php
if (!$method->isEnabled() || !$method->getProcessor()->isApplicable($this, $method))
```

and if chosen shipping method is **Courier** – `$this->getShippingId() == 2` – then payment method with ID 132 (**Credit Card**) must be unset – `$method->getMethodId() == 132`. So, the final condition will be as follows: 

```php
if (!$method->isEnabled() || !$method->getProcessor()->isApplicable($this, $method) || $this->getShippingId() == 2 && $method->getMethodId() == 132)
```

That is it. Now we need to re-deploy the store and check the results at checkout.

_Note: if your module does not work properly, please make sure that you are using correct shipping method and payment method IDs as they may vary in your particular store._

## Checking results

Once the store is re-deployed, you should add some product to a cart and go to checkout. When you choose **Pick up at store** shipping method, then you should see the following result:![]({{site.baseurl}}/attachments/8225320/8356173.png)

If you switch shipping method to **Courier**, you should see the following result:
 ![]({{site.baseurl}}/attachments/8225320/8356174.png)

As you can see, the **Credit Card** payment method is hidden now.

## Module pack

You can download this module example from here: <https://www.dropbox.com/s/rdn26m879msv6ir/Tony-PaymentShippingDependencyDemo-v5_1_0.tar>

## Attachments:

* [shipping-methods.png]({{site.baseurl}}/attachments/8225320/8356171.png) (image/png)
* [payment-methods.png]({{site.baseurl}}/attachments/8225320/8356172.png) (image/png)
* [checkout-shipping-method-1.png]({{site.baseurl}}/attachments/8225320/8356173.png) (image/png)
* [checkout-payment-method-2.png]({{site.baseurl}}/attachments/8225320/8356174.png) (image/png)
