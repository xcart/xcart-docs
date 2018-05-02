---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-02 11:57 +0400'
identifier: ref_3sGGx0lV
title: 'E-goods Module: Admin Experience'
order: 100
published: false
---
{% toc %}

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

## Processing Orders

Your store customers can pay for downloadable products, using any of the available payment options, including both online and offline methods. A few minutes after an order with a downloadable product has been processed, a customer, who placed the order, receives an email message ( 'Order is processed' notification) with a download key (a link like http://www.example.com/xcart/download.php?id=920e98f7d889eb7781a). The customer must then follow the link and download the product before the key has expired. The expiration period, which is also referred to as TTL (time to live), is defined by the store administrator on the module's configuration page. The TTL countdown for a download key begins immediately after the order has been processed and X-Cart sent a message with the key. An order is considered to be processed after its status has been changed to "Processed". Order statuses can be changed either manually by the store administrator or automatically according to a response that X-Cart receives from a payment gateway, which actually processes online payments. For a more detailed description of how X-Cart handles orders and order statuses, refer to the Orders section of the manual.

Due to the specificity of how digital products are delivered, the Egoods module enables you to have more control of how orders with digital products are processed: You can disable all online payment methods, which mostly provide for automatic order processing; or you can choose to enable only those payment methods that require manual processing or have the "auth only" mode. The "auth only" option means that a payment gateway does not really withdraw the order total from a customer's credit card, but it only checks whether the sum is available and temporarily freezes this money until a later time, which is limited by the terms and conditions of the payment gateway. The store administrator can then either capture the authorized amount or void it. As soon as the reserved money is captured, the order gets processed and X-Cart sends a download key to the customer.

This way of processing orders that contain downloadable products, as well as using other methods that require manual order processing, allows you to filter suspicious and potentially fraudulent orders and approve only trustworthy purchases.
