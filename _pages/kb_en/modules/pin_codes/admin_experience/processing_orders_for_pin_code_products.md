---
lang: en
layout: article_with_sidebar
updated_at: '2019-06-02 18:36 +0400'
identifier: ref_51VMMYKj
title: Processing Orders for PIN Code Products
order: 100
published: true
---
Your store customers can pay for products with PIN codes using any of the available payment options, including both online and offline methods. 

If the _Approve before providing access_ option is {% link "enabled" ref_5uEPaGnt %}, a PIN code does not become available to the customer right after the order is placed.  Such orders get the _Waiting for approve_ fulfilment status. 

![wfa_status.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/wfa_status.png)

A PIN code becomes available after a store administrator changes the order fulfilment status to any other status - except for _Will not deliver_ - provided that the order has been paid for (the payment status is paid). If the administrator changes the order fulfilment status to _Will not deliver_, the customer will not get the PIN code. More info on X-Cart order statuses is available in the section {% link "Understanding X-Cart Order Statuses" ref_DkbTi1qJ %}.

Once an order is processed, a store admin can check the PINs sold via the _PIN codes_ tab of the Order details page:

![order.png]({{site.baseurl}}/attachments/ref_5kUqjYZ7/order.png)

Due to the specificity of how digital products are delivered, the addon PIN Codes enables you to have more control of how orders with PIN codes are processed: 
- you can disable all online payment methods, which mostly work for automatic order processing;
- you can choose to enable only those payment methods that require manual processing; 
- you can choose the payments that allow using the "auth only" mode. 

{% note info %}

The "auth only" option means that a payment gateway does not really withdraw the order total from a customer's credit card, but it only checks whether the sum is available and temporarily freezes this money until a later time, which is limited by the terms and conditions of the payment gateway. The store administrator can then either capture the authorized amount or void it. As soon as the reserved money is captured, the order gets processed and a download link becomes available in X-Cart customer account.

{% endnote %}

Processing orders that contain products with PIN codes using payments with "auth only" mode as well as using other methods that require manual order processing allows you to filter suspicious and potentially fraudulent orders and approve only trustworthy purchases.

{% note info %}
If you are using the addon PIN Codes along with {% link "X-Payments subscriptions" ref_8VFoqBFZ %}, a customer will get an updated PIN code for the product each time a subscription fee is paid.
{% endnote %}
