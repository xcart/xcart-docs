---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 14:03 +0400'
identifier: ref_208aL8a0
title: 'E-goods Module: Customer Experience'
order: 140
published: true
---
When placing an order for a downloadable product in an X-Cart based store, a shopper does not have to provide any shipping related details as downloadable products do not require physical shipping:

![checkout.png]({{site.baseurl}}/attachments/ref_208aL8a0/checkout.png)

To pay for a downloadable product, a shopper can use any of the available payment options, including online and offline methods.

If the store does not use manual review of orders with downloadable products, the buyer of a downloadable product will get a download link for the product they have purchased right after the order has been paid for.

If the store administrator has enabled manual review for orders with downloadable products, the buyer of a downloadable product will not receive a download link for the product; instead, the order will be assigned the fulfilment status _Waiting for approve_:

![wfa-customer.png]({{site.baseurl}}/attachments/ref_208aL8a0/wfa-customer.png)

The buyer will receive an "Order waiting for approval" {% link "email notification" ref_5QLrLCu7 %}:
![notification.png]({{site.baseurl}}/attachments/ref_208aL8a0/notification.png)
(This, of course, if the store administrator has not disabled the use of such notifications.)

After the store administrator chooses to update the order fulfilment status to any status other than "_Will not deliver_", a download link will be sent to the buyer in the "Your order has been changed" email notification:

![invoice-1.png]({{site.baseurl}}/attachments/ref_208aL8a0/invoice-1.png)

The buyer will also be able to find the download link for the product in the **Ordered files** tab of the **My orders** section in the Customer area.

![order-files.png]({{site.baseurl}}/attachments/ref_208aL8a0/order-files.png)

{% note info %}
In case a customer pays with a subscription for a downloadable product s/he'll receive all {% link "X-Payments" ref_8VFoqBFZ %} related e-mail notifications as well as regular E-goods related notifications on the order status updates. Depending on whether the **Approve before providing access to download** option is enabled or not the customer will receive a download link either right after the subscription is paid or after the subscription is paid and the _Waiting for approve_ fulfilment status is changed to any other, except for _Will not deliver_.

Such customer will receive an updated link with the actual product attachment on the moment of payment to download the product each time a subscription is paid and will not receive any notifications on and will not have access to the history of the product attachment changes through the subscription period.
{% endnote %}
