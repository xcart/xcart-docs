---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-09 13:26 +0400'
identifier: ref_5MQvg8Mm
title: Translating Product Catalog
order: 120
published: true
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
1. Locate a product or category you need to translate and open the its details page:
   ![541-category-details-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-category-details-en.png)

2. Switch the language of the Admin area to the target language of your translation:
   ![541-switch-language.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-switch-language.png)

3. Edit the required product/category info:
   ![541-category-page-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-category-page-de.png)

4. Save the changes.

That's it! The product/category details will now displayed in the required language when the language is switched. 

Use this method to translate product and category details, product classes and attributes, products tabs, tags and brands.

## Using Description Editor Tool in the Storefront

The {% link "Description Editor" ref_0KCLczz4 %} tool of the {% link "Theme Tweaker" ref_2L6W3YMS %} addon allows you to edit product and category descriptions directly in the storefront. Hence you can use it to add a description of a product or category on another language or translate an existing one if required.

{% note info %}
The Description Editor tool can be used for editing product and category full and brief descriptions only. If you need to translate more product details into another language, use the {% link "tools" ref_2CQ8HuY4 %} of the store Admin area.
{% endnote %}

For this purpose:
1. Locate a product or category you need to edit and open the product/category details page in the storefront:
   ![541-cus-category-page-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-cus-category-page-en.png)

2. Switch the storefront language to the target language of your translation:
   ![541-cus-switch-language.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-cus-switch-language.png)

3. Edit the required product/category description using the Description Editor tool as described {% link "here" ref_0KCLczz4 %}:
   ![541-cus-category-details-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-cus-category-details-de.png)

4. Save the changes.

That's it! The product/category description will now display in the required language when the language is switched. 

## Using Export/Import 

Use the {% link "Import-Export" ref_TANvG2De %} feature when you need to translate your store product catalog as a whole. Export the existing categories and products into a .csv file, edit this file and then import it back into the store. 

Using this method you can translate product and category names, as well as brief and full descriptions and the rest of details you need.
  
To translate a product catalog:

1. Export the current catalog data:
   * Go to the Export page of your store Admin area (**Catalog** -> **Export**):
     ![541-export-page.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/541-export-page.png)

   * Export data as described {% link "How to Export Data" ref_57zqrlPA %}.
   
      As a result, you will get a .csv file with the default labels' names and their values.
   
2. Open the exported .csv file in any spreadsheet editor (MS Excel, LibreOffice Calc, etc.)

3. Delete all the tables except for SKU and the tables marked with EN (the labels marked with EN can be translated and imported back).
   
   You should get a file content similar to the following:
   ![export-products-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export-products-en.png)
   
4. Rename the EN tables to match the target language (e.g. name_en to name_de if your target language is German).

5. Fill in the new tables with the translation (e.g. the name_de table should contain the name of a product/category in German). 
   
   As a result, you will get a file similar to the one shown below:
   ![product-csv-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-csv-de.png)

6. Save the .csv file with the SKU and DE tables and import it back to your store as described in {% link "How to Import Data" ref_glDc6kA1 %}.
