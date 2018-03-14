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

This article explains how to make payment method depend on a shipping method chosen.

For instance, you have two shipping options for an order: a customer can come to your shop and **pick up an order** there or you can send a **courier** to this customer. When a person comes to your shop you can accept **cash** or **credit card** – so you will show these two options on checkout – but if you send a courier, then they can accept **cash only**. Agreed, the example is a bit farfetched, but the most important is to grasp an idea: one shipping method allows one set of payment methods, another shipping method allows another set of payment methods.

The mod described in this article will explain how to achieve this result.

{% toc Table of Contents %}

## Initial set up of the store

We need to start with setting up payment and shipping methods in the store. We want to have two shipping methods:

1.  Pick up at store;
2.  Courier.

We go to 'Store setup > Shipping' section in your admin area, click 'Add shipping method > Custom table rates' and create two shipping methods as follows:
![two-shipping-methods.png]({{site.baseurl}}/attachments/ref_Z6mwXUDg/two-shipping-methods.png)

Do not forget to [assign some shipping rates](http://kb.x-cart.com/en/shipping/custom_table_rates.html) to these shipping methods. I am using 0 shipping rate for **Pick up at store** and $10 flat rate for **Courier**.

We also have to have two payment methods, that is why we go to 'Store setup > Payment methods' section in admin area and create two offline payment methods ('Cash' and 'Credit Card') as follows:![]({{site.baseurl}}/attachments/8225320/8356172.png)

## Implementation

Now we can start creating our mod.

We {% link "create an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **PaymentShippingDependencyDemo**. Inside this module, we decorate the `getPaymentMethods()` method of the `\XLite\Model\Order` class. We create the `classes/XLite/Module/Tony/PaymentShippingDependencyDemo/Model/Order.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\PaymentShippingDependency\Model;

/**
 * Class represents an order
 */
class Order extends \XLite\Model\Order implements \XLite\Base\IDecorator
{
	public function getPaymentMethods()
    {
        $list = parent::getPaymentMethods();

        foreach ($list as $i => $method) {
            if ($this->getShippingMethodName() == 'Courier' && $method->getName() == 'Credit Card') {
                unset($list[$i]);
                }
        }    

        return $list;
    }
}

```

Our code takes all payment methods that would be generally available at checkout and then apply its own condition: if current shipping method is 'Courier' (`$this->getShippingMethodName() == 'Courier'`), then we will not display payment method with 'Credit Card' name.

That is it. Now we should test the results at checkout.

_Note: if your module does not work properly, please make sure that you are using correct shipping method and payment method names._

## Checking results

Add some product to a cart and go to checkout. When you choose **Pick up at store** shipping method, you see both payment methods:
![checkout-pick-up-at-store.png]({{site.baseurl}}/attachments/ref_Z6mwXUDg/checkout-pick-up-at-store.png)

If you switch shipping method to **Courier**, you should see only 'Cash' payment method:
![checkout-courier.png]({{site.baseurl}}/attachments/ref_Z6mwXUDg/checkout-courier.png)

As you can see, the **Credit Card** payment method is hidden now.

## Module pack

You can download the example module from here: <https://www.dropbox.com/s/qszz21dsofveck3/XCExample-PaymentShippingDependency-v5_3_0.tar>