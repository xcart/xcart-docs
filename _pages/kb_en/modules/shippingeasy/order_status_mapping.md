---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-08 13:37 +0400'
identifier: ref_o506IWMl
title: Order Status Mapping
categories:
  - User manual
published: true
order: 130
---


Order statuses used by ShippingEasy are not the same as those used by X-Cart, so, before orders from your X-Cart store can be exported to ShippingEasy, you will need to map order statuses in X-Cart to order statuses in ShippingEasy. To complete the task you will need to specify all the X-Cart statuses with which orders will need to be sent to ShippingEasy and - for each of these statuses - to specify the respective matching ShippingEasy statuses.

Here's how you can do it:

1.  In your X-Cart store's Admin area, go to the **ShippingEasy statuses** page (**Store setup **> **ShippingEasy statuses**). 
    You'll see a screen like this (Initially, the **ShippingEasy statuses** page does not contain any items):
    ![shippingeasy-menu.png]({{site.baseurl}}/attachments/ref_o506IWMl/shippingeasy-menu.png)
    
    
2.  Select **New item**. This expands a section with two drop-down boxes:
    ![shippingeasy-new-item.png]({{site.baseurl}}/attachments/ref_o506IWMl/shippingeasy-new-item.png)


3.  Use this section to specify a pair of matching statuses. 

    For example, if you want order info to be sent to ShippingEasy when an order gets the payment status "Paid" in X-Cart, and you want this order to be marked as "Awaiting shipment" in ShippingEasy, you should select "Paid" from the drop-down box in the **X-Cart payment status** column and "Awaiting shipment" from the drop-down box in the **ShippingEasy status** column:
    ![shippingeasy-paid-status.png]({{site.baseurl}}/attachments/ref_o506IWMl/shippingeasy-paid-status.png)


4.  Click **Save changes**. The pair of matching statuses will be saved.
    
5.  Repeat steps 1-4 if you need to specify more matching pairs of statuses. 
    
    As a result, you should have all the X-Cart payment statuses for which order info needs to be sent automatically to ShippingEasy listed in the **X-Cart payment status** column, and their respective matching ShippingEasy statuses listed on the opposite side in the **ShippingEasy status** column:
    ![shippingeasy-statuses-save.png]({{site.baseurl}}/attachments/ref_o506IWMl/shippingeasy-statuses-save.png)


{% note info %}
Your store will send order information to ShippingEasy no more than once per order. This means that when an order in X-Cart receives any of the statuses for which you have specified a matching status in ShippingEasy, information about this order will be automatically exported to ShippingEasy; if afterwards the status of this order in X-Cart changes to another status listed in the table, its information will _not_ be sent to ShippingEasy again. 

For example, according to the order statuses configuration demonstrated in the snapshot above (Partially Paid -> Awaiting shipment, Paid -> Awaiting payment), an order that gets the status "Partially Paid" in X-Cart will be sent to ShippingEasy; when this order is marked as "Paid", it won't be sent to ShippingEasy a second time. 
{% endnote %}

_Related pages:_

*   {% link "Manual Export of Orders to ShippingEasy" ref_t2NVGwT2 %}
*   {% link "Viewing Shipment Information" ref_WpUdcBgJ %}
*   {% link "Updating Order Statuses for Shipped Orders" ref_cTn6pCxX %}
*   {% link "Canceling Orders" ref_QU6Aanr9 %}
