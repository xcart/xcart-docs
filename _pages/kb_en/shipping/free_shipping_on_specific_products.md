---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-13 13:30 +0400'
identifier: ref_IU9J0uuT
title: 'Free shipping on specific products '
order: 145
published: true
---
With the module **Free shipping and Shipping freights** by X-Cart team (available in X-Cart Business, Multivendor, Ultimate editions), it is possible to configure free shipping on specific products. 
   ![module.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/module.png)
   

The module enables you to set the following shipping options for the products:
  * **Shipping freight** : a product is shipped at a fixed cost
  * **Free shipping** : a product is shipped for free if all the products in the shopping cart are either eligible for free shipping or excluded from shipping calculation
  * **Exclude from shipping cost calculation** : a product shipping fee will always be excluded from the order total
  
  ![product_shipping.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/product_shipping.png)

These shipping settings are unconditional, which means that so far you cannot configure any special offers with them. Store admin can choose what shipping method to use for the products with the free shipping enabled. 

To define whether the shipping cost for products with a defined shipping freight value should be calculated as shipping freight only or whether the shipping freight for such products should be added to the regular shipping rate set the preferred value on the module settings page.

   ![settings.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/settings.png)

To set special shipping conditions on a specific product, use the following method:

   1.  In your store's back end, locate the product for which you want to set free shipping.
   
   2.  Click through to edit the details of this product . On the **Info** tab of the product details, locate the **Shipping** section and choose the option you need: _freght_, _free shipping_ or _exclude from shipping cost calculation_.
     (These options are available only for tangible goods; i.e. the property **Requires shipping** / **Shippable** must be set to "Yes" for the settings to be visible).

   3.  Use the **Update product** button at the bottom of the screen to save the changes. 

Below are some usecases of the special shipping conditions:

You have 3 items:

  * Item 1 - no special shipping conditions 
  * Item 2 - "free shipping" option enabled
  * Item 3 - "exclude from shipping cost calculation” option enabled (or both “Exclude from shipping cost calculation” and “Free shipping” options enabled)

You have 2 rates:
  * Standard Shipping: flat rate $5
  * Express Shipping: flat rate $10

Example 1.

A customer adds Item 1 and Item 3 to cart and proceeds to checkout. Both Standard ($5) and Express ($10) shipping will be avalable. The customer can choose between them and pays for Item 1 shipping only.

Example 2.

A customer adds Item 1 and Item 2 to cart and proceeds to checkout. Both Standard ($5) and Express ($10) shipping will be avalable. The customer can choose between them and pays for both Item 1 and Item 2 shipping.

Example 3.

A customer adds two Items 2 to cart and proceeds to checkout. In addition to Standard ($5) and Express ($10) shipping the cart will show a special Free ($0) shipping method. Though a free method is also available on checkout now, customer may prefer not to use it, if e.g. a faster delivery is needed. If any shipping method other than Free shipping is chosen a customer will have to pay for shipping of all the items in the cart.

Example 4.

A customer adds two Items 3 to cart and proceeds to checkout. Both Standard ($0) and Express ($0) shipping will be avalable. The customer can choose between them and have both items shipped for free.

Example 5.

A customer adds Item 2 and Item 3 to cart and proceeds to checkout. In addition to Standard ($5) and Express ($10) shipping the cart will show a special Free ($0) shipping method. A customer may choose either free shipping and pay nothing or any of the paid methods and pay only for shipping of Item 2.

## "Free shipping" method
For the case when a customer's shopping cart contains only products with free shipping or products with free shipping and products excluded from shipping cost calculation the module provides a special method "Free shipping" 
![xc5_freeshipping_specialfreeshipmethod.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/xc5_freeshipping_specialfreeshipmethod.png)

If necessary, you can edit the name and description of this method. To do so, click on the method name and adjust the information you require.

_Related pages:_

   * {% link "Free shipping on orders that meet certain conditions" ref_T9GhEfev %}
