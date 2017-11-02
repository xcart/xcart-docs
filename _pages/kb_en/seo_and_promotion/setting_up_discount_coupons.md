---
lang: en
layout: article_with_sidebar
updated_at: '2017-04-26 21:08 +0400'
identifier: ref_SGI1FqdC
title: Setting up discount coupons
categories:
  - User manual
published: true
order: 130
---


X-Cart 5 allows you to create coupons for your customers. A coupon is a secret code which a customer can use to get a discount on their order (typically, a fixed amount or a percentage off, or free shipping). It is possible to limit the use of a coupon to a specific order subtotal amount, time period, product category, product class or user membership level. If necessary, it is also possible to set the number of times that a coupon can be used.

The coupons feature in X-Cart 5 is enabled by the module **Coupons**:![]({{site.baseurl}}/attachments/6389790/8719428.png)To use the coupons feature, make sure the module is installed and enabled at your store. If the module is not installed, you can install it from the X-Cart Marketplace. For general module installation instructions, see {% link "Installing modules from the Marketplace" ref_Vn1mMUw9 %}.

When the **Coupons** module is enabled, a link **Have a discount coupon?** is provided at checkout. Buyers can use this link to expand a section where they can enter their coupon code:

![xc5_coupons_happy10.png]({{site.baseurl}}/attachments/ref_SGI1FqdC/xc5_coupons_happy10.png)

The result of applying a coupon looks similar to the following:

![]({{site.baseurl}}/attachments/6389790/8719437.png)

To create a coupon:

1.  In your store's Admin area, go to the Coupons section (**Promotions** > **Coupons**):
    ![]({{site.baseurl}}/attachments/6389790/8719429.png)
    
2.  Select to create a new coupon by clicking the **New discount coupon** button:
    ![]({{site.baseurl}}/attachments/6389790/8719430.png)
    
    A page for coupon creation opens:
    ![]({{site.baseurl}}/attachments/6389790/8719431.png)

3.  Specify the details of your discount coupon. 

    For example, we want to create a coupon to let our customers use the code **HAPPY10** to get a $10 discount on items from the Apparel category if the order subtotal amount is over $100\. The coupon should be valid from Oct 9, 2015 through Oct 13, 2015\. We want to limit the use of this coupon to no more than once and we want to forbid using this coupon in combination with any other coupons. In this case we should specify the coupon details as follows:
    ![]({{site.baseurl}}/attachments/6389790/8719432.png)

4.  Click the **Create** button at the bottom of the page. 
    ![]({{site.baseurl}}/attachments/6389790/8719434.png)

The coupon will be created and added to the list in the Coupons section:

![]({{site.baseurl}}/attachments/6389790/8719435.png)

Now your customer should be able to enter the code **HAPPY10** at checkout and get a $10 discount on an eligible order. Note that only one customer will be able to do so as this is a single use coupon.

_Related pages:_

*   {% link "Configuring volume discounts and coupons in X-Cart 5" ref_6xFWK5tC %} (video)
