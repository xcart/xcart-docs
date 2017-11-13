---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-13 12:43 +0400'
identifier: ref_RTng7mcS
title: 'Обновление свойств продуктов (цен, количества в наличии и т.д.) путем импорта'
order: 30
published: false
---
Импорт - это мощный инструмент, который позволяет не только создавать новые продукты, но и обновлять существующие. Импортом можно воспользоваться при обновлении свойств продуктов в магазине, включая их цены и количество в наличии.

В X-Cart есть две модели импорта:

*   Создание новых и обновление существующих продуктов;
*   Обновление существующих продуктов без создания новый продуктов.

![]({{site.baseurl}}/attachments/9306814/9439207.png)

Вариант **Создание новых и обновление существующих продуктов** позволяет одновременно создавать новые продукты и обновлять существующие. Если в CSV файле есть продукты, которые еще не созданы в магазине, они появятся в магазине после импорта этим способом.

Новые продукты создаются на основании следующих идентификаторов::

*   атрибуты: _product, name, class, group_
*   категории: _path_
*   продукты: _sku_
*   покупатели: _login_
*   атрибуты продуктов: _productSKU, type, name, class, group, owner, value_
*   отзывы: _product, additionDate, reviewerName, email_

Вариант **Обновление существующих продуктов без создания новых продуктов** позволяет обновлять существующие продукты без создания новых. 

Обратите внимание, что при обоих способах импорта в магазине создаются недостающие единицы, связанные с существующими. Например, если продукт обновляется путем импорта и он не входит ни в какую категорию, будет создана категория.

Рассмотрим процесс обновления цен и запасов продуктов на основе следующих случаев:

*   [Обновление цен и количества простых продуктов](#updating-the-price-and-quantity-of-simple-products);
*   [Обновление цен продуктов с опциями, настроенными с помощью модификаторов цены](#updating-the-price-of-products-with-options-configured-using-price-modifiers);
*   [Обновление цен и количества вариантов продуктов](#updating-the-price-and-quantity-of-product-variants);
*   [Обновление цен продуктов с оптовым ценами](#updating-the-price-of-products-with-wholesale-prices).

## Обновление цен и количества простых продуктов

Например, цену продукта  12033 “Форменные Поло Звездный Путь” нужно снизить с RUB 500 до RUB 400, а для продукта 12032 Форменная Футболка Звездный Путь: Следующее поколение нужно увеличить размер запаса с 11 до 15. Для начала рассмотрим случай, когда это простые продукты без опций и вариантов.

Как это сделать:

1.  Экспортируйте продукты на странице **Каталог / Экспорт**:
    ![]({{site.baseurl}}/attachments/9306814/9439225.png)
2.  Скачайте созданный файл экспорта и импортируйте его в редактор электронных таблиц, где содержимое файла будет распределено по столбцам. Для примера, воспользуемся таблицами Google.
3.  The file you get has a lot of columns, so it is a good idea to remove the columns whose contents will not need to be updated - to make the file more manageable. Care not to remove the required columns. To find out, which columns are required for your file, check the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual. In the table describing the data format for the import of products, you can see that there are only two required fields (they are marked with asterisks): **sku** and **name**. So you will need to keep these two columns. The price that needs to be updated can be found in the column **price**, and the product quantity - in the column **stockLevel**. So, these columns will also have to be kept. Basically, you can safely remove all the columns except for **sku**, **name**, **price** and **stockLevel**. After you do so, your spreadsheet should look something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439208.png)
    (On the screenshot above, the column **name** has the name **name_en** because it contains values for the English language; for other languages the column name will have a different language code appended).
4.  On the lines of the SKUs for which you need to update the price and the stock quantity, edit the contents of the **price** and **stockLevel** fields as you require. 
    ![]({{site.baseurl}}/attachments/9306814/9439209.png)
5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the updated product information in the details of the respective products.

## Updating the price of products with options configured using price modifiers
