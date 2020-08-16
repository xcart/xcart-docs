---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-26 16:45 +0400'
identifier: ref_4Bfeegp9
title: Free Shipping and Shipping Freights
order: 120
published: true
---
With the addon **Free shipping and Shipping freights** by X-Cart team it is possible to set a shipping freight and to configure free shipping on specific products. 
   ![541-shipping-freight-addon.png]({{site.baseurl}}/attachments/ref_4Bfeegp9/541-shipping-freight-addon.png)
   
The addon provides a few shipping related settings that can be adjusted for products that require shipping (You can find them in the "Shipping" section of the Info tab of a product's details): **Shipping freight**,  **Free shipping** and **Exclude from shipping cost calculation**.
  ![541-shipping-freight.png]({{site.baseurl}}/attachments/ref_4Bfeegp9/541-shipping-freight.png)

The addon settings page allows to specify whether the shipping cost for products with a defined shipping freight value should be calculated as shipping freight only or whether the shipping freight for such products should be added to the regular shipping rate.
   ![541-shipping-freight-settings.png]({{site.baseurl}}/attachments/ref_4Bfeegp9/541-shipping-freight-settings.png)
   
   * If the setting has the value of "shipping freight + regular fee", shipping costs are calculated as a sum of a regular shipping fee plus all additional freight values of the products with the constant shipping freights from this order. This rule applies even if an order includes only the products with the defined shipping freight property.
   
   * If the setting has the value of "shipping freight only", shipping costs are calculated as a sum of all freight values of the products with the constant shipping freights from this order. 
   
   To understand the rules better, let's consider the following sample.
   
   We have:
   1. Product_A with a defined shipping freight of $10;
   2. Product_B with a defined shipping freignt of $20;
   3. Product_C without a defined shipping freight value;
   4. A regular delivery option at $12 per order.
   
   If the **Shipping cost for products with a defined shipping freight value should be calculated as** setting is set to "shipping freight + regular fee":
   * The total shipping cost for an order containing Product_A + Product_B + Product_C will be $42 ($10 freight + $20 freight + $12 regular delivery fee);
   * The total shipping cost for an order containing Product_A + Product_B will be also $42 ($10 freight + $20 freight + $12 regular delivery fee);
   * The total shipping cost for an order containing the Product_C only will be $12 (the regular delivery fee).
   
   If the **Shipping cost for products with a defined shipping freight value should be calculated as** setting is set to "shipping freight only":
   * The total shipping cost for an order containing Product_A + Product_B + Product_C will be $42 ($10 freight + $20 freight + $12 regular delivery fee);
   * The total shipping cost for an order containing Product_A + Product_B will be $30 ($10 freight + $20 freight);
   * The total shipping cost for an order containing the Product_C only will be $12 (the regular delivery fee).

For information on how to set a fixed shipping fee for specific products, see {% link "Shipping Freight" ref_kioKBJIM %}.

For information on how to set free shipping on specific products and control the shipping methods with which such products should be shipped, see {% link "Free Shipping on Specific Products" ref_IU9J0uuT %}.


_Related pages:_

   * {% link "Addons" ref_mCs9Q9Uy %}
   * {% link "Free Shipping on Specific Products " ref_IU9J0uuT %}
   * {% link "Shipping Freight" ref_kioKBJIM %}
