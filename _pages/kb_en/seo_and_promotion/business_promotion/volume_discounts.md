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

X-Cart 5 allows you to configure volume discounts. A volume discount may be expressed as a fixed amount or a percentage off the order subtotal amount. Unlike {% link "coupon discounts" ref_SGI1FqdC %}, volume discounts do not require your customers to enter any kind of secret code: a volume discount is applied automatically to any order that meets certain requirements. You define what these requirements should be. For example, you may create a discount that will be applied to orders with a subtotal amount equal to or greater than a certain amount, or will be applied to orders placed by users of a specific membership level.

When a volume discount is applied, the cart and checkout pages will show the discount amount on a separate line:
![xc5_volumedisounts_discount_in_customer.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_discount_in_customer.png)

For purchases with a subtotal amount below the level needed to get a discount, a message like the following will be displayed:
![xc5_volumedisounts_get_discount_msg.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_get_discount_msg.png)

The volume discounts feature in X-Cart 5 is enabled by the addon **Volume Discounts**:
![volume_discounts_addon.png]({{site.baseurl}}/attachments/ref_xEadpu9F/volume_discounts_addon.png)

To use the volume discounts feature, make sure the addon is installed and enabled at your store. If the addon is not installed, you can install it from the X-Cart App Store. For general addon installation instructions, see {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

To configure a volume discount:

1.  In your store's Admin area, go to the Volume discounts section (**Promotions** > **Volume discounts**) and click **Add discount**:
    ![xc5_volumedisounts_add_discount.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_add_discount.png)
    
    A section for adding a new discount will be displayed:
    ![xc5_volumedisounts_add_discount1.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_add_discount1.png)
    
2.  Specify the parameters of the volume discount you require.
    
    * **Subtotal** - Order subtotal amount starting from which the discount should be available. For example, if you set this to "100" (USD), the discount will be available for orders with a subtotal amount equal to or more than $100.
    * **Discount** - Discount amount. May be set as a fixed amount or as a percentage.
    * **Membership** - Membership level to which the discount should be available.
    * **Vendor** - This field is available only in {% link "X-Cart Multivendor" ref_4ahg5FLK %}. For information on using this field, see {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}.
    
    For example, to configure a 10% discount for all customers (regardless of their membership level) on all orders with a subtotal of $100 or more, we would need need to set the discount parameters as follows:
    ![xc5_volumedisounts_add_discount2.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_add_discount2.png)
    
3.  Once you are done, click the **Save changes** button.
    ![xc5_volumedisounts_add_discount3.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_add_discount3.png)

The discount will be added:
![xc5_volumedisounts_add_discount4.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_add_discount4.png)

If necessary, you can add more than one discounts for the different subtotal ranges and membership levels. For example, with a setup like in the screenshot below:
   * a $3 discount will be provided on orders with a subtotal amount of $50 or more (available to all customers);
   * a 10% discount will be provided on orders with a subtotal amount of $100 or more (available to all customers);
   *  a 20% discount will be provided on orders with a subtotal amount of $500 or more (available only to customers with the membership level "Wholesaler").
![xc5_volumedisounts_add_discount5.png]({{site.baseurl}}/attachments/ref_xEadpu9F/xc5_volumedisounts_add_discount5.png)

Note that volume discounts do not sum up: if a customer's order meets more than one volume discount conditions, they will still get only one discount (the largest of the ones available to them). For example, with volume discounts configured like in the screenshot above, a customer without a membership level who places an order for $100 or more will get the 10% off discount (but not the $3 discount).

_Related pages:_

   * {% link "Volume Discounts: Usage with Multivendor" ref_117NpIm9 %}
   * {% link "Configuring Volume Discounts and Coupons in X-Cart 5" ref_6xFWK5tC %} (video)
