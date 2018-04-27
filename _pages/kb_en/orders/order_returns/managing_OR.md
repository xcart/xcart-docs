---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-27 09:30 +0400'
identifier: ref_2yZxorwM
title: Managing Order Returns
order: 110
published: true
---
First of all you'll need to configure the returns policy of your store. 

Proceed to the _Fulfilment statuses_ tab of the **Orders** -> **Order Statuses** page of the Admin area and set the order statuses permitted for return:

![allow-returns.png]({{site.baseurl}}/attachments/ref_2yZxorwM/allow-returns.png)

If you don't have the {% link "Custom Order Statuses" ref_7FIU2sxJ %} module installed and enabled, you'll have only the orders with 2 fulfilment statuses permitted for return by default:
* _Shipped_
* _Delivered_

If the Custom Order Statuses module is enabled you can allow orders with any existing statuses for return as well as create new fulfilment statuses, if necessary.

{% note info %}
Don't forget to add your returns policy to the {% link "Terms and conditions page" ref_r5b4EKhF %}. Or {% link "create a new page" ref_Ptf5vaPn %} for returns policy as an alternative.
{% endnote %}

To manage order returns open the **Orders** -> **Returns** section of the Admin area. 

You'll see a list of all orders for that a return has been claimed.

![returns-page.png]({{site.baseurl}}/attachments/ref_2yZxorwM/returns-page.png)

New orders claimed for return will have an 'Issued' status. The rest will have either 'Completed' or 'Declined' statuses, depending on the resolution being set.

To edit a claim for return click on the order number on the **Orders** -> **Returns** page.

You'll be forwarded to the _Order return_ tab where you'll see a sceen of the kind:
![manage-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/manage-return.png)

Your options are either to **Autorize** or **Decline** the clain for return. 

If you authorize the claim for return the order status will be changed to REFUNDED [payment status] and RETURNED [fulfilment status] automatically. The claim for return will get a COMPLETED status respectively.

If you decline the claim for return the order payment and fulfilment statuses will stay as is and  the claim for return status will change to DECLINED respectively.

A customer will get an {% link "e-mail notification" ref_5QLrLCu7 %} on any change you apply to the order, including the claim for return resolution status.
