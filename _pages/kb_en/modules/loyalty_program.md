---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-07 12:35 +0400'
identifier: ref_1Odyn6mT
title: Loyalty Program
order: 155
published: true
description: The Loyalty Program Addon
---
Do you want to stimulate guest customers to register, or encourage product reviews and ratings, or even reward customers for purchases? Use the addon [Loyalty Program](https://market.x-cart.com/addons/loyalty-program.html "Loyalty Program") to achieve your goals. The addon will help you to increase customer loyalty and turn your visitors into returning customers as well as to reward your customers with points for actions.

{% toc Let's review the addon in details. %} 

## Installation and Setup

To install the Loyalty Program addon, please follow the steps described in {% link "Installing and Activating Addons" ref_0fGEpvrh %}. 
![loyalty_program_addon.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/loyalty_program_addon.png)

Once the addon has been installed, proceed to configuring your Loyalty Program via the addon settings page.

The addon settings are divided into three main blocks - EARN, REDEEM and INFORMATION. 

 <div class="ui stackable two column grid">
   <div class="column" markdown="span">![settings-earn.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/settings-earn.png)
  </div>
  <div class="column" markdown="span">![settings-redeem.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/settings-redeem.png)
  </div>
</div>
 
EARN settings:
  * **Rewards multiplier** : Number of points awarded to the shopper per dollar spent on your store. It can take either whole or decimal numbers.
  * **Give points for the shipping cost** : On/Off
  * **Give points for taxes** : On/Off
  * **Reward for orders with coupons** : On/Off 
  * **Sign-up reward** : Number of points awarded to the shopper for creating a shop account.
  * **Reward for rating a product** : Number of points awarded to the shopper for rating a product.
  * **Reward for reviewing a product** : Number of points awarded to the shopper for reviewing a product.
  * **Minimum product rating eligible for the reward** : Rewards for reviewing/rating a product won't be given for rates less than this number.  
  
  {% note info %}
 
  You can also set per-product rewards that will override the _Rewards multiplier_ settings for a particular product. This can be done on a {% link "product details page" ref_fhzzxDTy %} in the 'Automatic reward points' field (_Price & Inventory_). If set to 'NO' you'll be able to define the number of points a customer will get for buying this product. 
  ![product.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/product.png)
  
  {% endnote %}
  
REDEEM settings:
  * **Redeem rate** : What discount the shopper will get for a single reward point spent on checkout.
  * **Max. reward discount** : The maximum discount that a shopper can get for an order by redeeming his reward points. Can be either a fixed sum, or a percent value.
  * **Apply discount on the** : Whether the discount should apply on the grand total, or the subtotal.
  
INFORMATION settings:
  * **Loyalty Program Details page** : What page to use as the Loyalty Program Details page. (You can choose between 'Built-in page template' and custom templates available in your store).  
  {% note info %}  
  To {% link "create a custom template" ref_Ptf5vaPn %} for your Loyalty Program details page use the **Content** > **Pages** > **New Page** section in the admin back-end. 
  ![custom.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/custom.png)
  {% endnote %}

## Managing Your Loyalty Program 

The Loyalty Program can be managed in the **Discounts** > **Loyalty Program** section of the Admin back end. 

![report.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/report.png)

There you can check reports on the reward points redeemed in your store and see a number of unused points for all customers, see a sum of total discount given to your customers for the redeemed points and a number of customers with unused reward points. 

Also you can check the current Loyalty Program settings and change them if required. 

To manage the Loyalty Program representation in the store front-end enable the corresponding menu in the **Content** > **Menus** section of the admin back-end and **save** the changes.

![menu.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/menu.png)

The menu itself is added automatically after the Loyalty Program addon has been installed.

## Customer Experience

When the Loyalty Program addon is enabled, the store visitors and registered customers can see the reward points they will get for buying a product.

![home.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/home.png)

Also, they can see a Loyalty Program menu (if enabled) where they can get information on the Loyalty Program policy.

![details.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/details.png)

At checkout, registered customers can see the reward points they will earn with the order. Store visitors will be promted to register an account for the reward points to be added to the order.

![checkout.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/checkout.png)

Customers can also earn reward points by rating products or writing {% link "product reviews" ref_XBriIS6B %}  if this feature is enabled in the Loyalty Program settings. 

{% note info %}
Reward Points for product ratings and reviews can be promoted either on the Loyalty Program page or with the help of the [Pop-Up Anywhere](https://market.x-cart.com/addons/popup-anywhere.html "Loyalty Program") addon.
{% endnote %}

Reward points are credited to a customer's account when an order gets a 'Paid' {% link "status" ref_DkbTi1qJ %}. After that the customer can see available reward points on the **Account Details** page in the **Reward Points** tab. If the order is cancelled or refunded the related reward points are withdrawn from the customer's account.

![user-front-end.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/user-front-end.png)

The customer can also check the transaction history of reward points on this page.

To use the available reward points a customer will need to click the **Redeem** button at checkout. 

![checkout-redeem.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/checkout-redeem.png)

Reward points will be converted into a respective discount according to the Loyalty Program settings and will be withdrawn from the customer's account after the order is paid. 

A store admin can check and adjust the reward points balance of a customer with a comment for the adjustment (if required) on the user account details page in the _Reward Points_ tab (**Users** -> **User list**).

![user.png]({{site.baseurl}}/attachments/ref_1Odyn6mT/user.png)
