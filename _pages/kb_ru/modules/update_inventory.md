---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-09 10:37 +0400'
title: Поддержание актуальных данных о количестве продуктов
order: 40
published: false
identifier: ref_inventory
---
Начиная с версии 5.2.13, X-Cart позволяет изменять информацию о продуктах (остаток в наличии, цены и другие параметры) с помощью стандартной функциональности импорта данных и без использования модуля **Update inventory**. Дополнительная информация: {% link "Обновление свойств продуктов (цен, количества в наличии и т.д.) путем импорта" ref_RTng7mcS %}. 

Модуль **Update inventory**, созданный командой X-Cart, работает с продуктами и {% link "их вариантами" ref_1fbgU1JE %}. С его помощью можно обновить количество продуктов путем импорта простого [CSV](https://ru.wikipedia.org/wiki/CSV) файла. 

 ![]({{site.baseurl}}/attachments/9306477/9438200.png)

 Формат CSV файла импорта для обновления количества продуктов:

![]({{site.baseurl}}/attachments/9306477/9438201.png)

В файле всего два поля:

{:.ui.compact.celled.small.padded.table}
| Поле в CSV файле | Значение поля | Тип значения |
| **sku** | Уникальный идентификатор продукта или варианта | Текст, максимум 32 знака |
| **qty** | Размер запаса: беззнаковое положительное число - если изменение абсолютное, число со знаком -  если изменение относительное | Целое число |

{% note info %}
В версиях X-Cart 5.3.3 и выше поле **qty** поддерживает запись на основе текущего запаса. Относительное изменение указывается со знаком: _+5_ (запас увеличен на 5 единиц продукта) или _-10_ (запас уменьшен на 10 единиц)
{% endnote %}

In a store with the module Update inventory installed and enabled, the CSV file for updating product quantities can be imported via the Update quantity section (**Catalog** > **Update quantity**):

![]({{site.baseurl}}/attachments/9306477/9438202.png)

When importing a CSV file to update product quantities, the following rules apply:

*   If a SKU from the CSV file cannot be matched to the SKU of any existing product or (when using the module Product Variants) product variant  in the store's database, the error is logged, and the respective line in the CSV file is skipped.
*   Product quantities have to be positive numbers. If a product quantity in the qty field is specified in a wrong format, the error is logged, and the respective line in the CSV file is skipped.
*   Any errors generated in the process of importing the CSV file with SKUs and quantities are displayed after the import process has been completed.

_Related pages:_

*   {% link "Import-Export" ref_TANvG2De %}
*   {% link "Product variants" ref_0uApuQfx %}
*   {% link "Updating product properties (price, stock quantity, etc.) via import" ref_OEpBdtQ6 %}
