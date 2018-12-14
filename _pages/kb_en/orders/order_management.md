---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-29 14:49 +0400'
identifier: ref_6q6Mj9CC
title: Managing Orders in X-Cart
order: 30
published: true
---
All orders in X-Cart are recorded in the **Orders** -> **Order List** section where a cart admin can manage them.

![listing.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/listing.png)

The orders listing page has an advanced search panel where an admin can choose orders to work with according to several paramethers. The chosen filters can then be saved and will be displayed as preset filters on the top of the page.

![advanced-search.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/advanced-search.png)

Chosen orders can be bulk-edited using a panel on the bottom of the page. 

![bulk-edit.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/bulk-edit.png)

The options for bulk edit are:
* **Print selected**: Print invoice OR Print packing slip
* **Change payment status for selected** : Awaiting payment / Partially paid / Paid / Cancelled / Refunded
* **Change fulfillment status for selected** : New / Processing / Shipped / Delivered / Will not deliver / Returned
* **Delete selected**

Also it's possble to export orders into CSV directly on the orders listing page. Use the **'Export all: CSV'** button for the purpose

The order listing page allows to track the following order details:
* **Order number** : Orders are numbered sequentially, starting from the value defined for the _Next order #:_ field in {% link "General settings" ref_qAZlJxZm %}
* **Date** : Date and time of the order
* **Customer** : Name and email (by clicking on the customer name you;ll be redirected to the {% link "user profile" ref_gg1fQDgB %} page)
* **Payment status** : Awaiting payment / Partially paid / Paid / Cancelled / Refunded
* **Fulfillment status** : New / Processing / Shipped / Delivered / Will not deliver / Returned
* **Amount** : Order total and amount of items ordered.

The payment and fulfillment statuses for an order can be changed by the cart admin directly on the order listing page. The admin should **save changes** to make them active. 

For advanced order management open the order details page by clicking on the order number (e.g. #00020).

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![general-1.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/general-1.png)</div>
  <div class="column" markdown="span">![general-2.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/general-2.png)</div>
</div>

Advanced order management allows a store admin to change the following order details:
* **Customer e-mail address** : Info will be changed for this order only
* **Staff note** : Notes can be added in the field for comments
* **Payment method** : For [offline payment methods](https://kb.x-cart.com/payments/accepting_payments.html#offline-payment-methods "Managing Orders in X-Cart") only
* **Shipping method** : For any shipping method
* **Billing address** : Info will be changed for this order only
* **Shipping address** : Info will be changed for this order only
* **Fulfillment status** : Choose one of the available values
* **Payment status** : Choose one of the available values
* **Tracking number** : To add a tracking number click on the **'Add tracking number'** button. A tracking number can have up to 32 symbols.
* **Order items** : An admin can change the price and quantity of the ordered products and add new products to the order
* **Discount** : An admin can add a discount coupon by clicking the _Add coupon_ link or a cash discount
* **Shipping cost** : Change the shipping cost applied to the order
* **Gift wrapping** : If the Gift wrapping option is turned ON admin will be able to specify the gift wrapping cost

If changes are applied to the order items and associated costs, the admin should first click the **'Recalculate totals'** button and **save changes** after that. If no changes to the costs are applied, the admin can **save changes** right away. With the **Notify customer** checkbox enabled a customer will get notifications on all the changes apllied to the order. 

All order changes are recorded in the order history that can be checked on top of the page. Click the **View order history** link to display the info. 

![order-history.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/order-history.png)

Any changes made to the order will automatically result in the order invoice alteration, that can be checked in the **Invoice** tab of the order details page.

![invoice.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/invoice.png)

The **Messages** tab can be used if it's necessary to send notes about the order to a customer. 

![messages.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/messages.png)

It's also possible to print {% link "packing slips" ref_2mocNY5w %} directly from the order details page. Packing slips provide important details about the order contents and are a great way to communicate what has been sent to the customer.