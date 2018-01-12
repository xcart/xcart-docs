---
lang: en
layout: article_with_sidebar
updated_at: '2018-01-11 14:22 +0400'
title: Promote Sales with User Memberships
order: 100
published: false
description: memberships and products/categories/discounts/taxes/etc.
---
# **Use Memberships to Promote Sales**

So how can you benefit from using memberships? Memberships are commonly used for:
- deviding customers in groups (wholesale, retail, etc.) as described in {% link "User membership levels" ref_RXsgxNSm %}
- giving customers tax-exempt status
- creating discounts for certain memberships

You can also provide special payment options for certain groups of customers or even sell memberships to the customers for gaining access to better prices. Hence you can not only promote sales with memberships but also earn on them.

Let's consider each option in detail.

## Memberships for Products and Categories

In [Setting up wholesale prices and minimum purchase quantites for different membership levels](https://kb.x-cart.com/products/setting_up_wholesale_prices_and_minimum_purchase_quantites_for_different_membership_levels.html) you've learned how to give special prices to the customers who buy bulk items. Setting memberships on a certain product, groups of products or even categories works a bit different. Using this function you can grant access to the items to the particular members of your site only and hide such items from the rest of the customers. The hidden products and categories are still indexed by Google, so this won't affect the ranks.

To hide a category and grant access to it to the certain store members only you should go the the 'Categories' section in the cart admin area, choose and open the category you need, and set the required membership(s) in the 'Memberships' field (Figure 1). Please don't forget to press the 'Update' button to save the changes.

{% note info %}
Hold _**Shift**_ if you want to choose more than one membership at a time  
{% endnote %}

![Figure 1]({{site.baseurl}}/attachments/X Cart online store builder    Your company name    Manage category  Apparel.png)


Once completed you should also do the same to the products from this category. For this purpose please open the 'Products' section in the admin area, choose the category you worked with previously in the 'Any Category' drop-down and click _**Search**_. (Figire 2)

![Figure 2]({{site.baseurl}}/attachments/Products.png)

The cart will show you a full list of all products from the chosen caterory as a result. You should scroll the page down, press the 'Bulk Edit' drop-down and choose the 'Price and Membership' option (Figure 3)

![Figure 3]({{site.baseurl}}/attachments/bulk edit.png)

You'll be redirected to a new page to edit product options in bulk. Choose the 'Membersips' option and click to specify the membership(s) you need. Press _**Save Changes**_. (Figure 4)

![Figure 4]({{site.baseurl}}/attachments/membership.png)


If a non-member tries to open a membership category page using a direct category link the cart will show a `page not found` error. If the same with a direct product link, the cart will show the `access denied` error with a possibiity to contact the store admin and ask for membership. (Figure 5)

![Figure 5]({{site.baseurl}}/attachments/access.png)


{% note info %}
The contact the administrator link in the error will redirect a visitor to the 'Contact Us' page (https://www.yourstore.com/cart.php?target=contact_us) where s/he can ask for a membership. A cart admin can give membership to a registered customer only (Access Level - Customer), but not to an anonimous visitor. So to become a member a customer should register an account with your store first.
{% endnote %}

## Memberships and Taxes

Using memberships you can boost sales by offering low tax rates or even tax-free orders for your VIP customers and attact them with lower expences this way. 

To set special taxes for memberships go to the 'Store SetUp: Taxes' section of your cart admin area, make sure the 'Use the same tax rates for all user membership levels' option is disabled, create a new tax rate or edit an existing one pointing the required membership (Figure 6). Don't forget to _**Save Changes**_ when done. 

![Figure 6]({{site.baseurl}}/attachments/tax.png)

## Membership Discounts

This is a feature in-demand in deed. Using memberships you can vary a discount level between different groups of customers, provide coupons of limited edition valid only for a particular membership, extend special offers.

Membership discounts can be set up in the 'Discounts: Volume Discounts' section. The process is rather straightforward - press the 'Add discount' button, define the subtotal the discount will be applied to in the '$' marked field, define the discount value in % or $ and choose the appropriate membership. You can repeat the process as many times as you need and then press _**Save Changes**_

{% note info %} To allow customers use several types of discount at a time use % to set the value {% endnote %}



{% note info %} If a non-member uses a membership coupon at checkout a cart will display an error "Sorry, the coupon you entered is not valid for your membership level. Contact the administrator"{% endnote %}



