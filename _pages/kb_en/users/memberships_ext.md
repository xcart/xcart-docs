---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-11 14:22 +0400'
identifier: ref_memberships_ext
title: Promote Sales with User Memberships
order: 100
published: true
description: memberships and products/categories/discounts/taxes/etc.
---
Memberships can be used to:
- divide customers into groups (wholesale, retail, etc.) as described in {% link "User membership levels" ref_RXsgxNSm %};
- grant tax-exempt status to a group of customers;
- create discounts for certain memberships.

You can also enable special payment options for certain groups of customers based on membership or even sell memberships providing access to better prices.

{% toc Let us review each option in detail. %}

## Membership-specific Access to Products and Categories

In the section [Setting up wholesale prices and minimum purchase quantites for different membership levels](https://kb.x-cart.com/products/setting_up_wholesale_prices_and_minimum_purchase_quantites_for_different_membership_levels.html) of this manual you can find out how to set special prices for the customers who buy items in bulk. Setting memberships on a certain product, groups of products or even categories works a bit different. Using this function you can grant access to specific products or categories only to certain members of your site and hide them from the rest of your customers. The hidden products and categories will still be indexed by Google, so this won't affect the ranks.

To hide a category and grant access to it only to certain store members:
    
   1. Go the the 'Catalog: Categories' section in the your store's Amin area.
   2. Choose the category you require and open it.
   3. Specify the membership(s) that should be able to access this category in the 'Memberships' field (Figure 1). Hold down the _**Shift**_ key to select multiple memberships.  
   4. Don't forget to press the 'Update' button to save the changes.

![Figure 1]({{site.baseurl}}/attachments/X Cart online store builder    Your company name    Manage category  Apparel.png)

The same needs to be done about the products in this category:
 
   1. Open the 'Catalog: Products' section in the Admin area.
   
   2. Filter the product list so it shows only the products from the category you require (the one you worked on at the previous step). This can be done by specifying the category name in the category selector (where it says 'Any Category') and clicking _**Search**_. (Figire 2)
      ![Figure 2]({{site.baseurl}}/attachments/Products.png)

   3. Scroll down the product list and select 'Bulk Edit' > 'Price and Membership' (Figure 3)
      ![Figure 3]({{site.baseurl}}/attachments/bulk edit.png)
      
      You will be redirected to a new page where you will be able to bulk edit product options. 
    
   4. Choose the 'Membersips' option and click to specify the membership(s) you need.
   
   5. Click _**Save Changes**_. (Figure 4)
      ![Figure 4]({{site.baseurl}}/attachments/membership.png)

That's all. The category and all the products in it are now hidden from any unregistered users. To be able to see this category or a product in it, a customer will need to be logged in and have a membership that we have specified as allowed to access this category/product.

If a non-member tries to open a members-only category page using a direct link, the store will show a `page not found` error. With a members-only product, the store will show an `access denied` error with a link to the 'Contact Us' page so the user can contact the store administrator and request the required membership. (Figure 5)
       ![Figure 5]({{site.baseurl}}/attachments/access.png)

Note that a store administrator can give membership to a registered customer only (Access Level - Customer), but not to an anonymous visitor. 

## Membership-specific Taxes

Using memberships you can boost sales by offering low tax rates or even tax-free orders for your VIP customers and attact them with lower expences this way. 

To set special taxes for memberships go to the 'Store SetUp: Taxes' section of your cart admin area, make sure the 'Use the same tax rates for all user membership levels' option is disabled, create a new tax rate or edit an existing one pointing the required membership (Figure 6). Don't forget to _**Save Changes**_ when done. 

![Fig 6]({{site.baseurl}}/attachments/tax.png)


{% note info %} 
The detailed description of the tax configuration process you can find in {% link "Setting up sales tax" ref_aJPK4DHN %}.
{% endnote %}

## Membership-specific Discounts, Coupons and Special Offers

This is a feature in-demand in deed. Using memberships you can vary a discount level between different groups of customers, provide coupons of limited edition valid only for a particular membership, extend membership sales with special offers.

**Membership discounts** can be set up in the 'Discounts: Volume Discounts' section of the admin back-end as described in {% link "Configuring volume discounts and coupons in X-Cart 5" ref_6xFWK5tC %}. The process is rather straightforward - press the 'Add discount' button, define a subtotal the discount will be applied to in the '$' marked field, define the discount value in % or $ and choose the appropriate membership (Figure 7). You can repeat the process as many times as you need and then press _**Save Changes**_

To allow customers to use several types of discount at a time use % to set the value 
   ![Figure 7]({{site.baseurl}}/attachments/Screen Shot 2018-01-12 at 21.27.47.png)


**Membership coupons** can be defined in the 'Discounts: Coupons' section of the admin back-end as described in {% link "Setting up discount coupons" ref_SGI1FqdC %}. When creating a membership discount the main point is to set the applicable membership(s) in the 'Membership' area (Figure 8) and save the changes. You can edit the coupon later on by clicking the coupon name and enable/disable it using the On/Off button.

![Fig 8]({{site.baseurl}}/attachments/coupons.png)

If a non-member uses a members-only coupon at checkout, they will get an error message like the following: "Sorry, the coupon you entered is not valid for your membership level. Contact the administrator"

**Special Offers** for memberships can be set up using the [Special Offers: Buy X Get Y](https://market.x-cart.com/addons/buy-x-get-y.html "Promote Sales with User Memberships") and [Special Offers: Spend X Get Y](https://market.x-cart.com/addons/spend-x-get-y.html "Promote Sales with User Memberships") modules. Using these modules you'll be able to grant your membership users and not only them with such offers like:
- buy N items from specified categories to get a discount on M of them (the cheapest ones);
- spend a particular amount in specified categories to get a discount on M of the items bought from these categories (the cheapest ones).

{% note info %} 
Set the discount to 100%, and customers will get the items for free. 
{% endnote %}

To configure the offers you'll need to have the modules installed first as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once installed the features will become available in the 'Discounts: Special Offers' section of your admin back-end (Figure 9).
   ![Fig 9]({{site.baseurl}}/attachments/so.png)

Choose the offer you'll set up first and press _**Create**_. You'll see a form that you'll need to feel in to create an offer that will meet the conditions you specify, e.g. dates, rewards, exclusions, etc. As for memberships you'll need to specify them in the 'Conditions' section in the 'Eligible membership levels' field (Figure 10).
   ![Fig 10]({{site.baseurl}}/attachments/conditions.png)

For detailed guidance on the setup of special offers refer to the section {% link "Special Offers" ref_special_offers %} in this manual.


## Membership-specific Payment Methods

With the module [Memberships for payment methods](https://market.x-cart.com/addons/memberships-for-payment-methods.html) you will be able to give additional payment options to certain groups of customers in your store; for example, to enable PayPal Express Checkout for wholesale buyers only. 

To enable the feature, install the module 'Memberships for payment methods' module first as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once the module is installed, a special 'Memberships' field will appear under each payment method in the 'Store Setup: Payment Methods' section of your store's Admin area (Figure 11).
   ![Fig 11]({{site.baseurl}}/attachments/payment.png)

You'll need to use this field to specify the membership to which the payment method should be available (Figure 12). At checkout your customers will be able to see only the payment methods available to their membership group.
   ![Fig 12]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 16.16.45.png)


## Paid Memberships

The standard membership feature can be extended using the module [Paid Memberships](https://market.x-cart.com/addons/paid-memberships.html). This module enables you to sell paid memberships as regular products. If your customers may be willing to pay for member access to advanced buying options - like closed sales, vip prices and exclusive discounts - this module may be just the thing for you.

To enable paid memberships, make sure the module is installed as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once the module is installed, you will be able to create memberships as products and sell them to your customers. 

To create a paid membership:

   1. Go to the '**Catalog** > **Products**' section of your store's Admin area and choose to add a new product (Figure 12).
      ![Fig 12]({{site.baseurl}}/attachments/add_product.png)
      
   2. On the page that opens, specify the product details as you require; for example, name, SKU, description, etc. - just like any regular product in your store. 
   
   3. To turn the product into a paid membership, use the setting **Membership to assign to product purchaser** to specify the membership that your customers will be able to get by purchasing the current product (Figure 13) and set the period for which the membership will be granted by adjusting the setting **Membership duration** (Figure 14).
      ![Fig 13]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.31.27.png)
      ![Fig 14]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.31.51.png)
      
   4. If necessary you can enable your existing members to purchase this membership at a special price and get a level up. The membership price for existing members can be adjusted via the **Prices & Inventory** section (Figure 15). 
      ![Fig 15]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.37.44.png)


Once created, the membership will become available for sale and your customers will be able to purchase it (Figure 16).
   ![Fig 16]({{site.baseurl}}/attachments/product.png)

If anonymous checkout is enabled in the store, and a buyer of premium membership access chooses to check out without creating an account, the membership will not be assigned to that buyer automatically until an account  is created for them. The store administrator will be notified of such orders with an "action required" warning. 

After the order gets the status 'Paid', the customer will get the membership they have purchased automatically and will be able to access all the membership-specific privileges right away.

When the membership expires the customer will get an email notification. 

Email notifications for the **Paid Membership** module can be managed via the Email notifications section of the Admin area (**Store setup** > **Email notifications**).
   ![notifications.png]({{site.baseurl}}/attachments/ref_memberships_ext/notifications.png)
