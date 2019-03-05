---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-08 14:30 +0400'
identifier: ref_7FIU2sxJ
title: Managing X-Cart order statuses (X-Cart 5.2.7 and later)
version: X-Cart 5.2.7 and later
categories:
  - User manual
published: true
order: 40
---
In X-Cart versions 5.2.7 and later, order statuses can be managed using the addon **Custom Order Statuses**.

![]({{site.baseurl}}/attachments/8750763/8719499.png)

With this addon you can:

*   [view and manage the list of order statuses](#viewing-order-statuses) supported by your X-Cart store;
*   [add your own custom order statuses](#adding-custom-order-statuses);
*   [rename existing order statuses](#renaming-order-statuses) (both {% link "system" ref_DkbTi1qJ#system-order-statuses %} and custom ones);
*   [delete custom order statuses](#deleting-order-statuses) (NB: {% link "system" ref_DkbTi1qJ#system-order-statuses %} order statuses cannot be deleted). 

The addon Custom Order Statuses is not compatible with X-Cart versions prior to X-Cart 5.2.7\. For these older X-Cart versions, custom order statuses can be added using the method described in the article {% link "Adding new fulfilment/payment statuses (X-Cart 5.2.6 and earlier)" ref_NzhAvNte %}.

## Viewing Order Statuses

With the addon **Custom Order Statuses** installed and enabled, the complete list of order statuses used by your X-Cart store can be found in the section Order statuses (**Orders** > **Order statuses**):

![xc5_cos_order_statuses_section.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_order_statuses_section.png)

In fact, there are two lists, since payment statuses and fulfilment statuses are listed separately. You can switch between the lists using the respective tabs:

![xc5_cos_order_statuses_tabs.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_order_statuses_tabs.png)

For each order status on the list the following information is provided:

*   **Name**: Order status name.
*   **Orders**: Number of orders currently in this status. The number is a link allowing you to access all the orders in this status as a list.

Order statuses that have Question mark icons displayed opposite their names in the column at the far right are the so-called _system order statuses_.

![xc5_cos_system_order_statuses.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_system_order_statuses.png)

These statuses are present in your X-Cart store from the very start and work out of the box. They cannot be removed, but, if necessary, can be renamed. Hovering the cursor over a Question mark icon for a specific system status allows you to see the letter code by which this order status is referred to in the software code:

![xc5_cos_status_code.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_status_code.png)

(Most people will have no use for this information, but we included it for X-Cart developers who will look into the code to see how order statuses work).

Order statuses that have Trash icons displayed opposite their names instead of Question mark icons - if any such statuses are present in your store - are _custom order statuses_.

![xc5_cos_custom_order_status_trash_icon.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_custom_order_status_trash_icon.png)

Such statuses can be deleted as well as renamed.

The order of statuses in the list determines the order in which the statuses appear in the drop-down selectors that the store administrator uses to assign payment and fulfilment statuses to an order.

![]({{site.baseurl}}/attachments/8750763/8719497.png)

You can rearrange this order by dragging and dropping specific statuses in the list to the positions you require (Use the four-headed arrows in the column at the far left).

![xc5_cos_order_status_sort.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_order_status_sort.png)

## Adding Custom Order Statuses

If X-Cart's {% link "system order statuses" ref_DkbTi1qJ#system-order-statuses %} do not meet the needs of your business, you can create your own statuses. It is possible to create both payment order statuses and fulfilment order statuses. 

Custom order statuses do not currently have the ability to change the inventory levels of products in the order, but we are hoping to implement this feature in the nearest future.

To add a new order status:

1.  In your X-Cart store's Admin area, go to the Order statuses section (**Orders** > **Order statuses**). 
2.  Make sure you are viewing the correct page tab. Payment statuses are added on the tab that opens by default. To add a fulfilment status, you will need to switch to the **Fulfilment statuses** tab (In X-Cart versions prior to 5.3.3.0, this tab is titled **Shipping statuses**). 
    ![xc5_cos_fulfilment_statuses_tab.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_fulfilment_statuses_tab.png)
3.  Click the **Add status** button:
    ![xc5_cos_add_new_status.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_add_new_status.png)
    A new blank field is added on a new line at the top of the order status list:
    ![xc5_cos_add_new_status1.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_add_new_status1.png)

4.  Use the blank field to enter the order status name you require.

5.  Click the **Save changes** button at the bottom of the list. 
    ![xc5_cos_add_new_status2.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_add_new_status2.png)

    The new order status will be added:
    ![xc5_cos_add_new_status3.png]({{site.baseurl}}/attachments/ref_7FIU2sxJ/xc5_cos_add_new_status3.png)


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

System order statuses cannot be deleted. If you are not happy with the name of a system order status, you may want to consider [renaming](#renaming-order-statuses) it.

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
