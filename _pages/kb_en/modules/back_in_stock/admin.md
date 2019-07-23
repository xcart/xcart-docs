---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-09 13:52 +0400'
identifier: ref_3ZfsAR9B
title: 'Back in Stock Notifications: Admin Experience'
order: 110
published: true
---
Once the **Back in Stock Notifications** addon is {% link "installed and configured" ref_7mZJltoM %} a store admin can check for notification subscriptions and for the products in demand in the **Catalog** -> **Product notification subscriptions** and **Catalog** -> **Watched products** sections respectively. 

The **Catalog** -> **Product notification subscriptions** section shows both the back-in-stock and price drop subscriptions:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![adm-bins-subscriptions.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-bins-subscriptions.png)</div>
  <div class="column" markdown="span">![adm-pdd-subscriptions.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-pdd-subscriptions.png)</div>
</div>

Whereas back-in-stock subscriptions require that out-of-stock items be visible in the store, price drop subscriptions work for both in-stock and out-of-stock products. So, please, check that the **How to show out of stock products** option on the **Store setup** -> **Cart & Checkout** page is set to either _Show in all the sections_ or _Show only in categories and search listings_ if you need both of the subscriptions to be available in the store. If you need only the price drop subscriptions, the **How to show out of stock products** option can be set to _Hide and make them available only via a direct link_.

The _Back in stock subscriptions tab_ of the **Product notification subscriptions** section shows a list of products in demand, customers who subscribed for notifications, the desired product quantity (if the **Allow customer to specify the product quantity they want to buy** option is {% link "enabled" ref_7mZJltoM %} and a customer specified the quantity he wants to buy), the date of subscription and date of product inventory change and whether the back-in-stock notification is sent or not and if yes, the date it was sent.

If a product from the list is back in stock, the notification **State** gets the _Ready to send_ status and the store admin can send the back-in-stock notifications to the customers using the **Send notifications** button at the bottom of the page. 

![adm-bins-rfs.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-bins-rfs.png)

The _Price drop subscriptions_ tab of the **Product notification subscriptions** section shows a similar info except for **Desired price** and **Price drop date** are in the list instead of **Desired quantity** and related.

If the price of a product from the list changes to meet the price requested by a customer the notification **State** gets the _Ready to send_ status and the store admin can send the price drop notifications to the customers using the **Send notifications** button at the bottom of the page. 

![adm-pdd-rfs.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-pdd-rfs.png)

Once the notifications are sent they get the corresponding state in the listings.

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Back in stock subscriptions</i>![adm-bins-sent.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-bins-sent.png)</div>
  <div class="column" markdown="span"><i>Price drop subscriptions</i>![adm-pdd-sent.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-pdd-sent.png)</div>
</div>

{% note info %}
If the store is {% link "configured to run scheduled tasks" ref_lLqNzAaq %} all back-in-stock and price drop notifications will be sent automatically as soon as the inventory and the price meet the subscriptions' conditions. So the store admin will need only to check the listings using the **Check products** button at the bottom of the page.
{% endnote %}

The **Catalog** -> **Watched products** section displays a list of products in demand (_Back in stock watchlist_ tab) and a list of products with a price drop-down request (_Price drop watchlist_ tab)

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Back in stock watchlist </i>![adm-bins-watchlist.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-bins-watchlist.png)</div>
  <div class="column" markdown="span"><i>Price drop watchlist </i>![adm-pdd-watchlist.png]({{site.baseurl}}/attachments/ref_3ZfsAR9B/adm-pdd-watchlist.png)</div>
</div>

Using these lists the cart admin can plan futher store inventory supplies and possible sales or other related marketing campains.
