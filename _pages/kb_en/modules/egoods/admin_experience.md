---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:57 +0400'
identifier: ref_3sGGx0lV
title: 'E-goods Module: Admin Experience'
order: 130
published: true
---
## Configuring Downloadable Products
Configuring a downloadable product is similar to adding an ordinary product. The only difference regarding configuring a downloadable product is that after completing basic product setup as described in {% link "Adding products" ref_fhzzxDTy %} you must assign a downloadable file to the product and - as the product will not require physical shipping - disable shipping for it.

Here's how to configure a downloadable product from the store back end (Admin area or - in the case of X-Cart Multivendor - Vendor area):
1. Create a new product or find an existing product that you wish to turn into a downloadable one. 
2. On the **Info** tab of the Product details, locate the section **Shipping** and disable shipping for the product.
  ![shipping.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/shipping.png)
3. Go to the **Attachments** tab and assign a file to the product.
  ![attachments.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/attachments.png)
  You can upload files from your local computer, from your local server and via an external URL.
4. Save the changes.

## Processing Orders
The product download link does not become available to the buyer right after an order is placed. The order gets the fulfilment status _Waiting for approve_, and the store administrator needs to manually review the order.
![wfa_status.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/wfa_status.png)

The download link becomes available after the administrator changes the order fulfilment status to any other except for _Will not deliver_ provided that the order is paid (payment status is paid). If the admin changes the order fulfilment status to _Will not deliver_ the customer will not get access to the download link. More info on X-Cart order statuses you can find in {% link "Understanding X-Cart order statuses" ref_DkbTi1qJ %}.

Once an order is processed, the store administrator can update the e-goods status in the _E-goods_ tab of the Order details page:

![order-details.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/order-details.png)

Here you can see the amount of downloads left, TTL and also can block or renew access to the file.

Due to the specifics of how digital products are delivered, the E-goods module enables you to have more control of how orders with downloadable products are processed:
- You can disable all online payment methods, which mostly work for automatic order processing.
- You can choose to enable only those payment methods that require manual processing.
- You can choose the payments that allow using the "auth only" mode. 

The "auth only" option means that a payment gateway does not really withdraw the order total from a customer's credit card, but it only checks whether the sum is available and temporarily freezes this money until a later time, which is limited by the terms and conditions of the payment gateway. The store administrator can then either capture the authorized amount or void it. As soon as the reserved money is captured, the order gets processed and a download link becomes available in the customer's account.

Processing orders that contain downloadable products using payments with "auth only" mode as well as using other methods that require manual order processing allows you to filter suspicious and potentially fraudulent orders and approve only trustworthy purchases.
