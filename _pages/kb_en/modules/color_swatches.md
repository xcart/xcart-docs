---
lang: en
layout: article_with_sidebar
updated_at: '2018-09-14 13:10 +0400'
identifier: ref_4bXaF5qJ
title: Color Swatches
order: 61
published: true
---
The addon [Color Swatches](https://market.x-cart.com/addons/color-swatches.html#product-details-tab-description "Color Swatches") for X-Cart helps users to visualize the different colors and fabrics of your products by having them displayed as clickable swatches on the product page. 

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><i>W/o color swatches</i>![cus-without-color-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-without-color-swatches.png)</div>
  <div class="column" markdown="span"><i>With color swatches</i>![cus-color-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-color-swatches.png)</div>
</div>

{% toc %}

## Installing and Configuring the Addon 

To install the addon, follow the guidelines from the section {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

After the addon has been installed, proceed to the addon settings page to configure it.

The Color Swatches addon settings are rather straightforward: 

![settings.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/settings.png)

   * **Box width** and **Box height**: Set the dimensions (hight and width) of your swatch images in the customer storefront.
   * **Use color swatch name as an attribute option name**: Specify whether the color swatch name should be used as the name of the product option, or not. For example, if you have a product attribute "Color" with values (options) defined as "red", "blue" and "yellow", and the color swatches added for those values, respectively, as "swatch_1", "swatch_2" and "swatch_3", the setting "Use color swatch name as an attribute option name" will affect what your customers will see when hovering their cursor over the red, blue and yellow color swatch boxes on the storefront: if the setting is disabled, the name of the option will be displayed as "red", "blue" or "yellow"; if the setting is enabled, it will be shown as "swatch_1", "swatch_2" or "swatch_3", respectively.

After adjusting the settings as you require, be sure to click **Submit** to make them active.

## Configuring Color Swatches
Color swatches can be created and managed via the **Color swatches** section of the store's back end (**Catalog** -> **Color swatches**).

![swatches-list.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/swatches-list.png)

### Creating Color Swatches
Initially there are no swatches, so the swatch list is empty. You need to create any swatches you require from scratch. 

To create a swatch:

1. Click **Create**. A new blank line will be displayed in the swatch list. You will need to adjust the fields on this new line to create your new swatch.

2. In the Name field, specify the name by which you will identify the swatch.
   ![create-swatch.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/create-swatch.png)

3. In the Color field, set the swatch color you require. To do so, click within the **Color** field and use the color selection panel to select the color you need. 
   ![add-color.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/add-color.png)
   
   The selected color and its code will be added to your swatch details:
   ![xc5_swatch_color_added.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_color_added.png)

4. Click **Save changes**.

A swatch configured using the procedure above will be displayed on the storefront as a box of the color you have specified at Step 3. If, instead of a simple color box you wish to use a custom image, after saving the basic details of your swatch you need to add a swatch image. Here's how to do it: 

1. Click **+** in the image field of a swatch.
   ![add-image.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/add-image.png)
   
2. Upload the image you require either from your local computer or a URL. The image will be added to your swatch details.
   ![xc5_swatch_img_added.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_img_added.png)

3. Click **Save changes**.

Once the required color swatches have been created in the **Color swatches** section, they can be [added to product descriptions](#adding-color-swatches-to-product-descriptions). 

### Viewing and Managing Existing Color Swatches
It is possible to view, sort, edit and delete color swatches at any time using the **Color swatches** section of the store back end.

## Adding Color Swatches to Product Descriptions
To add color swatches to product descriptions, you will need to assign the color swatches created in the  **Color swatches** section to the attributes used by your products. The process will have some specifics depending on the type of attributes being used ([product-specific](#adding-color-swatches-to-products-using-product-specific-attributes), [product class](#adding-color-swatches-to-products-using-product-class-attributes) or [global](#adding-color-swatches-to-products-using-global-attributes)). For detailed information on product attributes in X-Cart, see the section {% link "Product Classes and Attributes" ref_T90ZcEpP %} of this manual.

### Adding Color Swatches to Products Using Product-Specific Attributes

If you need to add color swatches to just a couple of products in your store, and/or the color swatches need to be unique for each of the products, it is recommended that you add them at the level of product-specific attributes of products. 

Here's how to do it:

1. Find the product for which you need to add color swatches (**Catalog** -> **Products**), proceed to the product details page and go to the **Attributes** tab to access the product attributes. Make sure you are viewing the **Product-Specific** subsection. Here you can find the product's product-specific attributes. (If there are no product-specific attributes, you will need to {% link "add" ref_kEKoAxJB %} them first.)

2. Hover your cursor over the attribute for which you need to add swatches. This will reveal the **Color swatches** check box option. Enable this option.
   ![attributes-add-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/attributes-add-swatches.png)
   
3. Map your color swatches to the attribute values. (Select a swatch for each value using the drop-down boxes to the right of the values.)
   ![attributes-save-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/attributes-save-swatches.png)

4. Click **Save changes**.

That's it. Now your store visitors should be able to see the color swatches on the storefront:
   ![cus-color-swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/cus-color-swatches.png)

### Adding Color Swatches to Products Using Product Class Attributes

If you need to add the same color swatches to a group of products in your store, it is recommended that you add them at the level of product class attributes. 

Imagine that you have a product class "Apparel" for stuff like t-shirts, dresses, pants, etc., and you want to add simple color swatches (red, blue, yellow, etc.) for the products of this class. 

Let's see how to do it:

1. In your store’s back end, go to the Classes & attributes section (**Catalog** > **Classes & attributes**).
In the list of product classes, locate the name of the product class you require and click on the Edit attributes (N) link opposite it. As you know, we are trying to add swatches for the product class "Apparel", so we will need to access the attributes for that class:
   ![xc5_swatch_apparel_class_edit_attr.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_apparel_class_edit_attr.png)

   On the page that opens you will find the attributes defined for the class you have selected. (If there are no attributes, you will need to {% link "add" ref_kEKoAxJB %} them first.) 

2. Choose to create the attribute you require or edit an existing one. (We are going to need an attribute named "Color", so the screenshot below demonstrates how we are creating it.) 
   When configuring the attribute, enable the **Use color swatches** option:
   ![xc5_swatch_apparel_class_use_swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_apparel_class_use_swatches.png)

3. Map your color swatches to the attribute values. (Select a swatch for each value using the drop-down boxes to the right of the values.)
   ![xc5_swatch_apparel_class_swatches_map.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_apparel_class_swatches_map.png)
   If you need some or all of the attribute values (and the color swatches) to be assigned automatically to any new products added to this product class, be sure to adjust the settings for these attribute values accordingly.
   Once you are done configuring the attribute values, be sure to save your changes.
   
4. To add the attribute values (and the color swatches) to an existing product, find the product (**Catalog** -> **Products**), proceed to its details page and go to the **Attributes** tab to access the product attributes. Make sure you are viewing the **Global** subsection. Make sure the product is assigned to the proper product class ("Apparel"). Scroll down to the section with the class attributes and make sure the attribute values you require for this product are enabled for it:
   ![xc5_swatch_apparel_class_attr_values.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_apparel_class_attr_values.png)
   
5. Save the changes.
   ![xc5_swatch_apparel_class_attr_values1.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_apparel_class_attr_values1.png)

That's it. The color swatches will be added to the product. Now your store visitors should be able to see them on the storefront:
   
   ![xc5_swatch_apparel_class_swatches.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_apparel_class_swatches.png)

### Adding Color Swatches to Products Using Global Attributes

If you want to be able to add the same color swatches to the descriptions of many or all the products in your store, you should use {% link "global attributes" ref_HzMkgc0q %} to add them.  

To add color swatches using global atributes:

1. In your store’s back end, go to the Classes & attributes section (**Catalog** > **Classes & attributes**) and choose to edit global attributes.
   ![xc5_swatch_global_edit_attr.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/xc5_swatch_global_edit_attr.png)

2. Choose to edit an existing global attribute or to [create a new one](https://kb.x-cart.com/product_classes_and_attributes/managing_global_attributes.html#adding-global-attributes "Color Swatches") 
   
   When configuring the attribute, enable the **Use color swatches** option:
   <div class="ui stackable two column grid">
    <div class="column" markdown="span">![global-new.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/global-new.png)</div>
    <div class="column" markdown="span">![global-edit.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/global-edit.png)</div>
   </div>
   
3. Configure the attribute values you require and map your color swatches to the attribute values by choosing an appropriate color swatch for each of the values.
   ![global-add-swatch.png]({{site.baseurl}}/attachments/ref_4bXaF5qJ/global-add-swatch.png)
   
   If you need some or all of the attribute values (and the color swatches) to be assigned automatically to any new products added to your store, be sure to adjust the settings for these attribute values accordingly.
   
   Also be sure to save your changes.
   
5. To add the attribute values (and the color swatches) to an existing product, find the product (**Catalog** -> **Products**), proceed to its details page and go to the **Attributes** tab to access the product attributes. Make sure you are viewing the **Global** subsection. Scroll down to the section with global attributes and make sure the attribute values you require for this product are enabled for it.

6. Save the changes.
   
That's it. The color swatches will be added to the product. Now your store visitors should be able to see them on the storefront.

### Adding Color Swatches to Product Variants

Color swatches can be used for product variants. To add color swatches to variants, you simply need to map your swatches to the attributes of which the variants are built.

## Importing Color Swatches

It is possible to create color swatches using {% link "Import" ref_glDc6kA1 %}. For this purpose you will need to create a CSV file and put your color swatches data in this file formatting it as described in the section {% link "CSV Import: Color Swatches" ref_0adU3A0n %}. In the file, you will need to specify a swatch name, position, color and image for each color swatch you want to add and upload this CSV file via the **Catalog** -> **Import** section of the store back end.  

To import color swatches using existing global product attributes, you will need to use the basic CSV file format described in {% link "CSV import: Classes & Attributes" ref_qTbDu6Ov %} with the field **swatches** added to the file.
  
To import color swatches using existing product-specific attributes, you will need to use the basic CSV file format described in {% link "CSV import: Product Attribute Values" ref_Z7XdREZl %} with the field **swatch** added to the file.
