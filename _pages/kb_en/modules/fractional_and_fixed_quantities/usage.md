---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-28 15:35 +0400'
identifier: ref_FnFqUsage
title: Using the Addon "Fractional and Fixed Quantities"
order: 40
version: X-Cart 5.2.16 and earlier
keywords:
  - Fractional and fixed quantities
categories:
  - User manual
  - Module
published: true
---

This section explains how to:

*   [Allow decimal quantities](#allow-decimal-quantities)
*   [Set up quantity units for a product](#set-up-quantity-units-for-a-product)
*   [Set up allowed quantities for adding to cart](#set-up-allowed-quantities-for-adding-to-cart)

## Allow decimal quantities

If you sell products by length, by weight or by volume, and are willing to divide a whole product unit into portions if a buyer wants to purchase a non-whole quantity of product units, you should allow buyers to specify decimal product quantities. To do so, follow the steps below:

1.  In your store's back end, go to the details page of the product for which you need to allow decimal quantities. 
2.  On the "Info" tab of the product details page, use the **Length of** **fractional part of quantity** setting to specify the maximum number of digits after the decimal separator that you want to allow your buyers to enter when specifying the product quantity.
    ![]({{site.baseurl}}/attachments/9666753/9634074.png)
    By default, this field is set to "0" (zero). Acceptable values are 0 to 4\. With the length of the fractional part of quantity set to "0", buyers will be allowed to specify product quantities as whole numbers only. With the length of the fractional part of quantity set to a number from 1 to 4, buyers will be able to enter decimal product quantities. For example, if the value of this field is "2", it is possible to specify quantities like 1, 1.15, 1.5, 5.99, 10.99 or 0.01.

3.  Click **Update product** to save the changes.

## Set quantity units for a product

With the addon "Fractional and Fixed quantities", each product can be adjusted to use its own quantity units.

For example, if you sell fabric, you can specify whether you are selling it by the meter, by the yard, by the bolt, or any other unit of measurement you wish to use.

To add a new quantity unit:

1.  In your store's back end, go to the details page of the product for which you need to add a quantity unit. 
2.  On the "Info" tab of the product details page, scroll down to the **Quantity units** section and click the **Add quantity unit** button.
    ![]({{site.baseurl}}/attachments/9666753/9634248.png)
    Below the button, a section for setting up quantity units will be expanded:
    ![]({{site.baseurl}}/attachments/9666753/9634250.png)
3.  In the section that has appeared, add the quantity unit you require. 
    To add a quantity unit:
    1.  In the field on the right, specify the quantity unit name (For example, "bolt" or "yard" or "meter"). 
    2.  In the field on the left, specify an appropriate multiplier. A multiplier is a number showing how many copies of regular X-Cart quantity units need to be added together to make the custom quantity unit you are defining. 
4.  Click the **Update product** button at the bottom of the screen to save your changes.
    ![]({{site.baseurl}}/attachments/9666753/9634509.png)

For example, the product you are editing is a fabric whose quantity in stock is tracked in yards. If you intend to sell this product by the yard, all you need to do is specify the quantity unit name as "yard" and the multiplier as "1":
![]({{site.baseurl}}/attachments/9666753/9634508.png)
However, if you wish to sell this product by the bolt, you will need to provide X-Cart with information as to how many yards of the fabric are there in one bolt. For example, if one bolt is 15 yards, you will need to set the quantity unit name as "bolt" and the multiplier as "15":
![]({{site.baseurl}}/attachments/9666753/9634525.png)
It is possible to add more than one quantity units for the same product (Click the **Add quantity unit** button to add more blank lines). In this case, the product will have alternative quantity units, and your customers will be able to choose which quantity units they wish to use. For example, you may set quantity units for a product like so:

*   _Multiplier:_ 1 – _Quantity unit name:_ yard
*   _Multiplier: _1 – _Quantity unit name:_ bolt

![]({{site.baseurl}}/attachments/9666753/9634526.png)
In this case, your customers will be able to purchase the product either by the yard or by the bolt.

If necessary, the multiplier can be set to a number less than 1 or a number with a fractional part. For example, if you track the inventory of some product by the yard and wish to sell this product by the yard and by the meter, you will need to set your quantity units like so:

*   _Multiplier:_ 1 – _Quantity unit name:_ yard
*   _Multiplier: _0.91 – _Quantity unit name: _meter
    (1 yard is 0.9144 meters; a multiplier can use a maximum of two digits to the right of the decimal separator, so 0.9144 turns into 0.91)

![]({{site.baseurl}}/attachments/9666753/9634527.png)
**Important**: No matter what custom quantity units you configure, the inventory of your products will always be tracked using X-Cart's basic unnamed quantity units, not the custom units you configure. 
For example, you sell bottled wine, and you have configured for it a quantity unit named "box" so you can sell it in boxes of 20:

*   _Multiplier_: 20 – _Quantity unit name_: box

If someone buys two boxes of this wine, the order invoice will show that they have ordered two boxes; however, for you, the product owner, the product inventory will simply be reduced by 40 units. A box here is just a package of 20 bottles, and its price equals the price of 20 individual bottles of wine sold together. If you wish to treat a box of wine as an independent product - with its own specific price (for example, cheaper than the price of 20 bottles of wine sold together) and with its own inventory trackable separately, then the addon **Fractional and Fixed quantities** may not be the right choice for you; in this case, we advise you consider the addon {% link "Product variants" ref_0uApuQfx %}.

## Set up allowed quantities for adding to cart

The addon "Fractional and Fixed quantities" can be used to set allowed product quantities for adding to the shopping cart. This feature may be helpful, for example, if your product is sold in packs, and you expect that your customers may find it more convenient to know the number of units in each pack and buy the product in whole packs, accordingly. 

To set allowed quantities for a product, follow the steps below:

1.  In your store's back end, go to the details page of the product for which you need to set allowed quantities. 

2.  On the "Info" tab of the product details page, scroll down to the **Allowed quantities** section and click the **Add quantity** button:
    ![]({{site.baseurl}}/attachments/9666753/9634615.png)

    Below the button, a section for setting up allowed quantities will be expanded:

    ![]({{site.baseurl}}/attachments/9666753/9634617.png)

3.  In the section that has appeared, add the allowed quantity you require. If necessary, it is possible to add more than one allowed quantity (Click the **Add quantity** button to add more blank lines). 
4.  Click the **Update product** button at the bottom of the screen to save your changes.

For example, you sell bottled water which comes in packs of 6, and you want to allow shoppers to add this product to the shopping cart by the bottle or by the pack. In this case, you can set allowed quantities like so:

![]({{site.baseurl}}/attachments/9666753/9634619.png)

On the storefront, it will look as follows:

![]({{site.baseurl}}/attachments/9666753/9634620.png)

Allowed quantities are compatible with custom product quantity units. If you have defined custom product quantity units for a product, you can specify product quantity units for each of the allowed quantities you choose to define, or make your allowed quantities available for all product units. 
In the example with bottled water, if you set a custom product quantity unit "bottle" and use this unit in the configuration of allowed quantities like so:

 ![]({{site.baseurl}}/attachments/9666753/9634622.png)

the allowed quantities will show on the storefront along with your custom defined product quantity unit "bottle" as follows:

 ![]({{site.baseurl}}/attachments/9666753/9634623.png)

**Important**: The allowed quantities feature cannot be used to limit the number of product units that can be purchased by a customer. All it can do is limit the size of the portions or packs in which the product will be added to the shopping cart from the product page. If a buyer wishes to purchase a different quantity of the product, they will be able to do so by clicking the **Add to cart** button more than once or editing the quantity of the product in the shopping cart directly on the cart page.
