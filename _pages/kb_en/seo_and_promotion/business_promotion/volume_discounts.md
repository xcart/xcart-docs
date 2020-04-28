---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 13:20 +0400'
identifier: ref_xEadpu9F
title: 'Volume Discounts '
categories:
  - User manual
published: true
order: 200
redirect_from:
  - /seo_and_promotion/setting_up_volume_discounts_for_products.html
---

X-Cart 5 allows configuring volume discounts either as a fixed amount or as a percentage off the order subtotal amount. Unlike {% link "coupon discounts" ref_SGI1FqdC %}, volume discounts do not require your customers to enter any kind of secret code: a volume discount is applied automatically to any order that meets certain conditions defined by a store administrator. Volume discounts can apply to orders with a subtotal amount equal to or greater than a certain amount, or to orders placed by users of a specific membership level.

When a volume discount is applied, the cart and checkout pages will show the discount amount on a separate line:
![541-cus-cart-discount-added.png]({{site.baseurl}}/attachments/ref_xEadpu9F/541-cus-cart-discount-added.png)

For purchases with a subtotal amount below the level needed to get a discount, a message like the following will be displayed:
![541-cus-cart-discount-offer.png]({{site.baseurl}}/attachments/ref_xEadpu9F/541-cus-cart-discount-offer.png)

The volume discounts feature in X-Cart 5 is enabled by the addon **Volume Discounts**:
![volume_discounts_addon.png]({{site.baseurl}}/attachments/ref_xEadpu9F/volume_discounts_addon.png)

To use the volume discounts feature, make sure the addon is installed and enabled at your store. If the addon is not installed, you can install it from the X-Cart App Store. For general addon installation instructions, see {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

To configure a volume discount:

1.  In your store's Admin area, go to the Volume discounts section (**Discounts** > **Volume discounts**) and click **Add discount**:
    ![541-add-discount-button.png]({{site.baseurl}}/attachments/ref_xEadpu9F/541-add-discount-button.png)
    
2.  Specify the parameters you require on the discount details screen that opens:
    ![541-discount-details-page.png]({{site.baseurl}}/attachments/ref_xEadpu9F/541-discount-details-page.png)
    
    * **Discount type** : Select between fixed amount and percentage.
    * * **Discount amount** : Set the discount amount accordingly.
    * **Active from** : Set the discount validity period start date. (Optional)
    * **Active till** : Set the discount expiration date. (Optional)
    * **Subtotal** : An order subtotal amount starting from which the discount should apply. For example, if you set this to "100" (USD), the discount will be available for orders with a subtotal amount equal to or more than $100.
    * **Membership** : Set the membership level to which the discount should be available.
    * **Zones** : Select address zones the discount should be available to.
    * **Vendor** : This field is available only in {% link "X-Cart Multivendor" ref_4ahg5FLK %}. For information on using this field, see {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}.
    
3.  Once you are done, click **Create**.
    The discount will be added to the list:
    ![541-discount-listing.png]({{site.baseurl}}/attachments/ref_xEadpu9F/541-discount-listing.png)

If necessary, you can add more than one discount differentiated by subtotal ranges and membership levels. 

{% note info %}
Volume discounts do not sum up: if a customer's order meets more than one volume discount conditions, they will still get only one discount (the largest of the ones available to them). 

For example, with volume discounts configured like in the screenshot above, a customer without a membership level who places an order for $100 or more will get the 10% off discount (but not the $3 discount).
{% endnote %}

_Related pages:_

   * {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}
   * {% link "Configuring Volume Discounts and Coupons in X-Cart 5" ref_6xFWK5tC %} (video)
