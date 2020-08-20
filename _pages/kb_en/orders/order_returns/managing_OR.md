---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-27 09:30 +0400'
identifier: ref_2yZxorwM
title: Managing Order Returns
order: 110
published: true
---
A possibility to submit an order return is added to X-Cart core by the {% link "Order Returns" ref_30bVFfXt %} addon. So if you need to process order returns make sure the relevant addon is {% link "installed and enabled" ref_5JucPxO8 %}. 

{% toc %}

## Setting Up Your Return Policy

First of all you'll need to configure the returns policy of your store. Generally, it includes configuring return conditions and writing a store return policy and arranging it to display as a special page in the storefront. 

### Specifying Return Conditions

The Order Returns addon allows to configure return conditions based on {% link "order fulfilment statuses" ref_DkbTi1qJ %}. By default, returns are permitted for the orders with the fulfilment status:
* _Shipped_
* _Delivered_

![541-allow-returns-setting.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-allow-returns-setting.png)

In case you need to permit returns for any other order statuses except for _shipped_ and _delivered_, make sure the {% link "Custom Order Statuses" ref_7FIU2sxJ %} addon is installed and enabled.

To enable/disable returns for an order status:
1. Open the "Order Statuses" page of your store Admin area (**Orders** -> **Order Statuses**) and proceed to the **Fulfilment Statuses** tab. 
   ![541-fulfilment-statuses-page.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-fulfilment-statuses-page.png)
2. Check the **Allow returns** column:
   ![541-allow-returns-column.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-allow-returns-column.png)
3. Switch the toggle to "YES" to enable returns for this fulfilment status, and to "NO" - to disable.
4. Save the changes.

### Publishing Return Policy in the Storefront

For your customers to be aware of what your store return policies are, write a clear statement and make it accessible in the storefront.

For this purpose:
1. Open the "Pages" page of your store Admin area (**Content** -> **Pages**) and create a new page for return policies as described {% link "here" ref_Ptf5vaPn %}.
2. Open the "Menus" page of your store Admin area (**Content** -> **Menus**) and add the newly created "Return Policy" page to your store navigation panel as described [here](https://kb.x-cart.com/look_and_feel/navigation/adding_new_items_to_your_stores_menus.html#adding-new-menu-items "Managing Order Returns").
3. Check your store "Return Policy" page in the storefront.

## Configuring Email Notifications for Returns

The Order Returns addon adds the returns-related notifications to the list of email notifications available on the "Email Notifications" page of your store Admin area (**Store Setup** -> **Email Notifications**).
![541-email-notifications.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-email-notifications.png)

Check the texts of the emails and adjust them to meet your business needs. More info on editing email notifications you can find {% link "here" ref_1qTqS245 %}.
   

## Processing Customer Requests for Return

All requests for order returns submitted by customers with the help of a special **Return** button in their customer account are recorded on the "Returns" page of your store Admin area (**Orders** -> **Returns**). The page displayes a list of all orders for that a return has been claimed.
![541-order-returns-listing.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-order-returns-listing.png)

New orders claimed for return will have an 'Issued' status. The rest will have either 'Completed' or 'Declined' statuses, depending on the resolution being set.

To process a claim for return: 
1. Open the "Returns" page of your store Admin area (**Orders** -> **Returns**) and click on an order number.
   ![541-returns-page-order-number.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-returns-page-order-number.png)
   You'll be forwarded to the _Order return_ tab of the order details page where you'll see a screen of the kind:
   ![541-order-return-page.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-order-return-page.png)

2. Set your resolution on a claim for return. Your options are as follows:
   * **Authorize** : To authorize a claim for return click the **Authorize** button at the bottom of the page.
     ![541-authorize-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-authorize-return.png)

     * If you authorize a claim for a full return, the order status will change to REFUNDED [payment status](https://kb.x-cart.com/orders/understanding_x-cart_order_statuses.html#payment-statuses "Managing Order Returns") and RETURNED [fulfilment status](https://kb.x-cart.com/orders/understanding_x-cart_order_statuses.html#fulfilment-statuses "Managing Order Returns") automatically. The claim for return will get a COMPLETED status respectively.
     * If you authorize a claim for a partial return, you will need to adjust the order status manually.
       ![541-partial-return-options.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-partial-return-options.png)
   
   * **Decline** : To decline a claim for return click the **Decline** button at the bottom of the page.
     ![541-decline-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-decline-return.png)
     If you decline a claim for return the order payment and fulfilment statuses will stay as is and the claim for return status will change to DECLINED respectively.
   
   * **Modify** : To modify a return request, add the necessary changes to it and then hit the **Modify** button that becomes visible.
     ![541-modify-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-modify-return.png)
   
   * **Delete** : To delete a claim for return click the **Delete** button at the bottom of the page.
     ![541-delete-return.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-delete-return.png)
   
   A customer will get an [email notification](https://kb.x-cart.com/orders/order_returns/managing_OR.html#configuring-email-notifications-for-returns "Managing Order Returns") on any change you apply to the order, including the changes to the claim for return and its resolution status.

## Creating Returns On Customer Behalf

It could be that a request for return was submitted not via a special **Return** button in a customer account but via some other sources of communication (regular email, phone call, etc.) and hence was not recorded on the "Returns" page of your store Admin area. It could also be that a store admin needs to issue a return for an order for some other reason. 

If this is the case, you have an opportunity to create a return for an order using the _Create return_ tab of the order details page:
![541-create-return-tab.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-create-return-tab.png)

To document the return on behalf of a customer:
* Locate an order you need to return on the order listing page (**Orders** -> **Orders list**) and open the order details page.
  ![541-orrder-listing-page.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-orrder-listing-page.png)

* Open the _Create return_ tab of the order details page;
  ![541-create-return-page.png]({{site.baseurl}}/attachments/ref_2yZxorwM/541-create-return-page.png)

* Choose items, specify the reason and add comments if required;
* Click **Submit return**.

The claim for return will be submitted transforming the page into a regular _Order return_  page where a store admin can either authorize or decline the claim for return as described in [Processing Customer Requests for Return](https://kb.x-cart.com/orders/order_returns/managing_OR.html#processing-customer-requests-for-return "Managing Order Returns").
