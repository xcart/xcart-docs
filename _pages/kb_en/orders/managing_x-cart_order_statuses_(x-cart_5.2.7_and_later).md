---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-08 14:30 +0400'
identifier: ref_7FIU2sxJ
title: Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)
version: X-Cart 5.2.7 and later
categories:
  - User manual
published: true
order: 40
---
In X-Cart versions 5.2.7 and later, order statuses can be managed using the addon **Custom Order Statuses**.
![541-custom-order-statuses.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-custom-order-statuses.png)

{% note info %}
The addon Custom Order Statuses is not compatible with X-Cart versions prior to X-Cart 5.2.7\. For these older X-Cart versions, custom order statuses can be added using the method described in the article {% link "Adding new fulfilment/payment statuses (X-Cart 5.2.6 and earlier)" ref_NzhAvNte %}.
{% endnote %}

{% toc %}

## Viewing Order Statuses

With the addon **Custom Order Statuses** installed and enabled, the complete list of order statuses used by your X-Cart store can be found in the section Order statuses (**Orders** > **Order statuses**):
![541-order-statuses-page.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-page.png)

In fact, there are two lists, since payment statuses and fulfilment statuses are listed separately. You can switch between the lists using the respective tabs:
![541-order-statuses-payment-filfilment.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-payment-filfilment.png)

For each order status on the list the following information is provided:

*   **Name**: An order status name.
*   **Orders**: A number of orders currently in this status. The number is a link allowing you to access all the orders in this status as a list.

Order statuses that have **?** icons displayed opposite their names in the column at the far right are the so-called _system order statuses_.
![541-order-statuses-question-mark-icons.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-question-mark-icons.png)

These statuses are present in your X-Cart store from the very start and work out of the box. They cannot be removed, but, if necessary, can be renamed. Hovering the cursor over a **?** icon for a specific system status allows you to see the letter code by which this order status is referred to in the software code:
![541-order-statuses-code-tooltip.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-code-tooltip.png)

(Most people will have no use for this information, but we included it for X-Cart developers who will look into the code to see how order statuses work).

Order statuses that have **Trash** icons displayed opposite their names instead of **?** icons - if any such statuses are present in your store - are _custom order statuses_.
![541-order-statuses-custom-delete.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-custom-delete.png)

Such statuses can be deleted as well as renamed.

The order of statuses in the list determines the order in which the statuses appear in the drop-down selectors that the store administrator uses to assign payment and fulfilment statuses to an order.

You can rearrange this order by dragging and dropping specific statuses in the list to the positions you require (Use the four-headed arrows in the column at the far left).
![541-order-statuses-reorder.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-reorder.png)

## Adding Custom Order Statuses

If X-Cart's [system order statuses](https://kb.x-cart.com/orders/managing_x-cart_order_statuses_(x-cart_5.2.7_and_later).html#viewing-order-statuses "Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)") do not meet the needs of your business, you can create your own statuses. It is possible to create both payment order statuses and fulfilment order statuses. 

Custom order statuses do not currently have an ability to change the inventory levels of products in the order, but we are hoping to implement this feature in the nearest future.

To add a new order status:

1.  In your X-Cart store's Admin area, go to the Order statuses section (**Orders** > **Order statuses**). 
    ![541-order-statuses-page.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-page.png)

2.  Make sure you are viewing the correct page tab. Payment statuses are added on the tab that opens by default. To add a fulfilment status, you will need to switch to the **Fulfilment statuses** tab (In X-Cart versions prior to 5.3.3.0, this tab is titled **Shipping statuses**). 
    
3.  Click the **Add status** button:
    ![541-order-statuses-add-status.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/541-order-statuses-add-status.png)

    A new blank field is added on a new line at the top of the order status list.

4.  Use the blank field to enter the order status name you require.

5.  Click the **Save changes** button at the bottom of the list. 
    

    The new order status will be added.


## Renaming Order Statuses

It is possible to rename existing order statuses, both system and custom ones.

To rename an order status:

1.  In your X-Cart store's Admin area, go to the Order statuses section (**Orders** > **Order statuses**). 
2.  Make sure you are viewing the correct page tab (Payment statuses can be found on the tab that opens by default. To access fulfilment statuses, you will need to switch to the **Fulfilment statuses** tab (In X-Cart versions prior to 5.3.3.0, this tab is titled **Shipping statuses**). 
3.  In the list of order statuses, locate the status that needs to be renamed. 
4.  Click on the status name. The status name field becomes editable.
5.  Change the name of the status as you require.
6.  Click the **Save changes** button at the bottom of the list.
    The new status name will be saved.

## Deleting Order Statuses

It is possible to delete custom order statuses. 

System order statuses cannot be deleted. If you are not happy with the name of a system order status, you may want to consider [renaming](https://kb.x-cart.com/orders/managing_x-cart_order_statuses_(x-cart_5.2.7_and_later).html#renaming-order-statuses "Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)") it.

To delete an order status:

1.  In your X-Cart store's Admin area, go to the Order statuses section (**Orders** > **Order statuses**). 
2.  Make sure you are viewing the correct page tab (Payment statuses can be found on the tab that opens by default. To access fulfilment statuses, you will need to switch to the **Fulfilment statuses** tab (In X-Cart versions prior to 5.3.3.0, this tab is titled **Shipping statuses**).  
3.  In the list of order statuses, locate the status that needs to be deleted.
4.  Click the Trash icon opposite its name.
    The status will be marked for deletion.
5.  Click the **Save changes** button at the bottom. 
    The status will be deleted.

_Related pages:_

*   {% link "Understanding X-Cart Order Statuses" ref_DkbTi1qJ %}
*   {% link "Adding New Fulfilment/Payment Statuses (X-Cart 5.2.6 and Earlier)" ref_NzhAvNte %}
