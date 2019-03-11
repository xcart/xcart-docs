---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-09 13:26 +0400'
identifier: ref_5MQvg8Mm
title: Translating the Product Catalog
order: 120
published: true
description: translating product catalog into another language
redirect_from:
  - /products/catalog_translation.html
  - /translation_and_localization/catalog_translation.html
---
X-Cart keeps the store {% link "text content in labels" ref_IyGxQ1DN %}, and the product catalog content is not an exception. To translate your store catalog into another language you will need to add text labels and their values in another language for the respective labels in English, e.g. category and product names, category and product descriptions, etc. 

{% note info %}
Before translating your product catalog make sure the respective {% link "language package" ref_NH3w8sSS %} is installed.
{% endnote %}

There are 3 possible ways to translate a product catalog:
{% toc %}

## Using the Store Admin Area

If you need to translate (or to edit the existing translation) of one or several products and/or categories, you can do this directly in the store Admin area.

For this purpose:
1. Locate the product or category you need to translate and open the its details page:
   ![category-page-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/category-page-en.png)
2. Switch the language of the Admin area to the target language of your translation:
3. Edit the required product/category info:
   ![category-page-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/category-page-de.png)
4. Save the changes.

That's it! The product/category details will now be displayed in the required language when the language is switched. 

Use this method to translate product and category descriptions, product classes and attributes, products tabs, tags and brands.

## Using Webmaster Mode in the Storefront

{% note info %}
To use Webmaster mode in the storefront, you will need the addon {% link "Theme Tweaker" ref_2L6W3YMS %}. Make sure this addon is installed and enabled.
{% endnote %}

If you need to translate (or edit an existing translation of) a product/category description, you can do that directly in the storefront using the {% link "Description Editor" ref_0KCLczz4 %} in Webmater mode.

For this purpose:
1. Locate the product or category you need to translate and open the product/category details page in the storefront:
   ![product-description-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-description-en.png)
2. Switch the storefront language to the target language of your translation:
   ![product-description-switch.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-description-switch.png)
3. Enable Webmaster mode guided by {% link "Description Editor" ref_0KCLczz4 %}.
4. Edit the required product/category description:
   ![product-descripto-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-descripto-de.png)
5. Save the changes.

That's it! The product/category description will now be displayed in the required language when the language is switched. 

## Using Export/Import 

Use the Export/Import feature when you need to translate your store product catalog as a whole. Export the existing categories and products into a .csv file, edit this file and then import it back into the store. 

Using this method you can translate product and category names, as well as brief and full descriptions.
  
To translate a product catalog:

1. Export the current catalog data:
   * Go to the **Catalog** > **Export** section of your store Admin area.
   * Choose the data to be exported (e.g. products, categories, attributes, etc.) and click **Start Export**:
     ![]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export.png)
   
      As a result, you will get a .csv file with the default label names and their values.
   
2. Open the exported .csv file in any spreadsheet editor (MS Excel, LibreOffice Calc, etc.)

3. Delete all the tables except for SKU and the tables marked with EN (the labels marked with EN can be translated and imported back).
   
   You should get a file content similar to the following:
   ![export-products-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export-products-en.png)
   
4. Rename the EN tables to match the target language (e.g. name_en to name_de if your target language is German).

5. Fill in the new tables with the translation (e.g. the name_de table should contain the name of a product/category in German). 
   
   As a result, you will get a file similar to the one shown below:
   ![product-csv-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-csv-de.png)

6. Save the .csv file with the SKU and DE tables and import it back to your store as described in {% link "How to Import Data" ref_glDc6kA1 %}.
