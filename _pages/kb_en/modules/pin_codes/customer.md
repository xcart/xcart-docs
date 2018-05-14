---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-14 09:57 +0400'
identifier: ref_6zxUp9Kr
title: 'PIN Codes: Customer Experience'
order: 100
published: false
---
When a customer proceeds to checkout after adding a product with PIN codes to cart, there is no shipping section there if shipping for the product is disabled:

![invoice.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/invoice.png)

After an order is placed, it gets the _Waiting for approve_ fulfilment status if the _Approve before providing access to download_ option is {% link "enabled" ref_5uEPaGnt %}: 

![wfa-customer.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/wfa-customer.png)

And a customer receives an {% link "e-mail notification" ref_5QLrLCu7 %} "Order waiting for approval":
![e-mail.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/e-mail.png)

Providing the order is paid and the order fulfilment status is changed to any other except for _Will not deliver_ a PIN code becomes available to a customer in the PIN Codes tab of the My Orders section of the customer account in the storefront:

![pin-codes-customer.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/pin-codes-customer.png)

The customer also recieves this PIN code in an e-mail notification. More info on the e-mail notificatons you can get in {% link "Email Notifications: Set Up and Maintenance" ref_5QLrLCu7 %}.

In case the the _Approve before providing access to download_ option is disabled, the customer gets PIN code for the product right after the order is paid.

{% note info %}
In case a customer pays with a subscription for a product with PIN codes s/he receives all {% link "X-Payments" ref_8VFoqBFZ %} related e-mail notifications as well as regular PIN Codes related notifications on the order status updates. Depending on whether the _Approve before providing access to download_ option is enabled or not the customer will receive a PIN code either right after the subscription is paid or after the subscription is paid and the _Waiting for approve_ fulfilment status is changed to any other, except for _Will not deliver_.

Such customer will receive an updated PIN code each time a subscription is paid.
{% endnote %}

