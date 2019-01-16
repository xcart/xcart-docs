---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-08 16:18 +0400'
identifier: ref_0ctZibff
title: Processing Orders for Downloadable Products
order: 140
published: true
---
The order processing routine for orders containing e-goods may be different depending on the way the setting "Approve before providing access to download" in the {% link "module configuration settings" ref_1dsuHf3i %} has been adjusted: 

   * If this setting is disabled, a buyer who orders a downloadable product gets the download link as soon as they have paid for the order. The order fulfilment status is preset to _New_.
   
   * If this setting is enabled, a buyer who orders a downloadable product _does not_ get the download link right away. The order gets the fulfilment status _Waiting for approve_, and the store administrator needs to manually review the order. 
![wfa_status.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/wfa_status.png)

     Provided that the order has been paid for (the order payment status is _Paid_), after making sure that all is well with the order, the administrator can allow the buyer access to the download link by switching the fulfilment status of the order to any status other than _Will not deliver_; as soon as it happens, the buyer will get access to the download link. If the administrator chooses not to provide access to the download link to the buyer, they can switch the fulfilment status of the order to _Will not deliver_, and the buyer will not get access to the download link. More info on X-Cart order statuses can be found in {% link "Understanding X-Cart order statuses" ref_DkbTi1qJ %}.

Once an order is processed, the store administrator can update the e-goods status in the _E-goods_ tab of the Order details page:

![order-details.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/order-details.png)

Here you can see the amount of downloads left, TTL and also can block or renew access to the file.

Due to the specifics of how digital products are delivered, the E-goods module enables you to have more control of how orders with downloadable products are processed:
- You can disable all online payment methods, which mostly work for automatic order processing.
- You can choose to enable only those payment methods that require manual processing.
- You can choose the payments that allow using the "auth only" mode. 

The "auth only" option means that a payment gateway does not really withdraw the order total from a customer's credit card, but it only checks whether the sum is available and temporarily freezes this money until a later time, which is limited by the terms and conditions of the payment gateway. The store administrator can then either capture the authorized amount or void it. As soon as the reserved money is captured, the order gets processed and a download link becomes available in the customer's account.

Processing orders that contain downloadable products using payments with "auth only" mode as well as using other methods that require manual order processing allows you to filter suspicious and potentially fraudulent orders and approve only trustworthy purchases.
