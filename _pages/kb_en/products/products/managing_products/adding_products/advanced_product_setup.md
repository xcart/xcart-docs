---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-29 13:07 +0400'
identifier: ref_2kV8GKN7
title: Advanced Product Setup
order: 110
published: false
---
Once a new product has been [added](#adding-a-new-product) to your store, you can edit any of its settings configured during the [basic product setup] and, if necessary, configure some advanced product settings for it as well. To do so, you will need to find the product in the store's Admin area (**Catalog** > **Products**) and click on the product name to access the product details. The result will be a page with all the information you have provided regarding this product so far - basically, the same page with the product information form you have completed during the basic product setup - but now this page will have tabs allowing you to access some additional sections for product configuration. 
![xc5_products_product_tabs.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_product_tabs.png)

The set of tabs that will be available to you will depend on your X-Cart edition and the set of addons activated in your store. Below is an overview of some of the popular tasks that can be accomplished by adjusting the advanced product settings via the various tabs of the product page - with information on what X-Cart addons/features you will require.

### Set advanced inventory tracking options for the product (low stock threshold and notifications)
Whereas it is possible to adjust some basic product inventory tracking settings via the _Prices & Inventory_ section of the Info tab of the product details, you can access still more settings via the "Inventory tracking" tab:
![xc5_products_inventory_tracking_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_inventory_tracking_tab.png)

Here you see the fields **Arrival date**, **Inventory tracking** and **Quantity in stock** (the same ones as in the _Prices & Inventory_ section of the Info tab). 

In addition, here are some settings you can use to set a low stock threshold for the product and get notified whenever the product stock goes down to this level. The settings are as follows:

   * **Show low stock warning on product page**: Enable this setting if you want a warning message (like "Only X left in stock") to be displayed to customers viewing the product if the product stock reaches the low stock treshold. 
   ![xc5_products_only10instock.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_only10instock.png)

       To enable the warning, you will also need to specify the inventory level at which the warning  should be triggered (Use the "Low limit quantity" field further below in this section). 
       
       You can edit the text of the warning message by editing the text label "Only X left in stock" via the Language labels section (**Store setup** > **Translations**). For information on text labels and how to edit them, see {% link "Managing texts labels in your store" ref_IyGxQ1DN %}.
   
   * **Notify administrator if the stock quantity of this product goes below a certain limit**: Enable this setting to get an automated email notification when the product stock reaches the low stock treshold. You will also need to specify the inventory level at which the email notification needs to be sent (Use the "Low limit quantity" field below). 
   
   * **Low limit quantity**: Use this field to set the low stock threshold for the product (starting from this quantity, the product stock level will be considered "low"). 

### Specify additional product parameters to be shown in the product specification

If you want to specify additional parameters (like color, material, country of origin, ISBN, etc.) for the product so they can be viewed by your store visitors on the "Specification" tab of the product page, you will want to use X-Cart's {% link "Product classes and attributes" ref_T90ZcEpP %} feature. This feature is part of X-Cart's core and, if you just want the attributes, does not require any X-Cart addons. The attributes can be specified via the "Attributes" tab of the product page.
![xc5_products_attributes_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_attributes_tab.png)

### Specify product options for buyers to choose

If you want to configure product options (color, size, etc.) so buyers will be able to choose the options they require before checkout, you will need to use X-Cart's {% link "Product classes and attributes" ref_T90ZcEpP %} feature. This feature helps you to configure options for the product via the "Attributes" tab of the product page. 
![xc5_products_attributes_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_attributes_tab.png)

For example, you will be able to create an attribute "Size" and to specify multiple attribute values for it like "XS", "S", "M", "L" and "XL". Your customers will be able to choose these values as product options. 

If you need not just separate independent options, but product variants based on option combinations (like "Color: White + Size: XL"), you will need to use the addon [Product Variants](https://market.x-cart.com/addons/product-variants.html). This addon will help you to create product variants based on combinations of options that have been configured as attribute values. The configuration of product variants will have to be done via the "Variants" tab of the product page.
![xc5_products_variants_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_variants_tab.png)

For more info on using the addon, see {% link "Product Variants" ref_0uApuQfx %}

### Set wholesale prices and minimum purchase quantities for different membership levels

If you want to set different prices on the same product that would be enabled for buyers depending on the buyer membership level and the product quantity being ordered, you should use the addon [Wholesale](https://market.x-cart.com/addons/wholesale.html).

With this addon you will be able to set price tiers for different purchase quantities and different user membership levels via the "Wholesale pricing" tab of the product page.
![xc5_products_wholesale_pricing_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_wholesale_pricing_tab.png)

You will also be able to set minimum product purchase quantities for different user membership levels via the "Inventory tracking" tab.
![xc5_products_min_purchase_qty.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_min_purchase_qty.png)

For more info on using the addon, see {% link "Wholesale module" ref_ttZa4qgu %}. 

### Sell the product on eBay
To list the product on eBay and get your data synchronized between eBay and your X-Cart store, you may want to use the addon [X-Cart eBay Integration](https://market.x-cart.com/addons/ebay-integration.html). With this addon, you will be able to set the product's eBay options via the "eBay product options" tab of the product page. 
![xc5_products_ebay_product_options_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_ebay_product_options_tab.png)

For more info on using the addon, see {% link "X-Cart eBay Integration" ref_0SnFdXk1 %}.

### Link the product to other products in the store so they are shown as related to this product
For cross-selling/upselling purposes, you may wish to create links from the current product to some other products in your store. These products will be displayed as related to the current product in the "Related products" block on the product page on the storefront and, if necessary, may be used as a source of "Customers who bought this also bought" recommendations in the Add to cart popup. 

Linking products to one another is enabled by the addon [Related Products](https://market.x-cart.com/addons/related-products.html). With this addon, you will be able to add links to related products for any product in your store via the "Related products" tab of the product page:
![xc5_products_related_products_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_related_products_tab.png)
For more info on using the addon, see {% link "Related Products" ref_4a5rpsQq %}.

For showing related products in the Add to cart popup, you will also need the addon [Add to Cart Popup](https://market.x-cart.com/addons/add-to-cart-popup.html).
For more info on using the addon, see {% link "Add to Cart PopUp Module" ref_1iGC8Efj %}.

### Change the set of tabs displayed on the product page on the storefront
X-Cart uses the product tabs feature to present the detailed product information to the store visitors in the most suitable format. 
![tabs-cus.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/tabs-cus.png)

By default the standard set of product tabs is as follows:
   * **Description** : Shows the product SKU, weight and detailed product description
   * **Specification** : Shows the info about all available {% link "product options and attributes " ref_uaJk8ete %}
   * **Comments** : Shows the customer comments on a product added via special modules (Go social, Disqus, VK comments, etc.)
   * **Reviews** : Shows an {% link "average rating" ref_XBriIS6B %} of a product if it was rated and customer reviews (if any).  
   
If necessary, you can change the set of tabs used on your store's product details pages; for example, it is possible to hide any tab you do not need, change the order in which the tabs appear or add more tabs of your own. 

Product tab management is enabled by the addon [Custom Product Tabs](https://market.x-cart.com/addons/custom-product-tabs.html). For more info on using the addon, see {% link "Custom Product Tabs" ref_2JzbMU2q %}. 

### Add PIN codes to the product
If you need to sell stuff like licenses, enrollment keys, PIN codes, serial numbers, activation codes and passwords, phone cards and access codes, you may want to use the addon [PIN Codes](https://market.x-cart.com/addons/pin-codes.html "PIN Codes Module"). This addon will enable you to attach PIN codes to your existing product via the "PIN codes" tab:
![xc5_products_pin_codes_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_pin_codes_tab.png)
For more info on using the addon, see {% link "PIN Codes Module" ref_2ioJzfJL %}.

### Attach files to the product
If you need to attach files to your product (like a product manual or a detailed description) so your store visitors will be able to download these files from the product page, you will need to use the addon [File attachments](https://market.x-cart.com/addons/file-attachments.html) and the "Attachments" tab of the product page.  
![xc5_products_attachments_tab.png]({{site.baseurl}}/attachments/ref_fhzzxDTy/xc5_products_attachments_tab.png)
For more info on using the addon, see {% link "Product File Attachments" ref_0ZWKcob4 %}.

If you need to be able not just to attach files for free download by store visitors but to sell digital goods, you will also need the addon [E-goods](https://market.x-cart.com/addons/e-goods.html). For more info on using the addon, see the section {% link "E-goods" ref_ZszpDfxQ %} in this manual.

### Enable customers to attach files to the product
If you need your customers to be able to attach files to their order before making a purchase (like, for example, if you are selling custom design t-shirts and want to enable your customers to upload their own t-shirt design for the t-shirt they are ordering), you will need to use the addon [Customer Files Uploads & Product Attachments](https://market.x-cart.com/addons/files-uploads-product-attachments.html).
![cus-product-details.png]({{site.baseurl}}/attachments/ref_1tk0fbqz/cus-product-details.png)
For more info on using the addon, see {% link "Customer Files Uploads &amp; Product Attachments" ref_1tk0fbqz %}.