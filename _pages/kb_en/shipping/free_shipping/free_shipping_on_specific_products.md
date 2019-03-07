---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-13 13:30 +0400'
identifier: ref_IU9J0uuT
title: 'Free Shipping on Specific Products '
order: 145
published: true
redirect_from:
  - /shipping/free_shipping_on_specific_products.html
---
Free shipping on specific products can be configured using the addon {% link "Free shipping and Shipping freights" ref_4Bfeegp9 %} by X-Cart team. 

## Setting up Free Shipping for a Product
When this addon is active, two settings for free shipping are provided in the "Shipping" section of the Info tab of a product details page in the store back end (The product property **Requires shipping** must be set to "Yes" for the settings to be visible):

  * **Free shipping** : The product is shipped for free if all the products in the shopping cart are either eligible for free shipping or excluded from shipping calculation.
  * **Exclude from shipping cost calculation** : The product shipping fee will always be excluded from the order total.  
  ![product_shipping.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/product_shipping.png)

These settings are unconditional, which means that you cannot configure any special offers with them.

To provide free shipping for a product, you will need to properly adjust these settings. Below you will find some use cases explaining how these settings will affect the calculation of shipping cost for the product and the set of shipping methods that will be offered to the buyers who choose to order this product. 

Imagine that you have three products in your store:

  * Product 1: No special shipping conditions; 
  * Product 2: "Free shipping" option enabled;
  * Product 3: "Exclude from shipping cost calculation” option enabled (or both “Exclude from shipping cost calculation” and “Free shipping” options enabled).

You also have two shipping methods:
  * Standard Shipping: flat rate $5;
  * Express Shipping: flat rate $10.

Example 1.

A customer adds Product 1 and Product 3 to the shopping cart and proceeds to checkout. Both Standard ($5) and Express ($10) shipping methods will be avalable. The customer will be able to choose any of them and, in any case, will pay only for the shipping of Product 1.

Example 2.

A customer adds Poduct 1 and Product 2 to the shopping cart and proceeds to checkout. Both Standard ($5) and Express ($10) shipping methods will be avalable. The customer will be able to choose any of them and will have to pay for the shipping of both Product 1 and Product 2.

Example 3.

A customer adds two units of Product 2 to the shopping cart and proceeds to checkout. In addition to Standard ($5) and Express ($10) shipping, the cart will now show a special Free ($0) shipping method. Although a free method is available at checkout now, the customer may prefer not to use it (for example, if a faster delivery is needed). If any shipping method other than Free shipping is chosen, the customer will have to pay for the shipping of all the items in the cart.

Example 4.

A customer adds two units of Product 3 to the shopping cart and proceeds to checkout. Both Standard ($0) and Express ($0) shipping will be avalable. The customer will be able to choose any of them and, in any case, will have both the items shipped for free.

Example 5.

A customer adds Product 2 and Product 3 to cart and proceeds to checkout. In addition to Standard ($5) and Express ($10) shipping, the cart will now show a special Free ($0) shipping method. The customer will be able to choose either free shipping (and pay nothing) or any of the paid shipping methods and pay only for the shipping of Product 2.

## The "Free Shipping" Method
For the case when a customer's shopping cart contains only products with free shipping or products with free shipping and products excluded from shipping cost calculation the module provides a special method "Free shipping" 
![xc5_freeshipping_specialfreeshipmethod.png]({{site.baseurl}}/attachments/ref_IU9J0uuT/xc5_freeshipping_specialfreeshipmethod.png)

If necessary, you can edit the name and description of this method. To do so, click on the method name and adjust the information you require.

_Related pages:_

   * {% link "Free Shipping on Orders That Meet Certain Conditions" ref_T9GhEfev %}
