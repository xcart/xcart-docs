---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-29 14:49 +0400'
identifier: ref_6q6Mj9CC
title: Managing Orders in X-Cart
order: 30
published: true
redirect_from:
  - /orders/order_processing_workflow.html
---
Order management refers to the process of receiving, tracking, and fulfilling customer orders. The order management process begins when an order is placed, and ends when the customer receives their package. 

X-Cart allows to trace all orders placed in your store in one single place - the order listing page (**Orders** -> **Order List** section) where a store admin can manage them accordingly. The order processing workflow for a store admin will differ depending on the payment method used by a customer to pay for the order.

{% note info %}
X-Cart order listing page is not an order management system in its full meaning as it does not allow to complete a full chain of steps included into the [order fulfillment process](https://en.wikipedia.org/wiki/Order_fulfillment "Managing Orders in X-Cart").
{% endnote %}

{% toc %}

## Order Listing Page

X-Cart order listing page (**Orders** -> **Order List** section) accumulates the info on all orders placed in your store, displays the actual order list and allows to bulk-edit orders.
![540-order-listing-page.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/540-order-listing-page.png)

### Viewing Orders

The order listing page allows a store admin to view the following order details:

* **Order number** : The number of an order. Orders are numbered sequentially, starting from the value set in the _Next order #:_ field in the store's {% link "General settings" ref_qAZlJxZm %}.
* **Date** : The date and the time the order was placed at.
* **Customer** : The name and the email address of a customer (by clicking on the customer name a store admin will be redirected to the {% link "user profile" ref_gg1fQDgB %} page).
* **Payment status** : The current payment status of an order. See more info in {% link "Understanding X-Cart Order Statuses" ref_DkbTi1qJ %}.
* **Fulfillment status** : The current fulfillment status of an order. See more info in {% link "Understanding X-Cart Order Statuses" ref_DkbTi1qJ %}.
* **Amount** : The order total and the amount of items ordered.

In case an order was paid via an online payment processor the order payment status is updated automatically at the time X-Cart receives the order related info from the payment processor. 

In case an order was paid via an offlne mayment method a store admin will have to manually update the order payment status each time it changes. 

An order fulfillment status must be manually updated by a store admin each time the order progresses in the fulfillment chain. 

### Advanced Orders Search 

The orders listing page has an advanced search panel where a store admin can filter orders to work with according to several paramethers. 
![advanced-search.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/advanced-search.png)

The chosen filters can then be saved and will be displayed as preset filters on the top of the page.
![listing.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/listing.png)

### Bulk-Editing Orders

The order listing page provides a store admin with the means of bulk-editing orders. 

First of all, a store admin can change the payment and/or fulfillment statuses on a per order basis directly on the order listing page. To do so the store admin should select the appropriate payment and/or fulfilment statuses in the related drop-down and click **Save changes** to submit the changes. 

In case changes are to be applied to more than one order at a time a store admin can select the orders to be updated by enabling a select-box opposite the order in question and use the bulk-editing panel on the bottom of the page for alterations.

![bulk-edit.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/bulk-edit.png)

The options for bulk edit are:
* **Print selected** : A store admin can either print an invoice or a packing slip on their choice. 
* **Change payment status for selected** : The payment status should be changed only for the orders placed using offline payment methods. The payment status for the orders paid via online payment processors is updated automatically. 
* **Change fulfillment status for selected** : The fulfillment status should be updated respectively each time an order progresses in the fulfillment chain regardless of the payment method used.
* **Delete selected**

Each time an order is updated a customer receives a special email notification. More info on the email notifications you can find in {% link "Email Notifications: Setup and Maintenance" ref_5QLrLCu7 %}.

The bulk-editing tool also allows exporting orders into CSV directly on the orders listing page. Use the **'Export all: CSV'** button for this purpose or select the orders that should be exported and click **Export selected: CSV**.


## Order Processing Workflow

X-Cart allows paying orders using both offline and online payment methods depending on the store owner preferences. 

### Orders Paid via Offline Payment Methods

For orders paid using {% link "offline payment methods" ref_Jq6Bsdrt %}, the order processing workflow is as follows:

*   A new order is created with the status _Awaiting payment_.
*   As the order progresses through the various stages of the order processing and fulfillment process, the store administrator manually updates the order status. The current status of the order can be changed manually to any other status at any time. Typically, after the order payment has been received, the status _Awaiting payment_ will be changed to _Paid_; if the order is cancelled - to _Cancelled_. After a refund, the status _Paid_ will have to be changed to _Refunded_. The status _Partially Paid_ is possible in case of a partial payment for the order or a partial refund.

{% note info %}
We strongly recommend using the _Refunded_ status (not _Cancelled_) when updating the order status from _Paid_, and _Cancelled_ (not _Refunded_) when updating the order status from _Authorized_ or _Awaiting payment_.
{% endnote %}

### Orders Paid via Online Payment Processors

For orders paid using {% link "online payment processors" ref_Jq6Bsdrt %}, the regular order processing workflow looks as follows:

*   A new order is created with the status _Awaiting payment_, _Paid_ or _Authorized_ - depending on the payment method settings and the type of response received from the payment gateway.
*   If the initial order status is _Awaiting Payment_ or _Authorized_, it may be changed automatically to _Paid_, _Partially Paid_ or _Declined_ (The resulting status depends on the callback received from the payment gateway).
*   If the order status is _Paid_, the order may be refunded. This is only possible if the payment gateway supports refunds. After a full refund, the order status is automatically changed to _Refunded_. After a partial refund, the order status becomes _Partially Paid_.
*   If necessary, the store administrator can intervene at any stage of the order processing flow and manually change the current status of the order to any status they require.

## Advanded Order Management

For advanced order management, a store admin should open the order details page by clicking on the order number (e.g. #00020).

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![general-1.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/general-1.png)</div>
  <div class="column" markdown="span">![general-2.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/general-2.png)</div>
</div>

Advanced order management allows a store admin to change the following order details:

* **Customer e-mail address** : Info will be changed for this order only.
* **Staff note** : Notes can be added in the field for comments.
* **Payment method** : For [offline payment methods](https://kb.x-cart.com/payments/accepting_payments.html#offline-payment-methods "Managing Orders in X-Cart") only.
* **Shipping method** : For any shipping method.
* **Billing address** : Info will be changed for this order only.
* **Shipping address** : Info will be changed for this order only.
* **Fulfillment status** : Choose one of the available values.
* **Payment status** : Choose one of the available values.
* **Tracking number** : To add a tracking number click on the **'Add tracking number'** button. A tracking number can have up to 32 symbols.
* **Order items** : An admin can change the price and quantity of the ordered products and add new products to the order.
* **Discount** : An admin can add a discount coupon by clicking the _Add coupon_ link or a cash discount.
* **Shipping cost** : Change the shipping cost applied to the order.
* **Gift wrapping** : If the Gift wrapping option is turned ON admin will be able to specify the gift wrapping cost.

If changes are applied to the order items and associated costs, the admin must first click the **'Recalculate totals'** button and **save changes** after that. 

If no changes to the costs are applied, the admin can **save changes** right away. 

With the **Notify customer** checkbox enabled a customer will get notifications on all the changes apllied to the order. 

All order changes are recorded in the order history that can be checked on top of the page. Click the **View order history** link to display the info. 

![order-history.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/order-history.png)

Any changes made to the order will automatically result in the order invoice alteration, that can be checked in the **Invoice** tab of the order details page.

![invoice.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/invoice.png)

The **Messages** tab can be used if it is necessary to send notes about an order to a customer. 

![messages.png]({{site.baseurl}}/attachments/ref_6q6Mj9CC/messages.png)

It's also possible to print {% link "packing slips" ref_2mocNY5w %} directly from the order details page. Packing slips provide important details about the order contents and are a great way to communicate what has been sent to the customer.
