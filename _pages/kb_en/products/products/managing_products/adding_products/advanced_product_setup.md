---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-29 13:07 +0400'
identifier: ref_2kV8GKN7
title: Advanced Product Details
order: 110
published: true
---
Once a new product has been {% link "added" ref_fhzzxDTy %} to your store, you can edit any of its settings configured during the {% link "basic product setup" ref_2D8wAeXP %} and, if necessary, configure some advanced product settings for it as well. 

To do so, you will need to find the product in the store's Admin area (**Catalog** > **Products**) and click on the product name to access the product details. The result will be a page with all the information you have provided regarding this product so far - basically, the same page with the product information form you have completed during the basic product setup - but now this page will have tabs allowing you to access some additional sections for product configuration. 
![541-product-tabs.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs.png)

{% note info %}
The set of tabs that will be available to you will depend on your X-Cart edition and the set of addons activated in your store. 
{% endnote %}

Below is an overview of some of the popular tasks that can be accomplished by adjusting the advanced product settings via the various tabs of the product details page - with information on what X-Cart addons/features you will require:

{% toc %}

## Advanced Inventory Tracking Options for Product (Low Stock Threshold and Notifications)

Whereas it is possible to adjust some basic product inventory tracking settings via the _Prices & Inventory_ section of the Info tab of the product details, you can access still more settings via the "Inventory tracking" tab:
![541-inventory-tracking-tab.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-inventory-tracking-tab.png)

Here you see the fields **Arrival date**, **Inventory tracking** and **Quantity in stock** (the same ones as in the _Prices & Inventory_ section of the Info tab). 

In addition, here are some settings you can use to set a low stock threshold for a product and get notified whenever the product stock goes down to this level. The settings are as follows:

   * **Show low stock warning on product page**: Enable this setting if you want a warning message (like "Only X left in stock") to be displayed to customers viewing the product if the product stock reaches the low stock treshold. 
   ![541-low-stock-threshold-cus.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-low-stock-threshold-cus.png)

   To enable the warning, you will also need to specify the inventory level at which the warning  should be triggered (Use the "Low limit quantity" field further below in this section). 
       
   You can edit the text of the warning message by editing the text label "Only X left in stock" via the Language labels section (**Store setup** > **Translations**). For information on text labels and how to edit them, see {% link "Managing texts labels in your store" ref_IyGxQ1DN %}.
   
   * **Notify administrator if the stock quantity of this product goes below a certain limit**: Enable this setting to get an automated email notification when the product stock reaches the low stock treshold. You will also need to specify the inventory level at which the email notification needs to be sent (Use the "Low limit quantity" field below). 
   
   * **Low limit quantity**: Use this field to set the low stock threshold for the product (starting from this quantity, the product stock level will be considered "low"). 

## Additional Product Parameters for Product Specification

If you want to specify additional parameters (like color, material, country of origin, ISBN, etc.) for the product so they can be viewed by your store visitors on the "Specification" tab of the product page in the storefront, use X-Cart's {% link "Product classes and attributes" ref_T90ZcEpP %} feature. This feature is part of X-Cart's core and, if you just want the attributes, does not require any X-Cart addons. The attributes can be specified via the "Attributes" tab of the product page.
![541-attributes-tab.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-attributes-tab.png)

## Product Options and Product Variants

If you want to configure product options (color, size, etc.) so buyers will be able to choose the options they require before checkout, you will need to use X-Cart's {% link "Product classes and attributes" ref_T90ZcEpP %} feature. This feature helps you to configure options for the product via the "Attributes" tab of the product page. 
![541-attributes-tab.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-attributes-tab.png)

For example, you will be able to create an attribute "Size" and to specify multiple attribute values for it like "XS", "S", "M", "L" and "XL". Your customers will be able to choose these values as product options. 

If you need not just separate independent options, but product variants based on option combinations (like "Color: White + Size: XL"), you will need to use the addon {% link "Product Variants" ref_4OTLafuC %}. This addon will help you to create product variants based on combinations of options that have been configured as attribute values. The configuration of product variants will have to be done via the "Variants" tab of the product page.
![541-product-variants-tab.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-variants-tab.png)

For more info on using the addon, see {% link "Product Variants" ref_0uApuQfx %}

## Wholesale Prices and Minimum Purchase Quantities for Different Membership Levels

