---
lang: en
layout: article_with_sidebar
updated_at: '2019-01-29 13:00 +0400'
identifier: ref_2D8wAeXP
title: Product Details
order: 100
published: true
---
When creating a new product, you need to specify product details via the form fields of the Add product page. 

{% note info %}
The actual set of fields available to you on this page depends on the X-Cart edition you are using and the set of addons enabled. 

If you do not see any of the fields described below in your X-Cart store back end, it means that the addon that enables this field is not installed or is not active. To see what addons are active in your store and, if necessary, to install/activate more addons, check the **My addons** section in your X-Cart store Admin area. 

More info on the management of X-Cart addons can be found in the {% link "Managing addons" ref_gTOegEua %} section of this manual.
{% endnote %}

The following list of fields corresponds to the set of product fields available for configuration on a fresh install of X-Cart Ultimate edition:

{% toc %}

## General Info

*   **Vendor**: Company name and email of the vendor who owns the product. This field is only available if X-Cart's {% link "Multi-vendor" ref_cvwmAuRi %} addon is active. Since an administrator can create products not only for themselves, but also for other users (vendors), this field needs to be adjusted to specify the owner of the product.

*   **Product name**: The name by which you and your customers will identify this product.

*   **SKU**: The product SKU (A code that will serve as a unique identifier for this product). If you leave this field blank, a SKU will be generated automatically when the product is saved.

*   **Images**: Use this section to add images of the product.

*   **Category**: The category (or categories) to which this product belongs. 

*   **Description**: A short product description that will be displayed on product list pages.

*   **Full description**: A longer product description that will be displayed on the product details page.

*   **Allow buyers to attach files to this product**: This field is only available if X-Cart's "[Customer Files Uploads & Product Attachments](https://market.x-cart.com/addons/files-uploads-product-attachments.html?sl=en&utm_source=XC5admin&utm_medium=addons_list_installed&utm_campaign=XC5admin "Adding products")" addon is active.

*   **Tags**: This field is only available if X-Cart's {% link "Product Tags" ref_6nFoxYf1 %} addon is active; it enables you to assign tags defined via the Product tags section (**Catalog** > **Tags**) to the current product.

