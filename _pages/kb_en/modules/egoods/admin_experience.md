---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:57 +0400'
identifier: ref_3sGGx0lV
title: 'E-goods Module: Admin Experience'
order: 130
published: true
---

## Adding downloadable product

Adding a downloadable product is similar to adding an ordinary product described in {% link "Adding products" ref_fhzzxDTy %}. The only difference regarding downloadable products is that you must also assign a file to a product using the _Attachments_ tab on the **Product details** page in the Admin/Provider area.

To assign a file to a product:
1. Create, import or clone a product as described in {% link "Adding products" ref_fhzzxDTy %}.
2. In the _Info_ tab of the Product details page locate the **Shipping** section and disable shipping for the product.
  ![shipping.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/shipping.png)
3. At the Product details page, locate the _Attachments_ tab and assign a file to a product.
  ![attachments.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/attachments.png)
  You can upload files from your local computer, from your local server and via an external URL.
4. Save the changes.

{% note info %}
If you are using the E-goods module along with {% link "X-Payments subscriptions" ref_8VFoqBFZ %} a customer will get an updated download link for the product each time a subscription fee is paid. The history of the attachment changes is not stored and the customer is not notified about any possible attachment changes within a subscription period.
{% endnote %}

## Processing Orders

Your store customers can pay for downloadable products, using any of the available payment options, including both online and offline methods. The link for download doesn't become vailable to customers right after placing an order and the order gets a _Waiting for approve_ fulfilment status. 

![wfa_status.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/wfa_status.png)

The download link becomes available after a store admin changes the order fulfilment status to any other except for _Will not deliver_ provided that the order is paid (payment status is paid). If the cart admin changes the order fulfilment status to _Will not deliver_ the customer will not get access to the download link. More info on the order statuses you can find in {% link "Understanding X-Cart order statuses" ref_DkbTi1qJ %}.

Once an order is processed, a store admin can update the e-goods status in the _E-goods_ tab of the Order details page:

![order-details.png]({{site.baseurl}}/attachments/ref_3sGGx0lV/order-details.png)

Here you can see the amount of downloads left, TTL and also can block or renew access to the file.

Due to the specificity of how digital products are delivered, the Egoods module enables you to have more control of how orders with downloadable products are processed: 
- you can disable all online payment methods, which mostly work for automatic order processing;
- you can choose to enable only those payment methods that require manual processing; 
- you can choose the payments that allow using the "auth only" mode. 

{% note info %}

The "auth only" option means that a payment gateway does not really withdraw the order total from a customer's credit card, but it only checks whether the sum is available and temporarily freezes this money until a later time, which is limited by the terms and conditions of the payment gateway. The store administrator can then either capture the authorized amount or void it. As soon as the reserved money is captured, the order gets processed and a download link becomes available in X-Cart customer account.

{% endnote %}

Processing orders that contain downloadable products using payments with "auth only" mode as well as using other methods that require manual order processing, allows you to filter suspicious and potentially fraudulent orders and approve only trustworthy purchases.
