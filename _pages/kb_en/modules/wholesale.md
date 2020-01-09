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
Wholesale prices and minimum purchase quantities for products can be configured in X-Cart 5 using the addon **[Wholesale](https://market.x-cart.com/addons/wholesale.html)**.

Wholesale prices are a way to offer multiple levels of pricing for the same product depending on the membership level of the buyer and the quantity of product units ordered.

In case wholesale pricing is not meant for a specific membership and is offered to all cutomer levels it is required to specify a minimum perchase quantity for a product at which wholesale prices become available. A minimum purchase quantity is a minimum number of product units that can be bought by a customer at a time. If a customer's cart contains less items than the set minimum purchase limit, checkout for the cart is not allowed.

Before you proceed, make sure the addon **Wholesale** is installed and enabled.
![540-wholesale-on.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-wholesale-on.png)

{% toc %}

## Set up Minimum Purchase Quantities

Minimum purchase quantity defines the minimum number of product units that are to be added to cart in order for the checkout option to become available. Minimum purchase quantity is set on a per product basis and is displayed on the related product details page in the storefront provided the Wholesale addon is installed and enabled. 

The minimum product purchase quantities can be set via the **Inventory tracking** tab of the chosen product's details:

1.  Select a product to edit on the product listing page (**Catalog** -> **Products**) of your store Admin area.

2.  Open the **Inventory tracking** tab of the product details page.
    ![inventory-tracking.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/inventory-tracking.png)

3.  On the page that opens, use the **Minimum purchase quantity** section to specify a minimum purchase quantity for every available membership level and for "all customers" (users without a membership):
    ![minimum-purchase-quantity.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/minimum-purchase-quantity.png)
    
3.  Click **Update** to save the changes.

By default, the minimum purchase quantity value is set to 1 for all customers, either with or without a specific membership. When a store admin changes this value to any different from 1, this info is displayed on the product details page in the storefront for the customers with the respective membership level (or for all customers, if the minimum purchase quantity value is changed for the users without a membership):

![cus-minimum-purchase-quantity.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/cus-minimum-purchase-quantity.png)

If a product with the changed minimum purchase quantity value is added to cart directly from any product listing page (home page, category page, etc.) it is added to cart in the amount specified as minimum purchase quantity value for this product in the Admin area. 

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
        * Specify the number of product units starting from which the price of this tier should become available.
        * Specify the tier price - as a fixed value or as a percentage of the unprivileged Tier-1 price (Quantity range = "from 1", Membership = "All customers").
        * Specify the membership level that should provide customers access to the tier price.
        ![wholesale_line_adjust.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_line_adjust.png)
        
    3.  Click **Save changes**. 
        ![wholesale_line_save.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_line_save.png)

        The new tier will be added to the table:
        ![wholesale_line_added.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/wholesale_line_added.png)
        
## Configuration Samples 

Now let us take a closer look at how you configure specific pricing tiers. Consider the following example:

We have a product that we want to sell, and we want to define pricing tiers for it so that customers without a membership would be able to purchase the product at the following prices:

   * 1-9 units - $50
   * 10-99 units - $49
   * 100+ units - $47

(As you can see, the more units of the product is purchased, the lower the price).

We also have a privileged ‘Wholesaler’ membership level to which we want to give even lower prices:

   * 1-1000 units - $45 (a 10% discount off the unprivileged Tier-1 price, $50)
   * 1001+ units - $42.5 (a 15% discount off the unprivileged Tier-1 price, $50)

How do we configure pricing tiers?

In this case, we need to create and set up pricing tiers as follows:

*   *   Quantity range: from 1
    *   Price: $50
    *   Membership: All customers
       
       
*   *   Quantity range: from 10
    *  Price: $49
    *  Membership: All customers
       
       
*   *  Quantity range: from 100
    *  Price: $47
    *  Membership: All customers
       
       
*   *  Quantity range: from 1
    *  Price: $45 or 90%
    *  Membership: Wholesaler
       
       
*   *  Quantity range: from 1000
    *  Price: $42.5 or 85%
    *  Membership: Wholesaler
