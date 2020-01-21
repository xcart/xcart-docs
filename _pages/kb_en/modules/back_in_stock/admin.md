---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-09 13:52 +0400'
identifier: ref_3ZfsAR9B
title: Product Subscriptions Management
order: 110
published: true
---
Once the **Back in Stock Notifications** addon has been {% link "installed and configured" ref_7mZJltoM %}, it starts collecting subscriptions for the out of stock products, provided they are configured to be visible in the storefront. It also records requests for a price drop on the products that can both be in and out of stock if configured accordingly. The addon provides facilities for a store administrator to check for product notification subscriptions (back-in-stock and price-prop requests) and the products in demand. Having this information on hand, the store administrator can plan the store inventory replenishment accordingly.

{% toc %}

## Back in Stock and Price Drop Notifications

The product notifications management consists of working with the back-in-stock and price-drop requests. A store admin can view the list of notification requests, send notifications manually when the request paramethers are met, or {% link "configure a cron task" ref_lLqNzAaq %} on the server for the notifications to be sent automaticallly. 

All requests for product notifications collected via the **Back in Stock Notifications** addon are displayed in the **Catalog** -> **Product notification subscriptions** section of the store Admin area. This page can show both the back-in-stock and price drop subscriptions in the respective tabs:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>Back in stock subscriptions</b>![540-bsn-page.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/540-bsn-page.png)</div>
  <div class="column" markdown="span"><b>Price drop subscriptions</b>![540-pds-page.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/540-pds-page.png)</div>
</div>

Whereas price drop subscriptions work for both in stock and out of stock products, back in stock subscriptions require that the out of stock items are visible in the storefront. So, please, for the later case check that the **How to show out of stock products** option on the **Store setup** -> **Cart & Checkout** page is set to either "_Show in all the sections_" or "_Show only in categories and search listings_". If you need only the price drop subscriptions, the **How to show out of stock products** option can be set to any value, including "_Hide and make them available only via a direct link_".

### Managing Back in Stock Subscriptions

The _Back in stock subscriptions_ tab of the **Product notification subscriptions** page displays a list of the out of stock products requested for the would-be purchases.
![540-bsn-page.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/540-bsn-page.png)

The page allows to use a special search bar to narrow the list to a particular product name, a customer email, a date or a state of the request.

It also displays the following information on a back in stock request:
*  **Product** : A name of an out of stock product requested for replenishment. The name is linked with a related product details page.
*  **Customer** : An email of a customer who subscribed for notifications. 
   In case a customer has a registered account in your store the email of this customer will link to the respective customer profile page.
*  **Qty** : A desired quantity of a requested product. The field is displayed if the **Allow customer to specify the product quantity they want to buy** option is {% link "enabled" ref_7mZJltoM %} and customers specified the quantity they want to buy.
*  **Date** : A date of a back in stock request submission.
*  **State** : A state of a back in stock request. Can have 3 possible values:
   * **Stand-by** : The initial status assigned to each request on submission.
   * **Ready to send** : The product has beed checked to meet the request paramethers and a back in stock notification is ready for sending.
   * **Sent** : A back in stock notification has been sent to a customer.
*  **Back date** : A date when a product stock level was replenished.
*  **Sent date** : A date when the back in stock notification for a product was sent to a customer.

A store admin can delete customer subscriptions for the back in stock notifications using a **Trash** icon opposite a request in question. 

It is recommended to have a store {% link "configured to run scheduled tasks" ref_lLqNzAaq %} so that all back in stock notifications are sent automatically as soon as the inventory level changes to meet the customer request paramethers.

In case automatic notifications mailing is not set up, a store admin can check for products stock level updates and send notifications manually. To do so it is necessary to:
1. Click the **Check products** button at the bottom of the _Back in stock subscriptions_ tab.
   
   This initiates a revision of all back in stock subscriptions with the **Stand-by** status to check whether the stock level of any requested product has changed recently. A store admin receives a notification if the revision is completed successfully. All back in stock subscriptions that meet the request parameters obtain the **Ready to send** status.

2. Click **Send notifications** button at the bottom of the _Back in stock subscriptions_ tab.
   
   This initiates the notifications mailing and changes the state of the respective requests to **Sent**. 

### Managing Price Drop Requests

The _Price drop subscriptions_ tab of the **Product notification subscriptions** section displays a list of products that have been requested for a price drop.
![540-pds-page.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/540-pds-page.png)

The page allows to use a special search bar to narrow the list to a particular product name, a customer email, a date or a state of the request.

It also displays the following information on a back in stock request:
*  **Product** : A name of an out of stock product requested for replenishment. The name is linked with a related product details page.
*  **Customer** : An email of a customer who subscribed for notifications. 
   In case a customer has a registered account in your store the email of this customer will link to the respective customer profile page.
*  **Price** : A desired price for a product requested by a customer. The field is displayed if the **Allow customer to specify the price they want to pay** option is {% link "enabled" ref_7mZJltoM %} and customers did specify the price.
*  **Date** : A date of a back in stock request submission.
*  **State** : A state of a back in stock request. Can have 3 possible values:
   * **Stand-by** : The initial status assigned to each request on submission.
   * **Ready to send** : The product has beed checked to meet the request paramethers and a back in stock notification is ready for sending.
   * **Sent** : A back in stock notification has been sent to a customer.
*  **Back date** : A date when a product stock level was replenished.
*  **Sent date** : A date when the back in stock notification for a product was sent to a customer.

A store admin can delete customer subscriptions for the back in stock notifications using a **Trash** icon opposite a request in question. 
It is recommended to have a store {% link "configured to run scheduled tasks" ref_lLqNzAaq %} so that all back in stock notifications are sent automatically as soon as the inventory level changes to meet the customer request paramethers.

In case automatic notifications mailing is not set up, a store admin can check for products stock level updates and send notifications manually. To do so it is necessary to:
1. Click the **Check products** button at the bottom of the _Back in stock subscriptions_ tab.
   
   This initiates a revision of all back in stock subscriptions with the **Stand-by** status to check whether the stock level of any requested product has changed recently. A store admin receives a notification if the revision is completed successfully. All back in stock subscriptions that meet the request parameters obtain the **Ready to send** status.

2. Click **Send notifications** button at the bottom of the _Back in stock subscriptions_ tab.
   
   This initiates the notifications mailing and changes the state of the respective requests to **Sent**. 

## Products in Demand

The **Catalog** -> **Watched products** section displays a list of products in demand (_Back in stock watchlist_ tab) and a list of products with a price drop-down request (_Price drop watchlist_ tab)

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Back in stock watchlist </i>![540-back-in-stock-watchlist.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/540-back-in-stock-watchlist.png)</div>
  <div class="column" markdown="span"><i>Price drop watchlist </i>![540-price-watch-droplist.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/540-price-watch-droplist.png)</div>
</div>

Using these lists the store administrator can plan futher store inventory supplies and possible sales or other related marketing campains.