*   **Available for sale**: Whether the product should be displayed on the storefront. Uncheck this option to temporarily remove the product from the storefront (Store visitors will not be able to see it).

    <a id="available-for-sale"></a>
    
    {% note info %}    
    If you disable the **Available for sale** option, the product will become inactive, and store visitors who will attempt to access the page of this product via a direct link will see the 404 "Page not found" error. If necessary, you can set redirects for the pages of disabled products using .htacces or the [Redirects](https://market.x-cart.com/addons/redirects-by-Nova-Horizons.html "Adding products") addon. 
  
    If you do not want to sell a product any longer but want a product page be still accessible on the storefront, set the product's stock to zero and add "Not available for sale" to the product name, rather than making it inactive. Make sure the _How to show out of stock products_ option is set to "Show in all the sections" in the **Store setup** -> **Cart & checkout** section of the admin area. 
    {% endnote %}
    
*   **Call for price**: This field is only available if X-Cart's {% link "Call For Price" ref_3K1pJExV %} addon is active; it enables you to specify that the price and Add to cart button must not be provided for the current product; instead, a message inviting store visitors to call for price should be displayed.

## Prices & Inventory

*   **Memberships**: Membership levels to which this product should be available. Non-members and users belonging to other membership levels will not be able to see the product on the storefront. For more info on memberships in X-Cart, see the section {% link "User membership levels" ref_RXsgxNSm %} of this manual.

*   **Tax class**: The tax class to which the product belongs (Defines what taxes should be applied to the product). For more info on tax classes, see: {% link "Setting up tax classes" ref_pAWOdG8N %}.

*   **Price**: The product base price.

*   **Market price**: This field is enabled by the {% link "Market Price" ref_66scBj0f %}. It can be used to set a market product price showing the difference between the product price offered in your store and the average price of this product on the market. 

*   **Sale**: This field is enabled by the {% link "Sale" ref_7tBJ8Yqo %} addon. Use it to put the product on sale. After enabling the "Sale" option you will be able to specify either a sale price for the product (expressed in the store currency) or a discount (expressed as a percentage off the product base price).

*   **Arrival date**: This field allows you to specify the date since when the product is or will be available in your store. On its own, the information entered in this field serves purely informational purposes, but it may be employed by X-Cart addons. For example, it is used by the addon "Product Advisor" which enables you to mark specific products in your catalog as "Coming soon" publishing their expected arrival date for the store visitors to see and automatically switches the status of such products to "New arrival" on the date of arrival.

*   **Automatic reward points**: This field is only available if X-Cart's [Loyalty Program](https://market.x-cart.com/addons/loyalty-program.html?sl=en&utm_source=XC5admin&utm_medium=addons_list_installed&utm_campaign=XC5admin "Adding products") addon is active; it enables you to specify whether reward points for buying the current product should be calculated from the product price automatically or adjusted manually. With the "Automatic reward points" option disabled you will be able to set the number of points that a customer will earn by buying the current product via the **Reward points** field (appears when the "Automatic reward points" option is enabled).

*   **Inventory tracking**: Whether you wish to use the inventory tracking feature for this product. The inventory tracking feature enables you to specify the number of product units you have on hand initially (using the "Quantity in stock" field; see below); your X-Cart store will then track all the purchases of the product. Every time someone buys the product, the number in the "Quantity in stock" field will be reduced automatically by the number of units that have been purchased. If you have a stock refill, you edit the value in the  "Quantity in stock" field increasing the value by the number of units you require. As a result, you will be able to tell how many units of the product you have in stock at any time. If the product quantity is unlimited and does not need to be tracked, the inventory tracking feature can be disabled.

*   **Quantity in stock**: The current inventory level of the product (the number of product units in stock). The value specified in this field is used for the Inventory tracking feature.

*   **Available for backorder**: This field is only available if X-Cart's [Backorder / Preorder](https://market.x-cart.com/addons/backorder-preorder.html?sl=en&utm_source=XC5admin&utm_medium=addons_list_installed&utm_campaign=XC5admin "Adding products") addon is active; it enables you to specify that the current product can be purchased even when it is out of stock. After enabling the "Available for backorder" option, you will also be able to set a backorder label for the product and to limit the backorder quantity (see below).

*   **Backorder label**: This field is only available if the previous setting ("Available for backorder") is enabled. It allows you to add a message regarding the backordering of the current product which your store visitors will see attached to this product in product lists and on the product page when the product is out of stock. You can insert the number of units available for backordering into this message by using the "%number%" placeholder; for example: "You can backorder up to %number% items."

*   **Limit the backorder quantity**: This field is only available if the setting "Available for backorder" is enabled. It allows you to specify that only a limited number of units of the current product can be purchased on backorder, and to specify the maximum limit via the **Max. backorder quantity** field (appears when the "Limit the backorder quantity" option is enabled).

## Shipping

*   **Weight**: Product weight. If the product requires shipping, this setting may affect the calculation of order shipping cost.

*   **Requires shipping**: Whether this product requires shipping. This setting affects the calculation of order shipping cost. (If the product does not require shipping, the shipping cost for it will not be calculated).

*   **Freight**: This field is enabled by the addon {% link "Free shipping and Shipping freights" ref_4Bfeegp9 %}. More info on using this setting is available in the section {% link "Shipping Freight" ref_kioKBJIM %}.

*   **Free shipping**: This field is enabled by the addon {% link "Free shipping and Shipping freights" ref_4Bfeegp9 %}. More info on using this setting is available in the section {% link "Free shipping on Specific Products" ref_IU9J0uuT %}.

*   **Exclude from shipping cost calculation**: This field is enabled by the addon {% link "Free shipping and Shipping freights" ref_4Bfeegp9 %}. More info on using this setting is available in the section {% link "Free Shipping on Specific Products" ref_IU9J0uuT %}.

*   **Separate box**: Whether the product needs to be shipped separately from other products. If it needs to be shipped in a separate box, you can define the box dimensions and the maximum number of product units that fit in this box. This setting affects the calculation of order shipping cost.
    
## Marketing

*   **Open Graph meta tags**: The custom META tags for sharing the product page on Facebook.

*   **Meta description**: The description to be used in the description META tag on the product page (for SEO purposes).

*   **Meta keywords**: The keywords to be used in the keywords META tag on the product page (for SEO purposes).

*   **Product page title**: The title to be used in the title bar of this product details page (for SEO purposes). 

*   **Clean URL**: The product page Clean URL (human-readable SEO-friendly URL, typically based on the product name). The URL can be configured manually (by editing of the field contents directly) or generated automatically (by enabling the "Autogenerate Clean URL" option below before saving the product). Note that if the Clean URLs feature is disabled, you will need to activate it for the SEO-friendly page URLs to become available to store visitors. More info on Clean URLs is available via the {% link "Setting up SEO-friendly URLs" ref_nJxrzFEZ %} section of this manual.
