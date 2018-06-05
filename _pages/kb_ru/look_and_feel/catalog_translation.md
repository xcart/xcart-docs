---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-04 22:53 +0400'
identifier: ref_7bXXWi0F
title: Изменение языка каталога товаров
order: 300
published: false
---
Тексты страниц магазина хранятся в языковых метках. Для перевода каталога магазина на другой язык создайте копии языковых меток каталога на другом языке и переведите их значения на новый язык. Потребуется перевод категорий, названий товаров, описаний и т.д. Простой способ - экспортировать информацию о категориях и товарах в CSV файл, сделать перевод на новый язык в этом файле и экспортировать информацию обратно в магазин. 

{% note info %}
Чтобы перевести каталог на новый язык, предварительно {% link "установите модуль перевода" ref_translation %} на этот язык.
{% endnote %}

1. Catalog Export
  
   To export the current catalog data go to the **Catalog** > **Export** section of your store back-end, choose the data to be exported (e.g. products, categories, attributes, etc.) and click **Start Export**.

   ![]({{site.baseurl}}/attachments/ref_5MQvg8Mm/export.png)
  
   As a result you'll get a .csv file with the English label names and their values.

2. Catalog Translation
  
   Let's say we need to translate our catalog from English to German. For this purpose we'll open the exported .csv file in any spreadsheet editor (MS Excel, LibreOffice Calc, etc.), find the cells to be translated (e.g. name_en, description_en, etc.), add a German equivalent for the cells with translation (e.g. 'name_de', 'description_de', etc.) and then fill in the 'de' cells with the German translation. So, as a result, we'll get a file content similar to an image below:

   ![translation.png]({{site.baseurl}}/attachments/ref_5MQvg8Mm/translation.png)

   The SKU and DE tables should be imported back to your cart. The rest of the tables can be removed. Save the file with the labels translation and import it back to your store as described in {% link "How to import data" ref_glDc6kA1 %}.
