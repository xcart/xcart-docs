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

## Memberships for Products and Categories

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

## Memberships and Taxes

Using memberships you can boost sales by offering low tax rates or even tax-free orders for your VIP customers and attact them with lower expences this way. 

To set special taxes for memberships go to the 'Store SetUp: Taxes' section of your cart admin area, make sure the 'Use the same tax rates for all user membership levels' option is disabled, create a new tax rate or edit an existing one pointing the required membership (Figure 6). Don't forget to _**Save Changes**_ when done. 

![Fig 6]({{site.baseurl}}/attachments/tax.png)


{% note info %} 
The detailed description of the tax configuration process you can find in {% link "Setting up sales tax" ref_aJPK4DHN %}.
{% endnote %}

## Membership Discounts

This is a feature in-demand in deed. Using memberships you can vary a discount level between different groups of customers, provide coupons of limited edition valid only for a particular membership, extend membership sales with special offers.

**Membership discounts** can be set up in the 'Discounts: Volume Discounts' section of the admin back-end as described in {% link "Configuring volume discounts and coupons in X-Cart 5" ref_6xFWK5tC %}. The process is rather straightforward - press the 'Add discount' button, define a subtotal the discount will be applied to in the '$' marked field, define the discount value in % or $ and choose the appropriate membership (Figure 7). You can repeat the process as many times as you need and then press _**Save Changes**_

{% note info %} 
To allow customers use several types of discount at a time use % to set the value 
{% endnote %}

![Figure 7]({{site.baseurl}}/attachments/Screen Shot 2018-01-12 at 21.27.47.png)


**Membership coupons** can be defined in the 'Discounts: Coupons' section of the admin back-end as described in {% link "Setting up discount coupons" ref_SGI1FqdC %}. When creating a membership discount the main point is to set the applicable membership(s) in the 'Membership' area (Figure 8) and save the changes. You can edit the coupon later on by clicking the coupon name and enable/disable it using the On/Off button.

![Fig 8]({{site.baseurl}}/attachments/coupons.png)

{% note info %} 
If a non-member uses a membership coupon at checkout a cart will display an error "Sorry, the coupon you entered is not valid for your membership level. Contact the administrator"
{% endnote %}

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

{% note info %} 
For detailed guidance on the offers set-up please refer to {% link "Special Offers" ref_special_offers %}
{% endnote %}


## Memberships for Payments Methods

With the [Memberships for payment methods](https://market.x-cart.com/addons/memberships-for-payment-methods.html) module you'll be able to give extra payment options to the certain groups of customers in your store, e.g. enable PayPal Express Checkout for the wholesale buyers only. 

To enable the feature, please install the 'Memberships for payment methods' module first as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once installed a special 'Memberships' field will appear under each payment method in the 'Store SetUp: Payment Methods' section of the cart admin area (Figure 11).

![Fig 11]({{site.baseurl}}/attachments/payment.png)

You'll need to define an applicable membership in this field and the payment will become available for the customers with the specified membership only (Figure 12). On checkout, a customer will see only the payment methods available for his membership.


![Fig 12]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 16.16.45.png)


## Paid Memberships

The standard membership feature can be extended with a [Paid Memberships](https://market.x-cart.com/addons/paid-memberships.html) module that will enable an ability to sell paid memberships as regular products. This module is usefull if you have an extremely favorable options for members worth paying for, e.g. closed sales, vip prices, etc.

To enable the feaure make sure the module is installed as described in {% link "How to Install Modules in X-Cart 5" ref_fTUahl4n %}. Once installed you'll be able to create memberships as products and sell them to your customers. For this purpose go to the '**Catalog** > **Products**' section of the cart admin area and click the 'Add Product' button (Figure 12).

![Fig 12]({{site.baseurl}}/attachments/add_product.png)

You'll be forwarded to a page to create a new product where it will be necessary to fill in the fields, e.g. name, SKU, description, etc just like any regular product in your store. To make a product a paid membership you should enable the 'Membership to assign to product purchaser' field (Figure 13) and choose a _**Membership Duration**_ (Figure 14).

![Fig 13]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.31.27.png)
![Fig 14]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.31.51.png)

If necessary you can set a special price for memberships in the 'Prices & Inventory' section if applicable (Figure 15). This way existing members can level up at a special cost.

![Fig 15]({{site.baseurl}}/attachments/Screen Shot 2018-01-15 at 19.37.44.png)


Once created a membership will become available for sale for customers (Figure 16).

![Fig 16]({{site.baseurl}}/attachments/product.png)


{% note info %} 
If anonymous checkout is enabled, and a customer, buying a premium membership access, prefers to checkout without an account creation, the membership will not be assigned automatically till the account is created. The admin will be notified about such an order with a warning, indicating the "action required". 
{% endnote %}

After the order gets a 'Paid' status a customer gets a paid membership automatically and therefore gets access to all membership privileges.

When the membership expires the customer will get an e-mail notification, that will be sent automatically. E-mail notifications for the **Paid Membership** module can be managed in the **Store setup** > **Email notifications** section of the admin area.

![notifications.png]({{site.baseurl}}/attachments/ref_memberships_ext/notifications.png)
