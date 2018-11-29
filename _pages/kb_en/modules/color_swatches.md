---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-14 13:10 +0400'
identifier: ref_4bXaF5qJ
title: Color Swatches
order: 61
published: true
---
The module [Color Swatches](https://market.x-cart.com/addons/color-swatches.html#product-details-tab-description "Color Swatches") for X-Cart helps users to visualize the different colors and fabrics of your products by having them displayed as clickable swatches on the product page. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>W/o color swatches</i>![cus-without-color-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-without-color-swatches.png)</div>
  <div class="column" markdown="span"><i>With color swatches</i>![cus-color-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-color-swatches.png)</div>
</div>

{% toc %}

## Installing and Configuring the Module 

To install the module, follow the guidelines from the section {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.

After the module has been installed, proceed to the module settings page to configure it:

![installed.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/installed.png)

The Color Swatches module settings are rather straightforward: 

![settings.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/settings.png)

   * **Box width** and **Box height**: Set the dimensions (hight and width) of your swatch images in the customer storefront.
   * **Use color swatch name as an attribute option name**: Specify whether the color swatch name should be used as an attribute option name or not.

After adjusting the settings as you require, be sure to click **Submit** to make them active.

## Configuring Color Swatches
The store administrator creates and manages color swatches via the **Color swatches** section of the store's Admin area (**Catalog** -> **Color swatches**).

![swatches-list.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/swatches-list.png)

Initially there are no swatches, so the swatch list is empty. The store admin needs to create any swatches they require from scratch. 

To create a swatch:

1. Click **Create**. A new blank line will be displayed in the swatch list. You will need to adjust the fields on this new line to create your new swatch.

2. In the Name field, specify the name by which you will identify the swatch.
   ![create-swatch.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/create-swatch.png)

3. In the Color field, set the swatch color you require. To do so, click within the **Color** field and use the color selection panel to select the color you need. 
   ![add-color.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/add-color.png)
   
   The selected color and its code will be added to your swatch.

4. Click **Save changes**.

If necessary you can add an image to the color swatch. 

For this purpose:

1. Click **+** in the image field of a swatch.
   ![add-image.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/add-image.png)
   
2. Upload an image either from your local computer or a URL.

3. Click **Save changes**.

## Adding Color Swatches for Product-Specific Attributes

After the color swatches you require have been created, they need to be added to product descriptions. For this purpose:

1. Find the product for which you need to add color swatches (**Catalog** -> **Products**), proceed to the product details page and go to the **Attributes** tab to access the product attributes. (In case there are no product attributes configured for the product, you will need to {% link "create" ref_kEKoAxJB %} them first.)

2. Enable the **Color swatches** check box option.
   ![attributes-add-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/attributes-add-swatches.png)
   
3. Map your color swatches to the product's attributes.

4. Click **Save** to save the changes. 
   ![attributes-save-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/attributes-save-swatches.png)

That's it. Now your store visitors should be able to select product options using color swatches:
   ![cus-color-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-color-swatches.png)

## Adding Color Swatches for Product Variants

If the **Use color swatch name as an attribute option name** option is enabled, product variants (if any) will be renamed to swatches automatically when the color swatches are added to the product attributes:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>Before color swatches</i>![variants-before-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/variants-before-swatches.png)</div>
  <div class="column" markdown="span"><i>After color swatches</i>![variants-after-swarches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/variants-after-swarches.png)</div>
</div>

If you add images to the product variants the product image displayed to a customer will change depending on the chosen color swatch:

<div class="ui stackable four column grid">
  <div class="column" markdown="span"><i>Variants with imagess</i>![variants-with-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/variants-with-swatches.png)</div>
  <div class="column" markdown="span"><i>Color 1</i>![cus-var-1.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-var-1.png)</div>
  <div class="column" markdown="span"><i>Color 2</i>![cus-var-2.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-var-2.png)</div>
  <div class="column" markdown="span"><i>Color 3</i>![cus-var-3.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-var-3.png)</div>
</div>

If no images are added to the product variants the product image will remain the same regardless of the product color chosen.

## Adding Color Swatches for Global Attributes

If you want to apply color swatches to all products in your store and you have {% link "global attributes" ref_HzMkgc0q %} set up for products you can add color swatches to global attributes and they will be applied to all products with global attributes automatically. 

To add color swatches to global atributes:
1. Locate the attribute you need to add a color swatch to (**Catalog** -> **Classes & attributes**) and click **Edit** or [create a new global attribute](https://kb.x-cart.com/product_classes_and_attributes/managing_global_attributes.html#adding-global-attributes "Color Swatches") 
2. Toggle on the **Use color swatches** option in the pop-up
   <div class="ui stackable two column grid">
    <div class="column" markdown="span">![global-new.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/global-new.png)</div>
    <div class="column" markdown="span">![global-edit.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/global-edit.png)</div>
   </div>
3. Specify the values choosing the appropriate color swatch from a drop-down
   ![global-add-swatch.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/global-add-swatch.png)
4. Save the changes
5. [Assign global attributes to products](https://kb.x-cart.com/product_classes_and_attributes/managing_global_attributes.html#assigning-global-attributes-to-products "Color Swatches")

## Importing Color Swatches

It's possible to create color swatchers using the built-in {% link "Import" ref_glDc6kA1 %} tool. 

For this purpose you should create a swatches.csv file of the following format:

![import-1.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-1.png)

You'll need to specify a swatch name, position, color and image for each color swatch you want to add and upload the swatches.csv file via the **Catalog** -> **Import** section in the cart admin area. The color swatches will be added to the list in the **Catalog** -> **Color swatches** section in the admin area. 

{% note info %}
* The _swatch_color_ value should be a [HEX presentation of a color](https://en.wikipedia.org/wiki/Web_colors#Hex_triplet "Color Swatches") (e.g. FF0000, 2468A0, etc.).
* The _position_ value is a swatch position on the **Color Swatches** listing page (**Catalog** -> **Color swatches**).
* The _image_ value should be an image URL.
* The  _name_ value should be any swatch name (e.g. red, blue, etc.)
{% endnote %}
  
To import color swatches with existing product global attributes you should use the basic file format as described in {% link "CSV import: Classes & Attributes" ref_qTbDu6Ov %} and add a **swatches** field to the file.
  
The **swatches** field should have a value of a color swatch name or a list of values of all swatch names delimited with _&&_ in case of multiple product options values. The **swatches** field values will be bind with product options as a result. 
  
Below is a sample file for importing global attributes with color swatches:

![import-3.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-3.png)
 
To import color swatches with existing product specific attributes you should use the basic file format as described in {% link "CSV import: Product attribute values" ref_Z7XdREZl %} and add a **swatch** field to the file. 
  
The **swatch** field should have a value of a color swatch name in order to assign a color swatch to a product specific attribute.
  
Below is a sample import file for importing a product specific attribute with a color swatch option:

![import-2.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/import-2.png) 
  
{% note warning %}
Please note that the sample import images use the minimum of the required fields and can be used for demostrative purposes only. 
{% endnote %}
