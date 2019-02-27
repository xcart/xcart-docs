---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-03 09:27 +0400'
identifier: ref_7dKyzAJ4
title: Not Finished Orders
order: 190
published: true
redirect_from:
  - /orders/not_finished_orders.html
---
When a buyer completes a payment process with a payment gateway and clicks _**Place Order**_, their cart in the X-Cart store front end is cleared, and the Admin back end registers an order for this buyer being an exact copy of the cart at the moment of payment. 

Sometimes it can be that a buyer proceeds to pay for the contents of their shopping cart but does not complete checkout due to many reasons (changes their mind, something distracts them from completing the payment, a computer crash occurs, etc.). In this case the store Admin back end does not register the order by default. If you want to have such "not finished" purchases registered, it is necessary to use the addon [Not Finished Orders](https://market.x-cart.com/addons/not-finished-orders.html "Not Finished Orders"). 

To install the addon, follow the regular guidelines provided in the article {% link "Activating and deactivating addons" ref_uEnDBBA7 %}.

{% note info %}
The addon **Not Finished Orders** works with the orders created with online payment processors. For the offline payment methods an order is created at the moment a buyer clicks the **Place order** button in the X-Cart front end, and the order gets the "Awaiting payment" status by default. 
{% endnote %}

To set up the addon **Not Finished Orders**, use the _Settings_ link.

![payment-transactions.png]({{site.baseurl}}/attachments/ref_5TMbPwNQ/payment-transactions.png)

The settings of the addon are as follows:

* **Not finished order will be created** : Choose the conditions that, if met, will result in the creation of a not finished order.

* **Clear cart if administrator changes order** : Enable if you need a customer's cart to be cleared in the front-end once the corresponding order is changed by the store admin in the Admin back end.

{% note info %}
If this option is set to 'YES', a buyer's cart of a not finished order will be cleared as soon as the store administrator changes the order details, e.g. a payment status of the not finished order, from _Status is not defined_ to _Awaiting payment_. By default the cart content is cleared only when an order is placed.  
{% endnote %}

* **Limit lifetime of not finished order** : If enabled, the store administrator will be able to define the time to use the cart in its current state for future attempts in days. 

Once enabled and set up, the store administrator will see the not finished orders in the **Orders** section of the Admin back end.

![order.png]({{site.baseurl}}/attachments/ref_5TMbPwNQ/order.png)

A not finished order won't have an order number and the payment status will be _Status is not defined_. The order will get an orderID only when and if the store administrator changes the fulfilment status and payment status of the order.

The **Not Finished Orders** addon is good for manual tracking of the purchases. If you want to automate the procedure use the {% link "Abandoned Cart Reminder" ref_Mf6yeSBE %} addon. It works with any abandoned cart regardless of the payment method.