If you want to set different prices on the same product that would be enabled for buyers depending on the buyer membership level and the product quantity being ordered, you should use the addon [Wholesale](https://market.x-cart.com/addons/wholesale.html).

With this addon you will be able to set price tiers for different purchase quantities and different user membership levels via the "Wholesale pricing" tab of the product page.
![541-product-tabs-wholesale.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-wholesale.png)

You will also be able to set minimum product purchase quantities for different user membership levels via the "Inventory tracking" tab.

For more info on using the addon, see {% link "Wholesale addon" ref_ttZa4qgu %}. 

## Related Products

For cross-selling/upselling purposes, you may wish to create links from the current product to some other products in your store. These products will be displayed as related to the current product in the "Related products" block on the product page on the storefront and, if necessary, may be used as a source of "Customers who bought this also bought" recommendations in the Add to cart popup. 

Linking products to one another is enabled by the addon [Related Products](https://market.x-cart.com/addons/related-products.html). With this addon, you will be able to add links to related products for any product in your store via the "Related products" tab of the product page:
![541-product-tabs-related-pdcts.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-related-pdcts.png)

For more info on using the addon, see {% link "Related Products" ref_4a5rpsQq %}.

To show related products in the **Add to cart** popup, you will also need the addon [Add to Cart Popup](https://market.x-cart.com/addons/add-to-cart-popup.html).

For more info on using the addon, see {% link "Add to Cart PopUp addon" ref_1iGC8Efj %}.

## Reviews for Products

If you need to give your customers an oppurtunity to rate the products you sell and leave feedback on the products you may want to use the addon [Product Reviews](https://market.x-cart.com/addons/product-reviews.html "Advanced Product Details"). This addon allows to see and manage the reviews left for a product in the "Reviews" tab of the product page:
![541-product-tabs-reviews.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-reviews.png)

For more info on the addon, see the section {% link "Product Reviews" ref_XBriIS6B %} of this manual.

## Product Tabs Displayed on the Product Page on the Storefront

X-Cart uses the product tabs feature to present the detailed product information to the store visitors in the most suitable format. 
![541-product-tabs-cus.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-cus.png)

The basic set of tabs used on your store's product details pages is managed by the addon [Custom Product Tabs](https://market.x-cart.com/addons/custom-product-tabs.html). For more info on using the addon, see {% link "Custom Product Tabs" ref_2JzbMU2q %}. 

If it is necessary to hide any product tabs for a product in the storefront, use the "Tabs" tab of the product details page in the store Admin area:
![541-product-tabs-tabs.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-tabs.png)


## Products with PIN Codes

If you need to sell stuff like licenses, enrollment keys, PIN codes, serial numbers, activation codes and passwords, phone cards and access codes, you may want to use the addon [PIN Codes](https://market.x-cart.com/addons/pin-codes.html "PIN Codes addon"). This addon will enable you to attach PIN codes to your existing product via the "PIN codes" tab:
![541-product-tabs-pin.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-pin.png)

For more info on using the addon, see {% link "PIN Codes addon" ref_2ioJzfJL %}.

## Products with File Attachments

If you need to attach files to your product (like a product manual or a detailed description) so your store visitors will be able to download these files from the product page, you will need to use the addon [File attachments](https://market.x-cart.com/addons/file-attachments.html) and the "Attachments" tab of the product page.  
![541-product-tabs-attachments.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/541-product-tabs-attachments.png)

For more info on using the addon, see {% link "Product File Attachments" ref_0ZWKcob4 %}.

If you need to be able not just to attach files for free download by store visitors but to sell digital goods, you will also need the addon [E-goods](https://market.x-cart.com/addons/e-goods.html). For more info on using the addon, see the section {% link "E-goods" ref_ZszpDfxQ %} in this manual.

## Sell Products in Bundle

If you need to sell products in bundle to give your customers an opportunity to buy products at a special price on a set if bought together, you may want to use the addon [Bundle Products](https://market.x-cart.com/addons/bundle-products.html "Advanced Product Details"). This addon will enable you to join products in bundles via the "Bundle" tab of the product page:
![adm-product-details.png]({{site.baseurl}}/attachments/ref_2kV8GKN7/adm-product-details.png)

For more info on using the addon, see the section {% link "Bundle Products" ref_1nuTw4Kc %} of this manual.