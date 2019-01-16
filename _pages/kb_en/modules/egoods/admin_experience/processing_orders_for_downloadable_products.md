---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-08 16:18 +0400'
identifier: ref_0ctZibff
title: Processing Orders for Downloadable Products
order: 140
published: true
---
The store administrator can adjust the steps of the order processing routine for e-goods orders using the settings on the {% link "E-goods module settings" ref_1dsuHf3i %} page:

   * The setting "Show only ESD related fulfilment statuses" can be used to limit the set of fulfilment statuses that should be used by the store. Due to the specifics of the electronic method of delivery of such goods to the buyer, any statuses pertaining to the packaging, handling and shipping of an order will not be applicable for e-goods. If all the products in the store catalog are e-goods (no tangible goods that require shipping), the store administrator may consider switching to the E-goods order fulfilment model with just three statuses (_New_, _Delivered_ and _Will not deliver_). More info on X-Cart order statuses can be found in {% link "Understanding X-Cart order statuses" ref_DkbTi1qJ %}.

   * The setting "Approve before providing access to download" can be used by the administrator to specify whether they want to include an additional step into their order processing routine for e-goods so they can review the order before the buyer gets their download link.
     If the administrator does not feel they will need to do a manual review of every order containing e-goods, they may choose to disable the option "Approve before providing access to download". In this case, a buyer who orders a downloadable product will get the download link for it as soon as the order has been paid for (technically, as soon as the order payment status has been set to _Paid_). The initial order fulfilment status in this case will be _New_. The store administrator will then be able to process the order the usual way, updating the order payment and fulfilment statuses as they require. For example, after completing all work on the order, the store administrator may choose to set the order fulfilment status to _Delivered_. 
     If, contrary to the above approach, the administrator wants to check into the details of every e-goods order they receive before allowing the buyer to download the product, they will need to enable the option "Approve before providing access to download". In this case, a buyer who orders a downloadable product _will not_ get the download link right away. The order will be automatically assigned the fulfilment status _Waiting for approve_:
![wfa_status.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/wfa_status.png)
When the store administrator gets an order with the fulfilment status _Waiting for approve_, they will need to review it and decide whether they want to approve it. To approve the order, the administrator will need to switch the fulfilment status of the order to any status other than _Will not deliver_. Provided that the order has been paid for (the order payment status is _Paid_), this will allow the buyer access to the download link. If the administrator chooses not to approve the order, they will need to switch the fulfilment status of the order to _Will not deliver_. In this case the buyer will not get access to the download link. 

Once an order has been processed, the store administrator can update the e-goods status in the _E-goods_ tab of the Order details page:

![order-details.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/order-details.png)

Here you can see the amount of downloads left, TTL and also can block or renew access to the file.

Due to the specifics of how digital products are delivered, the E-goods module enables you to have more control of how orders with downloadable products are processed:
- You can disable all online payment methods, which mostly work for automatic order processing.
- You can choose to enable only those payment methods that require manual processing.
- You can choose the payments that allow using the "auth only" mode. 

The "auth only" option means that a payment gateway does not really withdraw the order total from a customer's credit card, but it only checks whether the sum is available and temporarily freezes this money until a later time, which is limited by the terms and conditions of the payment gateway. The store administrator can then either capture the authorized amount or void it. As soon as the reserved money is captured, the order gets processed and a download link becomes available in the customer's account.

Processing orders that contain downloadable products using payments with "auth only" mode as well as using other methods that require manual order processing allows you to filter suspicious and potentially fraudulent orders and approve only trustworthy purchases.
