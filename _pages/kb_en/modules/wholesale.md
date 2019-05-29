---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-28 18:10 +0400'
identifier: ref_ttZa4qgu
title: Wholesale
categories:
  - User manual
published: true
order: 329
redirect_from:
  - >-
    /products/setting_up_wholesale_prices_and_minimum_purchase_quantites_for_different_membership_levels.html
  - /modules/wholesale_module.html
---
Wholesale prices and minimum purchase quantities for products can be configured in X-Cart 5 using the addon **[Wholesale](https://market.x-cart.com/addons/wholesale.html)**:

![wholesale_addon.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_addon.png)

Wholesale prices are a way to offer multiple levels of pricing for the same product depending on the membership level of the buyer and the quantity of product units ordered.

A minimum purchase quantity is a minimum number of product units that can be purchased by a customer at a time. If a customer's cart contains a lesser quantity of product units than is specified by the minimum purchase limit, checkout for the cart is not allowed.

## Set up Wholesale Prices

To configure wholesale prices:

1.  In your store's Admin area, find the product for which you want to set or modify wholesale prices and open its details.

2.  Switch to the **Wholesale pricing** tab of the product details page. 
    ![wholesale_pricing_tab.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_pricing_tab.png)

3.  Add the wholesale pricing tiers you require. For each new tier complete the following steps:

    1.  Click the **New tier** button:
        ![wholesale_new_tier.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_new_tier.png)

        This adds a new blank line to the wholesale pricing table:
        ![wholesale_new_line.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_new_line.png)

    2.  On the line that has appeared, provide information about the new wholesale pricing tier:
        ![wholesale_line_adjust.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_line_adjust.png)
        
    3.  Click **Save changes**. 
        ![wholesale_line_save.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_line_save.png)

        The new tier will be added to the table:
        ![wholesale_line_added.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_line_added.png)

Now let us take a closer look at how you configure specific pricing tiers. Consider the following example:

We have a product that we want to sell, and we want to define pricing tiers for it so that customers without a membership would be able to purchase the product at the following prices:

   * 1-9 units - $50
   * 10-99 units - $45
   * 100+ units - $40

(As you can see, the more units of the product is purchased, the lower the price).

We also have a privileged ‘Wholesaler’ membership level to which we want to give even lower prices:

   * 1-1000 units - $45
   * 1001+ units - $35

How do we configure pricing tiers?

In this case, we need to create and set up pricing tiers as follows:

   *   Quantity range: from 1
       Price: $50
       Membership: All customers
       
   *   Quantity range: from 10
       Price: $45
       Membership: All customers
       
   *   Quantity range: from 100
       Price: $40
       Membership: All customers
       
   *   Quantity range: from 1
       Price: $45
       Membership: Wholesaler
       
   *   Quantity range: from 1000
       Price: $35
       Membership: Wholesaler

## Set up Minimum Purchase Quantities per Membership Level

If you want to set minimum product purchase quantities for specific membership levels in your store, you can do so via the Inventory tracking section of the chosen product's details:

1.  Select the **Inventory tracking** tab.
    ![inventory_tracking_tab.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/inventory_tracking_tab.png)

2.  On the page that opens, use the **Minimum purchase quantity** section to specify a minimum purchase quantity for every membership level and for "all customers" (users without a membership):
    ![minimum_purchase_qty.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/minimum_purchase_qty.png)

3.  Click **Update** to save the changes.


