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
Wholesale pricing and minimum purchase quantities for products can be configured in X-Cart 5 using the addon **[Wholesale](https://market.x-cart.com/addons/wholesale.html)**.

Wholesale pricing is a way to offer multiple levels of pricing for the same product depending on the membership level of the buyer and/or the number of product units ordered.

A store admin can add a dependency for a wholesale pricing for a product either on a specific minimum purchase quantity or a particular customer membership.

A store admin can add a dependency for wholesale pricing for a product either on a specific minimum purchase quantity or a particular customer membership. A minimum purchase quantity is the least possible number of product units that can be bought by a customer at a time. If a cart contains fewer items than the minimum purchase limit set for the product, checkout is not allowed.

Before you proceed, make sure the addon **Wholesale** is installed and enabled.
![540-wholesale-on.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-wholesale-on.png)

{% toc %}

## Minimum Purchase Quantities Setup

Minimum purchase quantity defines the minimum number of product units that must add to cart for the checkout option to become available. A minimum purchase quantity is set on a per-product basis, and displays on the related product details page in the storefront provided the "Wholesale" addon is installed and enabled. 

The minimum product purchase quantities can be set via the **Inventory tracking** tab of the chosen product's details:

1.  Select a product to edit on the product listing page (**Catalog** -> **Products**) of your store Admin area.

2.  Open the **Inventory tracking** tab of the product details page.
    ![inventory-tracking.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/inventory-tracking.png)

3.  On the page that opens, use the **Minimum purchase quantity** section to specify a minimum purchase quantity for every available membership level and for "all customers" (users without a membership):
    ![minimum-purchase-quantity.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/minimum-purchase-quantity.png)
    
3.  Click **Update** to save the changes.

By default, the minimum purchase quantity value is 1 for every customer regardless of the membership. When a store admin changes this value to any different from 1, this info displays on the product details page in the storefront. If a store admin changes the minimum purchase limit for a particular customer membership, only the users with this membership will see the changes:

![cus-minimum-purchase-quantity.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/cus-minimum-purchase-quantity.png)

If a product with the changed minimum purchase quantity value adds to cart directly from any product listing page (home page, category page, etc.), it adds to cart in the amount specified as minimum purchase quantity value for this product in the Admin area. 

## Wholesale Prices Setup

Wholesale prices can be configured for the store as a whole (the "all customers" level) and for a particular customer membership level. When assiging wholesale prices for memberships make sure the relative memberships are {% link "configured" ref_5JXPTA0A %} accordingly. 

To configure wholesale prices:

1.  In your store's Admin area, find the product for which you want to set or modify wholesale prices and open its details.

2.  Switch to the **Wholesale pricing** tab of the product details page. 
    ![540-wholesale-prices-tab.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-wholesale-prices-tab.png)

3.  Add the wholesale pricing tiers you require. 
    
    For each new tier complete the following steps:
    1.  Click the **New tier** button:
        ![540-new-tier.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-new-tier.png)

        This adds a new blank line to the wholesale pricing table:
        ![540-tier-setup.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-tier-setup.png)
        
        {% note info %}
        The Tier-1 line generates automatically based on the product details info and is uneditable. The changes in the Minimum purchase quantity value does not reflect in the Tier-1 line in your store Admin Area. However, they display in the wholesale prices table on the product details page in the storefront, provided wholesale prices configured for this product.
        {% endnote %}

    2.  On the line that has appeared, provide information about the new wholesale pricing tier:
        * Specify the number of product units starting from which the price of this tier should become available.
        * Specify the tier price - as a fixed value or as a percentage of the unprivileged Tier-1 price (Quantity range = "from 1", Membership = "All customers").
        * Specify the membership level that should provide customers access to the tier price.
    3.  Click **Save changes**. 

        The new tier will be added to the table:
        ![540-tier-added.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-tier-added.png)

The product details page in the storefront with the configured wholesale prices for a product will look as follows:
<div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>Default minimum product quantity</b>![540-cus-details-page-2.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-cus-details-page-2.png)</div>
  <div class="column" markdown="span"><b>Altered minimum product quantity</b>![540-cus-details-page-1.png]({{site.baseurl}}/attachments/ref_ttZa4qgu/540-cus-details-page-1.png)</div>
</div>

## Adding Wholesale Pricing to Sale Offers 

Starting from X-Cart 5.4.1.x it is possible to apply discounts to wholesale pricing and include them in sale offers if set percentagewise. This becomes possible if the Wholesale addon is used alongside the {% link "Sale Addon" ref_7tBJ8Yqo %}.

Wholesale addon adds the following wholesale pricing related settings to single product and group discounts:
* **Apply product-specific discount to wholesale price** : This toggler is added to the "Prices & Inventory" section of product details and allows applying a [single product discount](https://kb.x-cart.com/modules/sale/new.html#setting-sale-price-for-single-products "Wholesale") to wholesale pricing if the former set percentagewise.
* **Apply sale discount to wholesale prices** : This toggler is added to [sale offer properties](https://kb.x-cart.com/modules/sale/new.html#creating-a-sale-offer "Wholesale") (**Discounts** -> **Sale** -> **New sale**) and allows including products with wholesale prices into a sale offer. The offer is valid for wholesale pricing only if the discount amount set percentagewise. 

In case a product with wholesale pricing is included into a sale offer, or a product-specific discount applies, a related record displays in the **Wholesale pricing** tab of product details informing a store admin of the limitation set. 
        
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
