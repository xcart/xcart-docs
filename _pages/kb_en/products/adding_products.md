---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-25 22:43 +0400'
identifier: ref_fhzzxDTy
title: Adding products
categories:
  - User manual
published: true
order: 120
---

This section provides information on how to add products to your store manually. Please note that you can also add products via {% link "import" ref_TANvG2De %}. 

## Video guide

This video captures the process of adding a new product in X-Cart 5.3.x. 

<iframe class="youtube-player" type="text/html" style="width: 800px; height: 450px" src="https://www.youtube.com/watch?v=yJAaZIXOWLo&list=PLp_POFxCr_oEu-ampdy1wWLv3-x94XHv1&index=4" frameborder="0"></iframe>

## Adding a new product

To add a new product:

1.  In your store's Admin area, go to the Products section (**Catalog** > **Products**).
    ![]({{site.baseurl}}/attachments/6389859/8716836.png)
2.  Click the **Add product** button.
    ![]({{site.baseurl}}/attachments/6389859/8716837.png)
    The page for adding a new product opens. 
    ![]({{site.baseurl}}/attachments/6389859/8716838.png)
3.  Use the fields on the Add product page to provide information about the product. The only required field is **Product name**. 
4.  Once you're done, click **Add product** button at the bottom of the page. 
    ![]({{site.baseurl}}/attachments/6389859/8716867.png)
    The product will be added. 

## Product information that can be specified

When creating a new product, you can specify the following product details:

*   **SKU**: A unique SKU for this product.
*   **Product name**: The name by which you and your customers will identify this product.
*   **Category**: The category (or categories) to which this product belongs. 
*   **Images**: Use this section to add images of the product.
*   **Memberships**: Membership levels to which this product should be available. Non-members and users belonging to other membership levels will not be able to see the product on the storefront.
*   **Tax class**: The tax class to which the product belongs (Defines what taxes should be applied to the product). For more info on tax classes, see: {% link "Setting up tax classes" ref_pAWOdG8N %}.
*   **Price**: The product price.
*   **Product on sale**: Use this to put the product on sale.
*   **Quantity in stock**: The exact current quantity in stock, or any value if you do not intend to track the inventory of this product. (In the latter case you will need to disable inventory tracking after the product has been created.) 
*   **Weight**: Product weight.
*   **Shippable**: Whether the product is shippable.
*   **Free shipping**: Whether the product should be shipped free of charge.
*   **Ship in a separate box**: Whether the product needs to be shipped separately from other products. If it is shippable in a separate box, you can define the box dimensions and how many products can be put in this box;
*   **Available for sale**: Whether the product should be displayed on the storefront. Uncheck this option to temporarily remove the product from the storefront (Store visitors will not be able to see it).
*   **Arrival date**: This field allows you to record the date since when the product is available in your store. On its own, the information entered in this field serves purely informational purposes, but may be employed by X-Cart modules (For example, a module that allows you to add a new product to your catalog in advance and let it be published on the storefront automatically when its arrival date is reached).
*   **Product page title**: The title to be used in the title bar of this product details page (for SEO purposes). 
*   **Brief** **description**: A short product description that will be displayed on product list pages.
*   **Full description**: A longer product description that will be displayed on the product details page.
*   **Open Graph meta tags**: The custom META tags for sharing the product page on Facebook.
*   **Meta keywords**: The keywords to be used in the keywords META tag on the product page (for SEO purposes).
*   **Meta description**: The description to be used in the description META tag on the product page (for SEO purposes).
*   **Clean URL**: The product page Clean URL (for SEO purposes).

## Inventory tracking

Once a product has been created, you can specify inventory tracking options for it. 

1.  In the store's Admin area, open the details of the product for which you want to specify inventory tracking options.
2.  Go to the Inventory Tracking section of the product details page by either selecting the **Inventory tracking** tab:
    ![]({{site.baseurl}}/attachments/6389859/8716870.png)
    or by clicking the Inventory tracking options link to the right of the **Quantity in stock** field:
    ![]({{site.baseurl}}/attachments/6389859/8716871.png)
    The Inventory tracking section opens:
    ![]({{site.baseurl}}/attachments/6389859/8716869.png)
3.  Adjust the product's inventory tracking options as you require:
    *   **Inventory tracking for this product is** (Enabled / Disabled): To enable inventory tracking for this product, set this option to _Enabled_. If the product quantity is unlimited and does not need to be tracked, set the option to _Disabled_.
    *   **Quantity in stock**: Specify the actual current inventory level of the product (the number of product units in stock).
    *   **Low limit notification for this product is **(Enabled / Disabled): If you want to receive notifications when you are running out of this product, set this to _Enabled_; when you do so, you will also need to specify the inventory level at which the notification needs to be sent (For this purpose another field - "Low limit quantity" - will be provided below). If you do not want to receive low limit notifications, set the "Low limit notification for this product is (Enabled / Disabled)" setting to _Disabled_.
    *   **Low limit quantity**: Use this field to specify what product quantity should be considered "low". You will be notified when this quantity is reached.
4.  Click **Update** to save the changes.

## Specifying additional product parameters (color, material, country of origin, ISBN, etc.)

You can add these additional parameters as attributes via the **Attributes** tab of the product details page.

![]({{site.baseurl}}/attachments/6389859/8716868.png)

Buyers will be able to view these parameters via the **Specification** tab of the product page.

For detailed information on product attributes, see {% link "Product classes and attributes" ref_T90ZcEpP %}.

## Specifying product options (color, size, etc.)

In X-Cart 5, product options can be configured based on product attributes. You add an attribute like "Size" and specify multiple attribute values for it like "XS", "S", "M", "L" and "XL". The buyer will then be able to choose the option they require. Some examples of how you can set product options based on attributes are provided in the article {% link "Managing attribute values" ref_bTfJ9bTS %}. For detailed information on product attributes, see {% link "Product classes and attributes" ref_T90ZcEpP %}.
