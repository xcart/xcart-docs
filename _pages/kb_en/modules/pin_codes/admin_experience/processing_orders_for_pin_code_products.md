---
lang: en
layout: article_with_sidebar
updated_at: '2019-06-02 18:36 +0400'
identifier: ref_51VMMYKj
title: Processing Orders for PIN Code Products
order: 100
published: true
---
## Order Processing Routine for Orders Containing PIN Code Products 
The store administrator can adjust the steps of the order processing routine for orders containing PIN code products using the settings on the {% link "PIN codes addon settings page" ref_5uEPaGnt %}:

   * The setting "Show only ESD related fulfilment statuses" can be used to limit the set of fulfilment statuses that should be used by the store. Due to the specifics of the electronic method of delivery of egoods/PIN codes to the buyer, any statuses pertaining to the packaging, handling and shipping of an order will not be applicable for such products. If all the products in the store catalog are e-goods or PIN codes (no tangible goods that require shipping), the store administrator may consider switching to the E-goods order fulfilment model with just three statuses (_New_, _Delivered_ and _Will not deliver_). More info on X-Cart order statuses can be found in {% link "Understanding X-Cart order statuses" ref_DkbTi1qJ %}.

   * The setting "Approve before providing access" can be used by the administrator to specify whether they want to include an additional step into their order processing routine for products with PIN codes so they can review the order before the buyer gets access to the code.
   
     If the administrator does not feel they will need to do a manual review of every order containing a PIN code product, they may choose to disable the option "Approve before providing access". In this case, a buyer who orders a product with PIN codes will get access to the code as soon as the order has been paid for (technically, as soon as the order payment status has been set to _Paid_). The initial order fulfilment status in this case will be _New_. The store administrator will then be able to process the order the usual way, updating the order payment and fulfilment statuses as they require. For example, after completing all work on the order, the store administrator may choose to set the order fulfilment status to _Delivered_. 
    
     If, contrary to the above approach, the administrator wants to check into the details of every order containing a PIN code product they receive before allowing the buyer to access the code, they will need to enable the option "Approve before providing access". In this case, a buyer who orders a product with PIN codes _will not_ get access to the code right away. The order will be automatically assigned the fulfilment status _Waiting for approve_:
   ![wfa_status.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/wfa_status.png)

   When the store administrator gets an order with the fulfilment status _Waiting for approve_, they will need to review it and decide whether they want to approve it. 
     
   To approve the order, the administrator will need to switch the fulfilment status of the order to any status other than _Will not deliver_. Provided that the order has been paid for (the order payment status is _Paid_), this will allow the buyer access to the code. 
     
   If the administrator chooses not to approve the order, they will need to switch the fulfilment status of the order to _Will not deliver_. In this case the buyer will not get access to the code. 





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
