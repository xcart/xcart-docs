---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-14 09:57 +0400'
identifier: ref_6zxUp9Kr
title: 'PIN Codes: Customer Experience'
order: 130
published: true
---
When placing an order for a product with PIN codes in an X-Cart based store, a shopper does not have to provide any shipping related details as PIN codes do not require physical shipping:

![invoice.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/invoice.png)

To pay for a PIN code product, a shopper can use any of the available payment options, including online and offline methods.

If the store does not use manual review of orders with PIN code products, the buyer of a PIN code product will get access to the code they have purchased via the PIN Codes tab of the **My Orders** section of their account in the store front end:
![pin-codes-customer.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/pin-codes-customer.png)

If the store administrator has enabled manual review for orders with PIN code products, the buyer of a PIN code product will not get access to the code right away; instead, the order will be assigned the fulfilment status _Waiting for approve_:
![wfa-customer.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/wfa-customer.png)

The buyer will receive an "Order waiting for approval" {% link "e-mail notification" ref_5QLrLCu7 %}:
![e-mail.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/e-mail.png)
(This, of course, if the store administrator has not disabled the use of such notifications.)

After the store administrator chooses to update the order fulfilment status to any status other than "_Will not deliver_", the PIN code will become available to the buyer via the PIN Codes tab of the **My Orders** section of the buyer's account in the store front end.
![pin-codes-customer.png]({{site.baseurl}}/attachments/ref_6zxUp9Kr/pin-codes-customer.png)

The buyer will also recieve the PIN code in an e-mail notification message. More info on email notificatons is available in the section {% link "Email Notifications: Set Up and Maintenance" ref_5QLrLCu7 %}.

{% note info %}
If the store uses {% link "X-Payments subscriptions" ref_8VFoqBFZ %}, a customer who has purchased a PIN code product on subscription will get all {% link "X-Payments" ref_8VFoqBFZ %} related email notifications as well as the regular PIN code related notifications. An updated PIN code will be mailed to them every time they pay a subscription fee. Note that if the store administrator has enabled manual reviews for PIN code product orders, the customer will also have to wait for the order status to be updated appropriately to any status other than _Will not deliver_ before they can access the code.
{% endnote %}

 