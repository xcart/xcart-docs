---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-27 10:37 +0400'
identifier: ref_0DnA7pBo
title: Customer Experience
order: 120
published: true
---
The Order Returns addon supports full and partial returns for customers.

If an order [permits for return](https://kb.x-cart.com/orders/order_returns/managing_OR.html#specifying-return-conditions "Customer Experience"), a customer can click a **Return** button on the order details page in a customer account and claim for return:
![541-return-button-customer-account.png]({{site.baseurl}}/attachments/ref_0DnA7pBo/541-return-button-customer-account.png)

The customer will be redirected to the _Create Return_ page where it will be possible to specify the reason for return, select a preferred solution and leave a comment if necessary depending on the {% link "return options" ref_5JucPxO8 %} configured by the administrator. 
![541-create-order-return-page.png]({{site.baseurl}}/attachments/ref_0DnA7pBo/541-create-order-return-page.png)

When submitted, the respective order details will gain a note on a return registered for it with an "Issued" request status.
![541-order-return-registered-cus.png]({{site.baseurl}}/attachments/ref_0DnA7pBo/541-order-return-registered-cus.png)

The further progress of a return request processing will be tracked by [email notifications](https://kb.x-cart.com/orders/order_returns/managing_OR.html#configuring-email-notifications-for-returns "Customer Experience"). 

The final resolution displays on the respective order details page and is also sent by email.
![541-order-return-completed-cus.png]({{site.baseurl}}/attachments/ref_0DnA7pBo/541-order-return-completed-cus.png)

If a return request is authorized the request status changes to "completed". If a request is declined, the status changes to "declined" as well.

