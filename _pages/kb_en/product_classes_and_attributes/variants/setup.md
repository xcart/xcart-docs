---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-15 15:41 +0300'
identifier: ref_2Tg4d2Tx
title: Product Variants Setup and Management
order: 120
published: true
---
{% note warning %}
PREREQUISITES:
1. Make sure the [Product variants](https://market.x-cart.com/addons/product-variants.html "Product Variants Setup and Management") addon by X-Cart team is installed and enabled in your store. 
   ![product_variants_addon.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/product_variants_addon.png)
   
   For installation instructions, see {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

2. Make sure you have {% link "multi-value attributes " ref_465IZQg9 %} configured for the product(s) you are going to create variants for. These can be either product-specific or product-class attributes.

3. If you have {% link "price and/or weight modifiers" ref_1t4DxHbf %} set up in your store be aware that product variants will override the modifiers fuctionaity. You cannot use both at the same time.
{% endnote %}

To configure product variants for a product:

1.  In your store's Admin area, locate a product you need to configure product variants for and open the product details page:
    ![product-details.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/product-details.png)
    
    {% note info %}
    If you are going to set the **Price** and **Quantity in stock** fields as separate values for each of product variants check that the content of the respective fields in the **Product info** tab of the product details page is empty. 
    
    If you are planning that some of the **Price** and **Quantity in stock** field values will be the same for more than one product variant, you can specify them in the **Product info** tab of the product details page, and these values will be used as default values for any product variants that do not have their own variant-specific **SKU**, **Price** or **Quantity in stock** values defined.
    {% endnote %}

2.  Click on the **Attributes** tab to access the section where you will be able to check the product's attributes: 
    ![attributes-tab.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/attributes-tab.png)
    The product must have either product-specific or product-class product options configured for it. If it does not, configure multi-value attributes as described in {% link "Multi-Value Attributes (Product Options)" ref_465IZQg9 %}. There is no need to set any price/weight modifiers as prices will be set individually for each product variant.

5.  Click on the **Variants** tab to access the section where you will be able to manage the product's variants:
    ![variants-tab.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/variants-tab.png)
     On the page that opens, you will see the list of all multi-value attributes - and their respective values - that have been configured for the product.
    
6. Choose the attributes your variants will be based on by selecting the check boxes to the left of the attribute names. 
    ![variant-options.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/variant-options.png)

7.  Choose how you want to create variants: manually or automatially. 
    {% note info %}
    We recommend using the manual method if you need to create just a couple of variants. If you need to create a larger number of variants, it will be easier to use the automated generation method; in this case, your X-Cart store will create all possible combinations of the product options, and you will need to disable any combinations that you do not stock.
    {% endnote %}

    * For manual setup of product variants, click **Create variants one by one**.
      ![manual-button.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/manual-button.png)
      You'll see a screen as follows:
      ![variants-manual.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/variants-manual.png)
      * Click **Add variant** to create a new product variant. A section for configuring your first product variant will be expanded below:
        ![add-variant.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/add-variant.png)
      * Adjust all the fields in this section as you require and click **Save changes**. Add the rest of the variants you require using the same method.
         {% note info %}
         You can use the **Create all possible variants (N)** link at any time to generate the missing product variants. Don't worry, this will not ruin the variants you have already configured.
         {% endnote %}
    * To let X-Cart generate product variants for you automatically, click **Create all possible variants (N)**, where **N** stands for the number of all possible product variants that X-Cart will create.
      ![auto-button.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/auto-button.png)
      You'll see a screen with a list of all possible product variants that X-Cart was able to create by combining all available options. Each line is a separate product variant that can have its own price, SKU and quantity in stock. :
      ![auto-variants.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/auto-variants.png)
      
      If some of the product variants that were generated automatically do not exist in real life, remove them using one of the following methods:

      *   Click the **Trash** icon next to the product variant that needs to be removed and click **Save changes**:
          ![delete-option.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/delete-option.png)
      *   Select the variants that need to be removed, choose the _Delete selected_ action from from the **More actions for selected** menu, then confirm the action:
          ![bulk-delete.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/bulk-delete.png)
          You can upload an image for each of  the variants. To set the prices, SKUs and quantities, simply specify them in the respective fields. You only need to specify values that do not equal the default ones. 
      * To specify the default variant, select the radio button for this variant in the second column.
        ![default-button.png]({{site.baseurl}}/attachments/ref_2Tg4d2Tx/default-button.png)
       * Be sure to save your changes by clicking **Save changes**.
