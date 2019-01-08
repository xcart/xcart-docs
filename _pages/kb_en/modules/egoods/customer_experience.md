---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 14:03 +0400'
identifier: ref_208aL8a0
title: 'E-goods Module: Customer Experience'
order: 140
published: true
---
When a customer proceeds to checkout after adding a downloadable product to cart, there is no shipping section there if shipping for the product is disabled:

![checkout.png]({{site.baseurl}}/attachments/ref_208aL8a0/checkout.png)

After an order is placed, it gets the _Waiting for approve_ fulfilment status [if the **Approve before providing access to download** option is {% link "enabled" ref_1dsuHf3i %}]: 

![wfa-customer.png]({{site.baseurl}}/attachments/ref_208aL8a0/wfa-customer.png)

And a customer receives an {% link "e-mail notification" ref_5QLrLCu7 %} "Order waiting for approval":
![notification.png]({{site.baseurl}}/attachments/ref_208aL8a0/notification.png)

After the order fulfilment status is changed to any other except for _Will not deliver_ a download link is sent to a customer in the "Your order has been changed" e-mail notification:

![invoice-1.png]({{site.baseurl}}/attachments/ref_208aL8a0/invoice-1.png)

In case the **Approve before providing access to download** option is disabled, the customer gets a download link for the product right after the order is paid.

The download link for the product can also be found in the _Ordered files_ tab of the **My orders** section in a customer account in your store.

![order-files.png]({{site.baseurl}}/attachments/ref_208aL8a0/order-files.png)

{% note info %}
In case a customer pays with a subscription for a downloadable product s/he'll receive all {% link "X-Payments" ref_8VFoqBFZ %} related e-mail notifications as well as regular E-goods related notifications on the order status updates. Depending on whether the **Approve before providing access to download** option is enabled or not the customer will receive a download link either right after the subscription is paid or after the subscription is paid and the _Waiting for approve_ fulfilment status is changed to any other, except for _Will not deliver_.

Such customer will receive an updated link with the actual product attachment on the moment of payment to download the product each time a subscription is paid and will not receive any notifications on and will not have access to the history of the product attachment changes through the subscription period.
{% endnote %}
