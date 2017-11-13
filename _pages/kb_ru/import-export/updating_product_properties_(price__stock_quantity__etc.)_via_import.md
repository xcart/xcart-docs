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
3.  В созданном файле много столбцов, и те из них, которые не требуют обновления, лучше удалить. Будьте внимательны, чтобы не удалить столбцы, данные в которых следует обновить. Чтобы узнать, какие столбцы должны присутствовать в файле, обратитесь к статье {% link "CSV import: Products" ref_WmJBfwxA %}. В таблице, показывающей формат данных для импорта продуктов, можно увидеть только два обязательных поля (они отмечены звездочкой): **sku** и **name**. Эти два столбца нужно обязательно оставить в файле. Цена, требующая обновления, находится в столбце **price**, а количество продукта - в столбце **stockLevel**. Эти столбцы тоже следует оставить в файле. В общем, можно удалить все столбцы, кроме **price**, **name**, **sku** и **stockLevel**. После удаления лишних столбцов файл будет выглядеть так:
    ![]({{site.baseurl}}/attachments/9306814/9439208.png)
    (На скриншоте видно, что название столбца с именами продуктов - name_ru. Это потому, что вся информация в файле на русском языке.  Если информация о продуктах на другом языке, в названиях столбцов будут другие языковый коды).
4.  В строках артикулов, для которых нужно изменить цены и количество запасов, впишите актуальные значения в столбцах **price** и **stockLevel**. 
    ![]({{site.baseurl}}/attachments/9306814/9439209.png)
5.  Сохраните файл и импортируйте его в магазин в разделе **Импортировать в CSV** на странице **Каталог / Импорт**. 

Когда импорт завершится, проверьте продукты в магазине, их данные должны быть уже обновлены.

## Обновление цен продуктов с опциями, настроенными с помощью модификаторов цены

Рассмотрим случай, когда для продукта настроены {% link "многозначные атрибуты" ref_bTfJ9bTS#multi-value-attributes-product-options %}, и цена некоторых опций продукта устанавливается из цены основного продукта с применением {% link "модификатора цены" ref_bTfJ9bTS#price-and-weight-modifiers %}.  Возьмем продукт 12033 “Форменные Поло Звездный Путь”, это футболка. Доступно несколько размеров футболки: S, M, L и XL. Основная цена продукта RUB 500, эта же цена распространяется на размерные опции S, M и L, а для размера XL цена повышена на RUB 50,00:

![]({{site.baseurl}}/attachments/9306814/9439216.png)

For example, you need to change the price of this product so that the available sizing options have the following prices:

S - $7.99,

M - $8.99,

L - $9.99,

XL - $9.99. 

This can be easily achieved using the export-import feature. To achieve the prices we require, we'll simply adjust the price modifiers:

1.  In the "Export in CSV" section of your store's back end (**Catalog** > **Export**), choose to export Product attribute values:
    ![]({{site.baseurl}}/attachments/9306814/9439230.png)
2.  Download the resulting export file and import it into our favorite spreadsheet editor. 
3.  Edit the file removing the columns whose contents will not need to be updated. Care not to remove the required columns. According to the section {% link "CSV import: Product attribute values" ref_Z7XdREZl %} of this manual, the required columns for the import of product attribute values are **productSKU**, **type**, **name**, and **value**. Keep those columns - and the column **priceModifier** (You will need it to update the price modifiers). Now if you look at the lines pertaining to SKU 10001, you should see something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9439231.png)
4.  Adjust the values in the **priceModifier** column:
    *   Add the price modifier "-2" for the sizing option S ($9.99 - 2 = $7.99)
    *   Add the price modifier "-1" for the sizing option M ($9.99 - 1 = $8.99).
    *   Make sure the price modifier value for the sizing option L is NULL (= $9.99).
    *   Remove the price modifier "+2" for the sizing option XL so the price modifier value for XL is also NULL (= $9.99).![]({{site.baseurl}}/attachments/9306814/9439232.png)
5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end  (**Catalog** > **Import**). 

After the import process is completed, you should be able to see the updated prices.

## Updating the price and quantity of product variants
