---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-09 13:26 +0400'
identifier: ref_5MQvg8Mm
title: Translating Product Catalog
order: 120
published: true
description: translating product catalog into another language
redirect_from:
  - /products/catalog_translation.html
  - /translation_and_localization/catalog_translation.html
---
X-Cart keeps the store {% link "text content in labels" ref_IyGxQ1DN %}, and the product catalog content is not an exception. To translate your store catalog into another language it's necessary to add text labels and their values in another language for the respective labels in English, e.g. category and product names, category and product descriptions, etc. 

{% note info %}
Before translating a product catalog make sure the respective {% link "language package" ref_NH3w8sSS %} is installed.
{% endnote %}

There are 3 possible ways to translate product catalog:
{% toc %}

## Using Store Admin Area

If you need to translate (or to edit the existing translation) of one or several products and/or categories you can do this directly in the store admin area.

For this purpose:
1. Locate a product or category you need to translate and open the product/category details page.
   ![category-page-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/category-page-en.png)
2. Switch the language of the admin area to the target language of your translation:
3. Edit the required product/category info
   ![category-page-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/category-page-de.png)
4. Save the changes.

That's it! The product/category details will now be displayed in the required language when the language is switched. 

Use this method to translate products and categories descriptions, product classes and attributes, products tabs, tags and brands.

## Using Webmaster Mode in the Storefront

{% note info %}
Make sure the {% link "Theme Tweaker" ref_2L6W3YMS %} addon is installed and enabled in order to use Webmaster mode in the storefront.
{% endnote %}

If you need to translate (or to edit the existing translation) of one or several products' and/or categories' descriptions you can do this directly in the customer storefront using the {% link "Description Editor" ref_0KCLczz4 %} in Webmater mode.

For this purpose:
1. Locate a product or category you need to translate and open the product/category details page in the storefront.
   ![product-description-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-description-en.png)
2. Switch the storefront language to the target language of your translation:
   ![product-description-switch.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-description-switch.png)
3. Enable Webmaster mode as described {% link "Description Editor" ref_0KCLczz4 %}
4. Edit the required product/category description
   ![product-descripto-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-descripto-de.png)
5. Save the changes.

That's it! The product/category description will now be displayed in the required language when the language is switched. 

## Using Export/Import 

Use Export/Import facilities when you need to translate your store product catalog as a whole. Export the existing categories and products list into a .csv file, edit this file and then import it back to the store. 

Using this method you can translate products and categories names, brief and full descriptions.
  
To translate a product catalog:

1. Export the current catalog data:
   * Go to the **Catalog** > **Export** section of your store admin area.
   * Choose the data to be exported (e.g. products, categories, attributes, etc.) and click **Start Export**.
     ![]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export.png)
   
      As a result you'll get a .csv file with the default label names and their values.
   
2. Open the exported .csv file in any spreadsheet editor (MS Excel, LibreOffice Calc, etc.).
3. Delete all the tables except for SKU and the tables marked with EN (the labels marked with EN can be translated and imported back).
   
   You should get a file content similar to:
   ![export-products-en.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export-products-en.png)
4. Rename the EN tables to match the target language (e.g. name_en to name_de if your target language is German).
5. Fill in the DE tables with the German translation. 
   
   As a result, you'll get a file content similar to the one shown on an image below:

   ![product-csv-de.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/product-csv-de.png)

6. Save the .csv file with the SKU and DE tables and import it back to your store as described in {% link "How to import data" ref_glDc6kA1 %}.
