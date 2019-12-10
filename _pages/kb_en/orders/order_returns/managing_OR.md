---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-27 09:30 +0400'
identifier: ref_2yZxorwM
title: Managing Order Returns
order: 110
published: true
---
A possibility to submit an order return is added to X-Cart core by the {% link "Order Returns" ref_30bVFfXt %}. So if you need to process order returns make sure the relevant addon is {% link "installed and enabled" ref_5JucPxO8 %}. 

{% toc %}

## Order Return Policy

First of all you'll need to configure the returns policy of your store. 

Proceed to the _Fulfilment statuses_ tab of the **Orders** -> **Order Statuses** page of the Admin area and set the order statuses permitted for return:

![allow-returns.png]({{site.baseurl}}/attachments/ref_2yZxorwM/allow-returns.png)

If you don't have the {% link "Custom Order Statuses" ref_7FIU2sxJ %} addon installed and enabled, you'll have only the orders with 2 fulfilment statuses permitted for return by default:
* _Shipped_
* _Delivered_

If the Custom Order Statuses addon is enabled you can allow orders with any existing statuses for return as well as create new fulfilment statuses, if necessary.

{% note info %}
Don't forget to add your returns policy to the _Return Policy_ page in the **Catalog** -> **Product Tabs** section.
{% endnote %}

## Customer Requests for Return

All requests for order returns submitted by customers with the help of a special **Claim return** button in their customer account are recorded in the **Orders** -> **Returns** section of the store Admin area. The page displayes a list of all orders for that a return has been claimed.

![returns-page.png]({{site.baseurl}}/attachments/ref_2yZxorwM/returns-page.png)

New orders claimed for return will have an 'Issued' status. The rest will have either 'Completed' or 'Declined' statuses, depending on the resolution being set.

To edit a claim for return click on the order number on the **Orders** -> **Returns** page.

You'll be forwarded to the _Order return_ tab of the order details page where you'll see a screen of the kind:
![manage-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/manage-return.png)

Your options are either to **Authorize** or **Decline** the claim for return. 

If you authorize the claim for return the order status will be changed to REFUNDED [payment status] and RETURNED [fulfilment status] automatically. The claim for return will get a COMPLETED status respectively.

If you decline the claim for return the order payment and fulfilment statuses will stay as is and  the claim for return status will change to DECLINED respectively.

To modify a return request, add the necessary changes to it and then hit the '**Modify**' button that becomes visible. 

A customer will get an {% link "e-mail notification" ref_5QLrLCu7 %} on any change you apply to the order, including the changes to the claim for return and its resolution status.

## Creating a Return

It could be that a request for return was submitted not via a special **Claim return** button in customer account but via some other sources of communication (regular email, phone call, etc.) and hence was not recorded in the **Orders** -> **Returns** section of the store Admin area. It could also be that a store admin needs to issue a return for an order for some other reason. 

If this is the case a store admin will have an opportunity to claim a return for an order either on behalf of a customer of for another reaosn using the _Create return_ tab of the order details page:
![540-create-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/540-create-return.png)

For this purpose:
* Locate an order you need to return on the order listing page (Orders -> Orders list) and open the order details page;
* Open the _Create return_ tab of the order details page;
* Choose items, specify the reason and add comments if required;
* Click **Submit return**.

The claim for return will be submitted transforming the page into a regular _Order return_  page where a store admin can either authorize or decline the claim for return as described in [Processing Customer Requests for Return](https://kb.x-cart.com/orders/order_returns/managing_OR.html#processing-customer-requests-for-return "Managing Order Returns").
