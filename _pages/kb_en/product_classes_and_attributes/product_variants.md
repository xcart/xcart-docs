---
lang: en
layout: article_with_sidebar
updated_at: '2017-01-29 01:30 +0400'
identifier: ref_0uApuQfx
title: Product Variants
version: X-Cart with Product variants module
categories:
  - User manual
published: true
order: 800
---
The _attributes_ feature of X-Cart 5 is extended by the **Product variants** addon allowing you to create _product variants_ with individual SKUs, prices and stock levels.

For a detailed explanation of what product variants are, see: 

*   [What Are Product Variants and Why You May Need Them](#what-are-product-variants-and-why-you-may-need-them)

For information on how to configure product variants in your store, see:

*   [Managing Product Variants](#managing-product-variants)
*   [Wholesale Prices for Product Variants](#wholesale-prices-for-product-variants)
*   {% link "Color Swatches for Product Variants" ref_4bXaF5qJ %}
*   {% link "Variants Table View" ref_7FeW8hHv %}

## Video Tutorial

{% link "Product Variants in X-Cart 5" ref_PCmycghn %}

## What Are Product Variants and Why You May Need Them

Let us use a simple example to show what product variants are and why you may need to use them.

For instance, we have some plates with kitty print that we want to sell at our store. The plates are exactly the same, but the kitty print comes in different colors and patterns. First, we have plates with blue, mint and orange kitties in solid color:

{:.ui.compact.celled.small.padded.table}
| ![]({{site.baseurl}}/attachments/7504786/7602414.png) | ![]({{site.baseurl}}/attachments/7504786/7602617.png) |![]({{site.baseurl}}/attachments/7504786/7602417.png)|


Second, we also have plates with blue and mint kitties that come in a dotted pattern, but we don't have plates with an orange dotted kitty:

{:.ui.compact.celled.small.padded.table}
|![]({{site.baseurl}}/attachments/7504786/7602416.png)|![]({{site.baseurl}}/attachments/7504786/7602618.png)|![]({{site.baseurl}}/attachments/7504786/7602628.png)|

We want the plates of each type to be sold separately, and we need to add them to our store's catalog in such a way that customers should be able to choose the color and pattern of the kitty on the plate. We want to set the price of solid color kitty plates at $12 per unit, and the price of dotted kitty plates at $12.50 per unit. 

The most evident solution for us in this case would be to set up a separate product page for each type of the plates - with blue, mint, orange, blue dotted and mint dotted kitties - so that each plate style will have its own product name, SKU, price, stock level and so on. While this solution is totally workable, the one area where it falls short is that while a customer is on the page for one specific plate style, there is no way for them to know that we have similar plates with the same print in other colors and patterns. We wouldn't have this problem if we had all the colors and patterns up front on the same page. Well, we _could_ add links to the other plate styles in the product description, but this would mean having to maintain five different product descriptions... not nice.

Luckily, X-Cart provides a solution that allows us to add the plates to the catalog as a single product and allow our customers to select the color and pattern of the kitty print as product options. This is possible by using the_ attributes_ feature. So, we create a product "Kitty Print Melamine Plate, 12 inch", set its price at $12 and configure the attributes for this product as follows:

![]({{site.baseurl}}/attachments/7504786/8719361.png)

Now we have the Blue, Mint and Orange options for the attribute "Kitty print color" and the Dotted and Plain options for the attribute "Kitty print pattern". The price difference between the dotted and plain kitty plates is achieved by using the "+0.5" price modifier for the dotted pattern. On the storefront, the product appears like so:

![]({{site.baseurl}}/attachments/7504786/7602630.png)

At a first glance, this approach seems better because now customers can see all the plate styles on one page, and we still have the different prices for the dotted and plain patterns ($12.50 and $12.00, respectively - exactly as we wanted). However, if we consider this setup more closely, we'll notice some major flaws:

1.  There is no way to stop buyers from selecting the "Orange + Dotted" combination which we do not carry.
2.  There is no way to track the inventory levels for the different plate styles separately. It would not be a problem if we made the plates ourselves - in this case, if we received an order for a plate style that was out of stock, we would simply make a new plate in the required color and pattern. But we're just a retailer, and when we get an order, we have to make do with whatever quantities of individual plate styles we have on hand. 

This is exactly the situaion where X-Cart's _product variants_ feature may come in handy. Product variants are specific variations of a product that use a common product name, description and most of the other product properties, but each have their own SKU, stock level and price. In our example, these would be the individual plate styles:

*   Blue + Plain,
*   Mint + Plain,
*   Orange + Plain,
*   Mint + Dotted,
*   Blue + Dotted,
*   Orange + Dotted (the unavailable combination).

If we configure the above option combinations as product variants for the product  "Kitty Print Melamine Plate, 12 inch", our buyers will still be able to select the color and pattern of the kitty print as product options, but this time we won't need to worry about them selecting an unavailable option combination: first, you will be able to remove the variant "Orange + Dotted" as unavailable from the beginning; second, if any of the other variants goes out of stock, the store will automatically disable the respective option combination so that buyers will not be able to select it. 

![]({{site.baseurl}}/attachments/7504786/7602670.png)

## Managing Product Variants

To use product variants in your store, you will need to install the addon **Product variants** by X-Cart team. For installation instructions, see {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

As a result, you should have the addon **Product variants** listed in your store's Installed Addons section (**My addons**). Make sure it is enabled:

![]({{site.baseurl}}/attachments/7504786/8719378.png)

{% note info %}
Please be aware that product variants will override [price and weight modifiers](https://kb.x-cart.com/product_classes_and_attributes/managing_attribute_values.html#price-and-weight-modifiers "Product variants") if they have been set up. You cannot use both at the same time.
{% endnote %}

To configure product variants for a product:

1.  In your store's Admin area, go to the details of the product for which you want to add product variants:
    ![]({{site.baseurl}}/attachments/7504786/8719362.png)

2.  Check the contents of the **SKU** and **Price** fields on the **Product info** tab and of the **Quantity in stock** field on the **Inventory tracking** tab. These fields do not have to be completed, especially if you are going to set these values differently for each of the specific product variants you will create (You will have an opportunity to do it later on). However, if you are planning that some of these values will be the same for more than one product variant, you can specify them here, and they will be used as default values for any product variants that do not have their own variant-specific SKU, Price or Quantity in stock values defined.

3.  Click on the **Attributes** tab to access the section where you will be able to edit the product's attributes: 
    ![]({{site.baseurl}}/attachments/7504786/8719363.png)

4.  On the page that opens, add the {% link "multi-value product attributes" ref_bTfJ9bTS#multi-value-attributes-product-options %} whose values will be combined to create specific product variants. For the sake of example, we added two attributes - "Kitty print color" and "Kitty print pattern" - with their respective values "Blue", "Mint", "Orange", "Dotted" and "Plain":
    ![]({{site.baseurl}}/attachments/7504786/8719364.png)
    (We configured our attribute values using the _Plain field_ option; to emphasize the presence or absence of some property or feature, use the _Yes/No_ field type).
    Do not worry about setting any price modifiers - you will not need them as prices will be set individually for each product variant.

5.  Click on the **Variants** tab to access the section where you will be able to manage the product's variants:
    ![]({{site.baseurl}}/attachments/7504786/8719365.png)

6.  On the page that opens, you will see the list of all multi-value attributes - and their respective values - that have been configured for the product.
    ![]({{site.baseurl}}/attachments/7504786/8719367.png) 
    Specify the attributes whose values will be used to form product variants by selecting the check boxes to the left of the attribute names. For our example, we selected both the "Kitty print color" and "Kitty print pattern" attributes:

    ![]({{site.baseurl}}/attachments/7504786/8719368.png)

7.  Choose how you want to create variants: manually or automatially. For manual setup of product variants, click **Add variants manually**. To let X-Cart generate product variants for you automatically, click Create all possible variants (N) (The number in brackets shows the number of product variants that X-Cart will create).
    We recommend using the manual method if you need to create just a couple of variants. If you need to create a larger number of variants, it will be easier to use the automated generation method; in this case, your X-Cart store will create all possible combinations of the product options, and you will need to disable any combinations that you do not stock.

8.  If you have chosen to let X-Cart to generate variants for you, the next page will look similar to the following:
    ![]({{site.baseurl}}/attachments/7504786/8719369.png)
    Here you can see a list of six product variants that X-Cart was able to create by combining the options for the "Kitty print color" and "Kitty print pattern" attributes. Each line is a separate product variant for which we can set its own price, SKU and quantity in stock.

    If some of the product variants that were generated automatically do not exist in real life, remove them using one of the following methods:

    *   Click the **Trash** icon next to the product variant that needs to be removed and click **Save changes**:
        ![]({{site.baseurl}}/attachments/7504786/8719370.png)
    *   Select the variants that need to be removed, choose the _Delete selected_ action from from the **More actions for selected** menu, then confirm the action:
        ![]({{site.baseurl}}/attachments/7504786/8719371.png)You can upload an image for each of  the variants. To set the prices, SKUs and quantities, simply specify them in the respective fields. You only need to specify values that do not equal the default ones. 
    To specify the default variant, select the radio button for this variant in the second column.
    ![]({{site.baseurl}}/attachments/7504786/8719374.png)
    Be sure to save your changes by clicking **Save changes**.

9.  If you have chosen to create product variants manually, the next page will look similar to the following:
    ![]({{site.baseurl}}/attachments/7504786/8719375.png)
    Here you can add variants one by one using the **Add variant** button. Click **Add variant**. A section for configuring your first product variant will be expanded below:
    ![]({{site.baseurl}}/attachments/7504786/8719376.png)
    Adjust all the fields in this section as you require and click **Save changes**:
    ![]({{site.baseurl}}/attachments/7504786/8719377.png)
    The variant will be added. Add the rest of the variants you require using the same method.

{% note info %}
You can use the Create all possible variants (N) link at any time to generate the missing product variants. Don't worry, this will not ruin the variants you have already configured.
{% endnote %}

## Wholesale Prices for Product Variants

There are 2 ways to configure wholesale prices for product variants:

1. Depending on the main product price

   In case you set up product variants the way that they don't have a variant dependent price but all have the same price as the main product, wholesale prices can be defined in the _Wholesale pricing_ tab on the product details page. The wholesale prices will be the same for all the variants.
   
   ![wholesale-product.png]({{site.baseurl}}/attachments/ref_0uApuQfx/wholesale-product.png)

   {% note info %}
   If you set a wholesale price in %, please, do mind that here you set not a % discount on a product, but a price in % from the price of the main product.
   {% endnote %}
    
   To set a wholesale price click the **New tier** button, specify the quantity range in the field that opens, set a price in $ or % for the quantity you speified and choose the membership if applicable. Save the changes when done.

2. Depending on each product variant price
   
   In case you set up product variants to have prices different from the price of the main product, the wholesale prices are defined in the _Variants_ tab on the product details page next to the product variant price. 
   
   ![wholesale-variant.png]({{site.baseurl}}/attachments/ref_0uApuQfx/wholesale-variant.png)
   
   You'll need to configure wholesale prices for each variant with a price different from a default one. For this click a button next to the variant price field and set the wholesale prices on a new page that will open. There you'll need to click the **New tier** button, specify the quantity range in the field that opens, set a price in $ or % for the quantity you speified and choose the membership if applicable. Save the changes when done.

   ![wholesale-per-variant.png]({{site.baseurl}}/attachments/ref_0uApuQfx/wholesale-per-variant.png)
   
Once set up the wholesale prices will become available in the store front-end
   ![customer.png]({{site.baseurl}}/attachments/ref_0uApuQfx/customer.png)

If product variants are configured depending on the main product price, the prices will be the same for all variants. If they are configured depending on each product variant price, the price will differ for each variant a buyer views.

_Related pages:_

*   {% link "Product Classes and Attributes" ref_T90ZcEpP %}
*   {% link "Managing Attribute Values" ref_bTfJ9bTS %}
*   {% link "Color Swatches" ref_4bXaF5qJ %}
*   {% link "Variants Table View" ref_7FeW8hHv %}
