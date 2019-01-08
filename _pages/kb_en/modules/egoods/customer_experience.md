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

If the store uses {% link "X-Payments subscriptions" ref_8VFoqBFZ %}, a customer who has purchased a downloadable product on subscription will get an updated download link for the product every time they pay a subscription fee. Note that if the store administrator has enabled manual reviews for downloadable product orders, the customer will also have to wait for the order status to be updated appropriately to any status other than _Will not deliver_ before they can access the link. Also note that the history of attachment changes will not be stored, and the customer will not be notified of any attachment changes during the subscription period.
