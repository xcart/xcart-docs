---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-26 13:35 +0400'
identifier: ref_5TMbPwNQ
title: Not Finished Orders
order: 100
published: true
description: not finished orders module
---
Sometimes it can be that a customer proceeds to paying an order but doesn't complete it due to many reasons (a customer changes his mind, something distracts a customer from the payment, a computer crash, etc.) and a merchant wants to see such not finished purchases to track them. For the cases of the kind you can use the **Not Finished Orders module** in X-Cart. This module is free and can be {% link "enabled" ref_0fGEpvrh %} in the _**My Addons**_ section of the cart admin back-end.

To set up the module use the _Settings_ link.

![payment-transactions.png]({{site.baseurl}}/attachments/ref_5TMbPwNQ/payment-transactions.png)

The settings of the module are as follows:

* _Not finished order will be created_  - in this drop-down the admin can choose the conditions that if met will result in a not finished order creation.
* _Clear cart if administrator changes order_ - YES/NO
* _Limit lifetime of not finished order_ - If enabled, the cart admin will be able to define the the time to use the order for future attempts in days. 

Once enabled and set up, the cart admin will see not finished orders in the Orders section of the admin back-end.

![order.png]({{site.baseurl}}/attachments/ref_5TMbPwNQ/order.png)

A not finished order won't have an order number and the payment status will be "Status is not defined". The order will get a number only when and if the cart admin changes the fulfilment status and payment status of the order.
