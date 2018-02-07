---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-07 12:35 +0400'
identifier: ref_1Odyn6mT
title: Loyalty Program
order: 100
published: false
description: The Loyalty Program Module.
---
Do you want to stimulate guest customers to register, or encourage product reviews and ratings, or even reward customers for purchases? Use the [Loyalty Program](https://market.x-cart.com/addons/loyalty-program.html "Loyalty Program") module to achieve your goals. The module will help you to increase customer loyalty and turn your visitors into returning customers as well as to reward your customers with points for actions.

The Loyalty Program module is included in the X-Cart Ultimate edition and can be added as a paid extention to the Business edition.

{% toc Let's review the module in details. %} 

## Installation and set-up

To install the Loyalty Program module please follow the steps described in {% link "Installing and activating addons" ref_0fGEpvrh %}. Once installed proceed to configuring the Loyalty Program on the module settings page.

![]({{site.baseurl}}/attachments/ref_1Odyn6mT/install.png)

The module settings are devided into 3 main blocks - EARN, REDEEM and INFORMATION. 

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![settings-earn.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/settings-earn.png)
</div>
  <div class="column" markdown="span"></div>
  <div class="column" markdown="span">![settings-redeem.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/settings-redeem.png)
</div>
</div>

1. The EARN settings are as follows:
  * **Rewards multiplier** : Number of points awarded to the shopper per dollar spent on your store. It can take either whole or decimal numbers.
  * **Give points for the shipping cost** : On/Off
  * **Give points for taxes** : On/Off
  * **Reward for orders with coupons** : On/Off 
  * **Sign-up reward** : Number of points awarded to the shopper for creating a shop account.
  * **Reward for rating a product** : Number of points awarded to the shopper for rating a product.
  * **Reward for reviewing a product** : Number of points awarded to the shopper for reviewing a product.
  * **Minimum product rating eligible for the reward** : Rewards for reviewing/rating a product won't be given for rates less than this number.
  
  {% note info %}

  You can also set per-product rewards that will override the _Rewards multiplier_ settings for a particular product. This can be done on a product details page in the 'Automatic reward points' field (_Price & Inventory_). If set to 'NO' you'll be able to define the number of points a customer will get for buying this product. 
![product.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/product.png)

  {% endnote %}

2. The REDEEM settings are as follows:
  * **Redeem rate** : What discount the shopper will get for a single reward point spent on checkout.
  * **Max. reward discount** : The maximum discount that a shopper can get for an order by redeeming his reward points. Can be either a fixed sum, or a percent value.
  * **Apply discount on the** : Whether the discount should apply on the grand total, or the subtotal.
  
3. The INFORMATION settings are as follows:
  * **Loyalty Program Details page** : What page to use as the Loyalty Program Details page. (You can choose between 'Built-in page template' and custom templates available in your store).
  
  {% note info %}
  
  To {% link "create a custom template" ref_Ptf5vaPn %} for your Loyalty Program details page use the **Content** > **Pages** > **New Page** section in the admin back-end. 
  ![custom.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/custom.png)

  {% endnote %}

## Managing Loyalty Program 

The Loyalty Program can be managed in the **Discounts** > **Loyalty Program** section of the admin back-end. 

![report.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/report.png)

There you can check reports on the reward points redeemed in your store and see a number of unused points for all customers, see a sum of total discount given to your customers for the redeemed points and a number of customers with unused reward points. 

Also you can see the current Loyalty Program settings and change them if required. 


