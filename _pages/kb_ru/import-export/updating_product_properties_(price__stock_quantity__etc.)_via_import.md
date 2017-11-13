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

Например, необходимо изменить цену товара так, чтобы задать разные цены для разных размеров:

S - RUB 400,

M - RUB 450,

L - RUB 500,

XL - RUB 500. 

Это можно легко сделать с помощью экспорта и импорта. Чтобы задать такие цены, достаточно поменять модификаторы цены:

1.  В разделе **Экспорт в CSV** на странице **Каталог / Экспорт** выберите **Значения атрибутов продуктов**:
    ![]({{site.baseurl}}/attachments/9306814/9439230.png)
2.  Скачайте файл экспорта и загрузите его в редактор таблиц. 
3.  Удалите столбцы, данные в которых не требуют изменения. Будьте внимательны и не удалите нужные столбцы. Как сказано в статье {% link "CSV import: Product attribute values" ref_Z7XdREZl %}, обязательные столбцы для импорта значений атрибутов продуктов - это **productSKU**, **type**, **name** и **value**. Не удаляйте эти столбцы. Также, для обновления модификаторов цен вам понадобится столбец **priceModifier**. Теперь, если посмотреть на строки, относящиеся к артикулу 12033, можно увидеть следующее:
    ![]({{site.baseurl}}/attachments/9306814/9439231.png)
4.  Внесите значения в столбец **priceModifier**:
    *   Добавьте модификатор цены “-100” для размерной опции S (RUB 500 - 100 = RUB 400)
    *   Добавьте модификатор цены “-50” для размерной опции M (RUB 500 - 50 = RUB 450)
    *   Значение модификатора цены для размерной опции L должно быть нулевым (= RUB 500)
    *   Удалите модификатор цены “+10” для размерной опции XL, чтобы значение модификатора цены для XL тоже было нулевым (= RUB 500).![]({{site.baseurl}}/attachments/9306814/9439232.png)
5.  Сохраните файл и импортируйте его в магазин в разделе **Экспорт в CSV** на странице **Каталог / Импорт**. 

Когда импорт завершится, вы увидите обновленные цены продуктов в магазине.

## Обновление цен и количества вариантов продуктов

Рассмотрим, как изменить цены и размер запаса вариантов продуктов:

![]({{site.baseurl}}/attachments/9306814/9439233.png)

Например, нужно повысить цену вариантов 12033 и 12035, чтобы цена этих вариантов была RUB 400 - как у вариантов 12036 и 12038. Также, нужно изменить размер запаса варианта 12036 с 8 на 6. 

Как это сделать:

1.  Экспортируйте продукты в разделе **Экспорт в CSV** на странице **Каталог / Экспорт**:
    ![]({{site.baseurl}}/attachments/9306814/9439225.png)
2.  Скачайте файл экспорта и загрузите его в редактор таблиц.
3.  Удалите столбцы, данные в которых не требуют изменения. Будьте внимательны и не удалите нужные столбцы. Как сказано в статье {% link "CSV import: Products" ref_WmJBfwxA %}, обязательные столбцы для импорта продуктов - это **sku** и **name**. Не удаляйте эти столбцы. Т.к. мы обновляем не простые продукты, а варианты, также, понадобится столбец **variantSKU**, его значения помогают идентифицировать варианты. Также, понадобятся столбцы **variantPrice** и **variantQuantity**. Теперь строки, представляющие варианты продукта выглядят так:
    ![]({{site.baseurl}}/attachments/9306814/9439234.png)
4.  Впишите в файл новые значение:

    *   Для вариантов 12033 и 12035 напишите RUB 400 в столбце **variantPrice**.
    *   Для варианта 12036 измените количество в наличии на 6. После изменений файл будет выглядеть так:
    ![]({{site.baseurl}}/attachments/9306814/9439235.png)
5.  Сохраните файл и импортируйте его в магазин через раздел **Импортировать в CSV** на странице **Каталог / Импорт**. 

Когда импорт завершится, у продуктов в магазине будут новые цены и количество.

## Обновление цен продуктов с оптовым ценами

Предположим, что в магазине установлен модуль **Оптовые цены**. Оптовые цены должна быть доступны покупателям определенной группы и при заказе определенного количества продукта. Это можно настроить в разделе оптовых цен на странице продукта. Но если необходимо задать несколько диапазонов цен, удобнее использовать импорт/экспорт. Рассмотрим, как это сделать. Например, для продукта 12030 “Женская Футболка Сэлфи Человека Паука” с ценой RUB 500 нужно настроить оптовые цены:

*   1-4 единицы (для всех групп покупателей) - RUB 500
*   5 и более единиц (для всех групп покупателей) - RUB 400
*   10 и более единиц (для группы Оптовый закупщик) - RUB 350
*   10 и более единиц (для группы VIP покупатель) - RUB 300

Так выглядят настройки в разделе Оптовые цены:

![]({{site.baseurl}}/attachments/9306814/9633884.png)

We are going to achieve the same result without editing the Wholesale pricing section directly. Let's do it:

1.  Use the "Export in CSV" section of your store's back end (**Catalog** > **Export**) to export your existing products:
    ![]({{site.baseurl}}/attachments/9306814/9439225.png)
2.  Download the resulting export file and import it into our favorite spreadsheet editor. 
3.  Edit the file removing the columns whose contents will not need to be updated. As you can find out from the section {% link "CSV import: Products" ref_WmJBfwxA %} of this manual, the columns required for the import of products with wholesale prices are **sku** and **name** (required for products) + **wholesalePrices** and **variantWholesalePrices** (the fields added by the module Wholesale). So, keep those columns in your file. It may also be a good idea to keep the columns **price** and **stockLevel** - just so you have information about the product's base price and quantity in stock close at hand. The rest of the columns can be safely removed. Now if you look at the line of SKU 10001, you should see something like the following:
    ![]({{site.baseurl}}/attachments/9306814/9633886.png)
4.  Now add the wholesale price tiers you require. In our example, SKU 10001 "Planet Express Babydoll" is a simple product without variants, which means we need to add our wholesale prices in the **wholesalePrices** column. The format to write out wholesale price tiers in your file is as follows:
    **N1**(**Membership1**)=**Price1**&&**N2**(**Membership2**)=**Price2**,
    where: 
    *   **N** is the minimum number of product units starting from which the price is available, 
    *   **Membership **is the name of the membership level to which the price is available (may be omitted to provide a price for non-members),
    *   **Price** is the price corresponding to the specified number of product units and membership,
    *   **&&** is a delimiter used to separate the pricing tiers from one another.

        According to the said format, we need to add the pricing information for SKU 10001 "Planet Express Babydoll" as follows: "5=8.99&&10(Wholesaler)=7.50&&10(VIP)=6.50"
    ![]({{site.baseurl}}/attachments/9306814/9633887.png)

5.  Save the file and re-import it into your store via the "Import by CSV" section in your store's back end (**Catalog** > **Import**).

After the import process is completed, you should be able to see the wholesale prices you have imported in the Wholesale pricing section of the product details.

For products with variants, the process of adding wholesale prices is similar, only you need to add the wholesale pricing information via the **variantWholesalePrices** column. Below you can see an example of a file that will add wholesale pricing for the variants of SKU 10000 (variantSKUs 100001, 100002, 100003 and 100004):

![]({{site.baseurl}}/attachments/9306814/9633888.png)

_Related pages:_

*   {% link "How to import data" ref_glDc6kA1 %}
*   {% link "CSV format by X-Cart data type" ref_iy9cOdWS %}
*   {% link "Integration with Doba (drop shipping services)" ref_HOfdxO3E %}


