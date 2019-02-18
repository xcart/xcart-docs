---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-04 12:23 +0400'
identifier: ref_meqXfPIt
title: Amazon Pay Admin Experience
categories:
  - User manual
published: true
order: 150
redirect_from:
  - /modules/pay_with_amazon/pay_with_amazon_admin_experience.html
---


In your store's Admin area, orders that were placed by customers using Amazon Pay can be identified by the name of the payment method specified in the Payment info section of the order details ("Amazon Pay").

![amz-order-details.png]({{site.baseurl}}/attachments/ref_meqXfPIt/amz-order-details.png)

The order details page for such orders includes a section titled "Amazon Pay available order actions". Depending on the order status, this section may include the following buttons:

*   **Capture and Void**: These buttons are displayed when "Authorization then capture" mode is used, and the order is in the "Authorized" status. 
    The **Capture** button allows you to collect payment from the buyer after the respective payment amount has been authorized. 
    The **Void** button allows you to void the authorization.
    ![amz-capture.png]({{site.baseurl}}/attachments/ref_meqXfPIt/amz-capture.png)

*   **Refund**: This button allows you to refund the payment if you already captured funds. It is displayed when the order is "Processed" or "Completed".
    ![amz-refund.png]({{site.baseurl}}/attachments/ref_meqXfPIt/amz-refund.png)


*   **Refresh status**: This button is displayed if Instant Payment Notification with the results of processing the payment on the Amazon Pay end was not received by the store. This may be the case if IPN was not configured or was not working for some reason at the time of the transaction. 

     The **Refresh status** button provides a workaround solution allowing you to obtain information on the current status of the payment in Amazon Pay and to synchronize the status of the order in X-Cart with it. When you click this button, your store sends a request to Amazon Pay; after a response from Amazon is received, the status of the order in X-Cart is updated appropriately, and the respective buttons for available order actions ("Capture" and "Void", or "Refund") get displayed in the "Amazon Pay available order actions" section.
    ![]({{site.baseurl}}/attachments/7504753/7602407.png)

At the moment, X-Cart's Amazon Pay integration supports Authorize, Capture, Void and Refund operations only for the sum equalling the original order amount. Changes to the original authorization amount, partial captures and partial refunds are not supported. In situations calling for transactions with amounts that are more or less than the original order amount, we recommended cancelling the original order and working with the customer to place the order again. For example, if, after receiving an order, you find out that some of the items in the order have gone out of stock and cannot be fulfilled, you should Void or Refund the transaction and ask the customer to re-submit the order. 

_Related pages:_

*   {% link "Configuring the Amazon Pay addon" ref_0UssH5KP %}
*   {% link "Amazon Pay customer experience" ref_MQB8GDLT %}
