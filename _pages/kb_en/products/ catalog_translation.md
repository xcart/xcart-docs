---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-09 13:26 +0400'
identifier: ref_5MQvg8Mm
title: How to translate the product catalog into another language
order: 100
published: false
description: How to translate the product catalog into another language
---
X-Cart keeps the store {% link "text content in lables" ref_IyGxQ1DN %} as you may know, and the catalog content is not an exception. So to translate your store catalog into another language it's necessary to add text lables and their values in another language for the respective labels in English, e.g. category and product names, descriptions, etc. The easiest way to do this is to export the existing categories and products list into a .csv file, edit this file and then import it back to the store. 

{% note info %}
Before translating a product catalog make sure the respective {% link "translation of the store user interface" ref_NH3w8sSS %} is installed.
{% endnote %}

1. Catalog Export

  To export the current catalog data go to the **Catalog** > **Export** section of your store back-end, choose the data to be exported and click **Start Export**.

  ![]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export.png)
  
  As a result you'll get a .csv file with the English label names and their values.

2. Catalog Translation

  Let's say we need to translate our catalog from English to German. For this purpose we'll open the exported .csv file in any spreadsheet editor (MS Excel, LibreOffice Calc, etc.), find the cells to be translated (e.g. name_en, description_en, etc.), add a German equivalent for the cells with translation (e.g. 'name_de', 'description_de', etc.) and then fill in the 'de' cells with the German translation. So as a result we'll get a file similar to an image below:

![poducts.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/poducts.png)

  The marked tables should be imported back to your cart. The rest of the tables can be removed. Save this file and import it back to your store as described in {% link "How to import data" ref_glDc6kA1 %}.
  
  {% note info %}
  Don't forget to translate the Clean URLs and meta tags values as this is important for SEO.
  {% endnote %}


