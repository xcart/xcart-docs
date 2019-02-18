---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-04 12:22 +0400'
identifier: ref_MQB8GDLT
title: Amazon Pay customer experience
categories:
  - User manual
published: true
order: 140
redirect_from:
  - /modules/pay_with_amazon/pay_with_amazon_customer_experience.html
---


In the Customer area of your X-Cart store, in all the locations from which buyers can initiate checkout, the Amazon Pay addon adds a **Pay with Amazon** button:

Here's what it looks like:

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![amz-cus-cart.png]({{site.baseurl}}/attachments/ref_MQB8GDLT/amz-cus-cart.png)"Your shopping bag" page</div>
  <div class="column" markdown="span">![amz-cus-minicart.png]({{site.baseurl}}/attachments/ref_MQB8GDLT/amz-cus-minicart.png)"Minicart" widget</div>
  <div class="column" markdown="span">![amz-cus-popup.png]({{site.baseurl}}/attachments/ref_MQB8GDLT/amz-cus-popup.png)"Add to cart" popup (if {% link "Add to Cart PopUp" ref_1iGC8Efj %} is enabled)</div>
</div>


Once the **Amazon Pay** button is clicked, a pop-up window titled "Amazon Pay: Sign In" is displayed where the buyer is asked for their Amazon Pay account email address and password:

![amz-cus-signin.png]({{site.baseurl}}/attachments/ref_MQB8GDLT/amz-cus-signin.png)

After the buyer successfully authenticates, they find themselves on a special checkout page in X-Cart which has two Amazon widgets embedded in it: the AddressBook widget (the "Address Book" section) where the buyer can select a shipping address from their Amazon Pay account or add a new one and the Wallet widget (the "Payment Method" section) where the buyer can select a payment method from their Amazon Pay account:

![amz-checkout.png]({{site.baseurl}}/attachments/ref_MQB8GDLT/amz-checkout.png)

{% note info %}
The buyer stays on your store's site throughout the checkout process, without ever being redirected to Amazon.
{% endnote %}

After selecting a shipping address and a payment method from their account, the buyer selects a shipping method. X-Cart uses the information provided by the customer to calculate the shipping cost and taxes. Then the buyer places the order using the **Place order** button. This sends a payment request to Amazon.

After submitting the order, the buyer sees X-Cart's standard order confirmation page ("Congratulations! Your order has been placed. You will receive your order confirmation shortly") displaying the order invoice with all the required information (The payment method is shown as "Amazon Pay").  

The way in which the order status is handled after order placement depends on the Amazon Pay addon settings:

*   If the _Synchronous_ type of authorization request is used, the order status almost instantly becomes one of the following:
    *   "Authorized" (= successful authorization, possible in "Authorization then capture" capture mode);
    *   "Processed" (= successful authorisation and capture, possible in "Immediate Charge" capture mode);
    *   "Declined" (= transaction declined).
*   If the _Asynchronous_ type of authorization request is used, the order initially gets the status "Queued", and, a few minutes later, when the store receives the payment request processing status from Amazon through the Instant Payment Notification (IPN) service,  this order status is updated to either "Authorized"/"Processed" (dependes on the Capture mode) or "Declined".

When the order is created, appropriate order notifications are sent to the email addresses of the buyer and the store's orders department in accordance with your store's **Store setup** -> **Email notifications** configuration (see more info about email configuration in {% link "Email notifications: setup and maintenance" ref_5QLrLCu7 %}). When the payment's status in Amazon Pay transitions as a part of the payment process (for example, when you capture a previously authorized amount or issue a refund), appropriate notifications are sent as well.

_Related pages:_

*   {% link "Configuring the Amazon Pay addon" ref_0UssH5KP %}
*   {% link "Amazon Pay admin experience" ref_meqXfPIt %}
