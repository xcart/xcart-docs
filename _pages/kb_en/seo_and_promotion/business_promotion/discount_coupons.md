---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-26 21:08 +0400'
identifier: ref_SGI1FqdC
title: Discount Coupons
categories:
  - User manual
published: true
order: 130
redirect_from:
  - /seo_and_promotion/setting_up_discount_coupons.html
---
X-Cart 5 allows you to create coupons for your customers. A coupon is a secret code which a customer can use to get a discount on their order - typically, a fixed amount or a percentage off, or free shipping. It is possible to limit the use of a coupon to a specific order subtotal amount, time period, product category, product class or user membership level. If necessary, it is also possible to set the number of times that a coupon can be used.

{% toc %}

## Enabling Coupons

The coupons feature in X-Cart 5 is enabled by the addon **[Coupons](https://market.x-cart.com/addons/discount-coupons.html)**:
![coupons_addon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/coupons_addon.png)

To be able to use free shipping coupons, you also require the addon **[Free Shipping and Shipping freights](https://market.x-cart.com/addons/free-shipping.html)**. 
![free_ship_addon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/free_ship_addon.png)

To start creating coupons for your customers, make sure the above said addons are installed and enabled at your store. If not, you can install them from the X-Cart App Store. For general addon installation instructions, see {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

## Configuring Coupons

When creating a coupon, a store administrator can limit its application to product categories and classes, as well as to customer memberships or address. The availability can also narrow to a group of random products. 

### Creating a Coupon

To create a coupon:

1.  In your store's Admin area, go to the Coupons section (**Discounts** > **Coupons**) and select to create a new coupon by clicking the **New discount coupon** button:
    ![541-add-new-coupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-add-new-coupon.png)
    
    A page for coupon creation opens:
    ![541-coupon-details-page.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupon-details-page.png)

2.  Specify the properties of your discount coupon on the details page. 

    * **Vendor** : This field is available only in {% link "X-Cart Multivendor" ref_4ahg5FLK %}. For information on using this field, see {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %}.
    * **Code** : Specify a code (an alpha-numerical combination) that a buyer will need to enter at checkout to get the discount.
    * **Comment** : Add a comment to help you identify this coupon. This comment is visible for a coupon owner only.
    * **Enabled** : Use the checkbox to make the coupon active for customers. Disable the option to deactivate the coupon.
    * **Discount type** : Select a type of discount provided by the coupon. Available options are as follows:
       * **$ off** - a discount for a fixed amount in the store currency;
       * **Percent** - a percentage discount;  
       * **Free shipping** - a discount for the amount of the order shipping cost.  
          {% note info %}
          The "Free shipping" type is only available if you are using the addon "Free Shipping and Shipping freights" in your store - alongside the addon "Coupons".
          {% endnote %}
    * **Discount amount** : Set the discount value a buyer can get off their order. This field is only available with **Discount type** set to "$ off" or "Percent". 
    * **Active from** : Specify the coupon validity period start date (if applicable).
    * **Active till** : Specify the coupon expiration date (if applicable).
    * **Subtotal range (begin)** : Specify the minimum subtotal amount the coupon applies to. The coupon will not be applied if the subtotal is less than the amount specified here.
    * **Subtotal range (end)** : Specify the maximum subtotal amount the coupon applies to. The coupon will not be applied if the subtotal is more than the amount specified here.
    * **Limit the number of uses** : Leave this option disabled to allow unlimited use of the coupon. If enabled a store admin can specify 
      * **The maximum number of uses** - the absolute maximum number of times this coupon can be used;
      * **The maximum number of uses per user** - the maximum number of times this coupon can be used per user.
    * **Coupon cannot be combined with other coupons** : Use the option to specify whether the coupon can be combined with other coupons.
    * **Valid only for specific products** : Use the toggle to assign a coupon to a list of random products. If enabled, this toggle hides the **Categories** and **Product classes** properties for the coupon.
    * **Categories** : Select the category/-ies the coupon applies to.
    * **Product classes** : Select product class(es) the coupon applies to. 
    * **Memberships** : Select the membership level(s) allowed to use the coupon. If no membership level is specified in this field, any store user with or without a membershp will be able to use the coupon.
    * **Address zones** : Specify the delivery areas the coupon is valid for.

3.  Click the **Create** button at the bottom of the page. 
    The coupon will be created and added to the list in the **Coupons** section.
    ![541-coupons-list.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupons-list.png)
    
    
### Assigning Coupons to Random Products

To limit coupons availability to a group of ramdom products a store admin should first create a coupon as described [above](https://kb.x-cart.com/seo_and_promotion/business_promotion/discount_coupons.html#creating-a-coupon "Discount Coupons") paying special attention to the following setting:
   * **Valid only for specific products** : Enable the option by setting the toggle to “YES”.
   
Then it is necessary to assign the newly created coupon to products using one of the following ways:

**THROUGH THE "PRODUCTS" TAB OF A COUPON DETAILS PAGE**

This is the most common way of assiging coupons to products as it does not require leaving the coupon set up page. 

The **Products** tab of the coupon details page (**Discounts** -> **Coupons**) becomes available as soon as a coupon with the **Valid only for specific products** property enable is created and allows assiging as many products to a coupon as a store admin may need.
![541-coupon-details-product-tab.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupon-details-product-tab.png)

To assign a coupon to a group of random products a store admin should:
     
1. Open the Products tab of the coupon details page
   ![541-coupon-details-add-products.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupon-details-add-products.png)
2. Click **Add products**.
3. Select products from the list in the pop-up.
   ![541-add-products-popup.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-add-products-popup.png)
4. Click the **Add product** button at the bottom of the pop-up.
       
   The list displays the clickable links to the products the coupon is applied:
   ![541-coupon-details-products-added.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupon-details-products-added.png)
       
   The number of products the coupon is applied also displays as a clickable link on the coupons listing page. A store admin can edit the product list following this link directly.
   ![541-coupons-listing-products-link.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupons-listing-products-link.png)
       
**THROUGH THE "BULK EDIT" TOOL**

The **Bulk edit** tools is mostly used to [manage existing coupon assignments](https://kb.x-cart.com/seo_and_promotion/business_promotion/discount_coupons.html#managing-coupons-assigned-to-random-products "Discount Coupons"). However, it can still be used to assign coupons to to a group of random products at a time is required.

The **Bulk edit** tool is available on the product listing page (**Catalog** -> **Products**):
![541-product-list-bulk-edit.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-product-list-bulk-edit.png)

To assign a coupon to a group of random products a store admin should:
     
1. Open the product listing page and select products from the list the coupon will apply to.
2. Click **Coupons** in the **Bulk edit** selector:
   ![541-bulk-edit-coupons.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-coupons.png)
3. On the page that opens, use the **Click to specify** button to select a coupon that will apply to the products:
   ![541-bulk-edit-details.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-details.png)
    Click inside the **Coupons** field to see the list of coupons available:
    ![541-bilk-edit-select-coupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bilk-edit-select-coupon.png)
4. Check that the action is set to **Add**:
   ![541-bulk-edit-add-action.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-add-action.png)
5. Click **Save changes**. The coupon is assigned to selected products.

{% note info %}
There are no limitations on a number of coupons that can be assigned to one product. 
{% endnote %}

**THROUGH PRODUCT DETAILS PAGES**

Product details page is the least practical but still useful way to assign coupons to a product. Using this way a store admin can assign or delete previously assigned coupons on a per-product basis.

To assign a coupon to a product a store admin should:
1. Locate a product on the product listing page (**Catalog** -> **Products**) and open the product details page for editing:
   ![541-product-listing.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-product-listing.png)

2. On the product details page scroll down to the **Prices & Inventory** section in the **Info** tab:
   ![541-product-details.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-product-details.png)

3. In the **Prices & Inventory** section locate the Coupons field and click inside to check for the coupons available:
   ![541-products-details-coupons-empty.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-products-details-coupons-empty.png)

4. Select the applicable coupons from the list:
   ![541-products-details-coupons-dropdown.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-products-details-coupons-dropdown.png)

5. Click the **Update product** button at the bottom of the page to save the changes:
   ![541-products-details-update-product.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-products-details-update-product.png)

Using the algorithm described above a store admin can delete a coupon assigned previously to products through any of the available methods of coupon assignment.

# Managing Coupons Assigned to Random Products

The **Bulk edit** tool of the product listing page (**Catalog** -> **Products**) allows changing a coupon assigned to a product for an alternative one and unassigning coupons from products completely. 

To edit coupon assignments:
1. Open the product listing page and select products you need to edit:
   ![541-product-list-bulk-edit.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-product-list-bulk-edit.png)
2. Click **Coupons** in the **Bulk edit** selector:
   ![541-bulk-edit-coupons.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-coupons.png)
3. On the page that opens, choose an action you want to perform:
   * **Remove** : This action will to delete a coupon assigned to products.
     ![541-bulk-edit-remove.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-remove.png)
   * **Replace with** : This action unassigns the current coupon from products and assigns a new one instead.
     ![541-bulk-edit-replace-with.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-replace-with.png)
4. Use the **Click to specify** button to select the required coupon from the list:
   ![541-bulk-edit-details.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-bulk-edit-details.png)
     * Click inside the **Coupons** field to see the list of coupons available.
       ![541-coupons-field-value.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/541-coupons-field-value.png)
     * Select a coupon you need.
5. Click **Save changes**. 

# Using Coupons in the Storefront

When the **Coupons** addon is enabled, a link **Have a discount coupon?** is provided at checkout. 
![xc5_coupons_haveacoupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_haveacoupon.png)

Buyers can use this link to expand a section where they can enter their coupon code:
![xc5_coupons_haveacoupon1.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_haveacoupon1.png)

Provided that a valid coupon code is being used, the coupon will be applied to the order:
![xc5_coupons_couponapplied.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_couponapplied.png)

The result will be reflected at checkout:
![xc5_coupons_couponapplied1.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_couponapplied1.png)

If an invalid coupon code is entered (for example, if the coupon code is misspelled, expired or otherwise does not meet the coupon application conditions), the user will be informed of the problem. For example, here is the result of using an expired coupon code: 
![xc5_coupons_invalidcoupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_invalidcoupon.png)

_Related pages:_

   * {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %}  
   * {% link "Configuring Volume Discounts and Coupons in X-Cart 5" ref_6xFWK5tC %} (video)
