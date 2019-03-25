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
X-Cart 5 allows you to create coupons for your customers. A coupon is a secret code which a customer can use to get a discount on their order (typically, a fixed amount or a percentage off, or free shipping). It is possible to limit the use of a coupon to a specific order subtotal amount, time period, product category, product class or user membership level. If necessary, it is also possible to set the number of times that a coupon can be used.

The coupons feature in X-Cart 5 is enabled by the addon **Coupons**:
![mvcoupons_addon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/mvcoupons_addon.png)

To use the coupons feature, make sure the addon is installed and enabled at your store. If the addon is not installed, you can install it from the X-Cart Marketplace. For general addon installation instructions, see {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

When the **Coupons** addon is enabled, a link **Have a discount coupon?** is provided at checkout. 
![xc5_coupons_haveacoupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_haveacoupon.png)

Buyers can use this link to expand a section where they can enter their coupon code:
![xc5_coupons_haveacoupon1.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_haveacoupon1.png)

Provided that a valid coupon code is being used, the coupon will be applied to the order:
![xc5_coupons_couponapplied.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_couponapplied.png)

The result will be reflected at checkout:
![xc5_coupons_couponapplied1.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_couponapplied1.png)

If an invalid coupon code is entered (for example, if the coupon code is misspelled, expired or otherwise does not meet the coupon application conditions), the user will be informed of the problem: For example, here's the result of using an expired coupon code: 
![xc5_coupons_invalidcoupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_invalidcoupon.png)


To create a coupon:

1.  In your store's Admin area, go to the Coupons section (**Promotions** > **Coupons**) and select to create a new coupon by clicking the **New discount coupon** button:
    ![xc5_coupons_addcoupon.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_addcoupon.png)
    
    A page for coupon creation opens:
    ![xc5_coupons_addcoupon2.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_addcoupon2.png)

2.  Specify the details of your discount coupon. 

    * **Vendor** - This field is available only in {% link "X-Cart Multivendor" ref_4ahg5FLK %}. For information on using this field, see {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %}.
    * **Code** - Code that a buyer will need to enter at checkout to get the discount.
    * **Comment** - Comment to help you identify this coupon.
    * **Enabled** - Whether the coupon is active and can be used by customers. Disable the option to deactivate the coupon.
    * **Discount type** - Type of discount provided by the coupon. Can be expressed as a fixed amount in the store currency ("$ off"), a percentage ("Percent") or a discount for the amount of the order shipping cost ("Free shipping").
    * **Discount amount** - The amount a buyer can get off their order. This field is only available with **Discount type** set to "$ off" or "Percent". 
    * **Active from** - Coupon validity period start date.
    * **Active till** - Coupon expiration date.
    * **Subtotal range (begin)** - Minimum subtotal amount (The coupon will not be applied if the subtotal is less than the amount specified here).
    * **Subtotal range (end)** - Maximum subtotal amount (The coupon will not be applied if the subtotal is more than the amount specified here).
    * **Limit the number of uses** - Leave this option disabled to allow unlimited use of the coupon. Enable to be able to specify the absolute maximum number of times this coupon can be used (**The maximum number of uses**) and/or the maximum number of times this coupon can be used per user (**The maximum number of uses per user**).
    * **Coupon cannot be combined with other coupons** - Whether the coupon can be combined with other coupons.
    * **Categories** - Category/-ies to which the coupon should be applied.
    * **Product classes** - Product class(es) to which the coupon should be applied. 
    * **Memberships** - Membership level(s) allowed to use the coupon.
    
    ![xc5_coupons_addcoupon3.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_addcoupon3.png)

3.  Click the **Create** button at the bottom of the page. 
    ![]({{site.baseurl}}/attachments/6389790/8719434.png)

The coupon will be created and added to the list in the Coupons section:
![xc5_coupons_addcoupon4.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_addcoupon4.png)


Now your customer should be able to enter the code **HAPPY10** at checkout and get a 10% discount on an eligible order. 


_Related pages:_

   * {% link "Coupons: Usage with Multivendor" ref_2HGKKzgD %}  
   * {% link "Configuring Volume Discounts and Coupons in X-Cart 5" ref_6xFWK5tC %} (video)
