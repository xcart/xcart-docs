---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-21 13:12 +0400'
identifier: ref_4ZFXupeD
title: Настройка бронируемого товара с вариантами
order: 410
published: false
---
Создание бронируемого товара с вариантами:

1.  {% link "Добавьте" ref_REno3u9g %} новый товар по обычным правилам. 
    ![]({{site.baseurl}}/attachments/8750040/8718732.png)
2.  Не заполняйте поля **Цена** и **Остаток**. Цена и количество будут настроены для вариантов отдельно. 
    ![]({{site.baseurl}}/attachments/8750040/8718733.png)
3.  Отключите расчёт доставки для товара. Установите значение **НЕТ** для опции **Требуется доставка**:
    ![]({{site.baseurl}}/attachments/8750040/8718735.png)

4.  Сохраните новый товар.
    ![]({{site.baseurl}}/attachments/8750040/8718744.png)

5.  Сохраните товар и перейдите на вкладку **Бронирование**. Активируйте _бронирование объекта_ и укажите _минимальный срок бронирования в ночах_:
    ![]({{site.baseurl}}/attachments/8750040/8718736.png)
    
6.  Настройте атрибуты, из которых будут сформированы варианты товара. Если в магазине несколько бронируемых товаров, создайте класс товаров и атрибуты в этом классе. Если в магазине только бронируемые товары, настройте глобальные атрибуты. В качестве примера создадим **класс Отель** с **атрибутами Тип комнаты и Количество гостей**:
    1.  На странице Каталог / Классы и атрибуты нажмите **Создать новый класс**:
        ![]({{site.baseurl}}/attachments/8750040/8718728.png)

    2.  Создайте класс **Отель**:
        ![]({{site.baseurl}}/attachments/8750040/8718729.png)

    3.  Нажмите **Редактировать атрибуты**:
        ![]({{site.baseurl}}/attachments/8750040/8718730.png)

    4.  Нажмите **Новый атрибут**:
        ![]({{site.baseurl}}/attachments/8750040/8718731.png)

    5.  Создайте атрибут с названием **Тип номера** и типом **Простое поле**. Нажмите **Далее**:
        ![]({{site.baseurl}}/attachments/8750040/8718739.png)

    6.  Откроется окно значений атрибута. Нажмите **Новое значение**, чтобы указать каждый тип комнаты отдельно:
        ![]({{site.baseurl}}/attachments/8750040/8718740.png)

    7.  Для примера добавим четыре типа номеров: _Двухместный_, _Двухместный с видом на море_, _Трехместный_, _Двухместный с видом на сад_.
        ![]({{site.baseurl}}/attachments/8750040/8718741.png)

    8.  Аналогично создайте атрибут **Количество гостей**:
        ![]({{site.baseurl}}/attachments/8750040/8718745.png)

    9.  Если предлагаются дополнительные услуги, создайте дополнительные атрибуты - _Трансфер_, _Wi-Fi_, _Spa_ и т.п.
        ![]({{site.baseurl}}/attachments/8750040/8718747.png)

7.  Когда атрибуты готовы, вернитесь на страницу нового товара **Отель** и откройте вкладку **Атрибуты**. На вкладке **Глобальные атрибуты** укажите **класс товара Отель** и настройте атрибуты.
    ![]({{site.baseurl}}/attachments/8750040/8718746.png)

8.  Перейдите на вкладку **Варианты** и выберите атрибуты, на основе которых будут сформированы варианты. Комбинации атрибутов можно создать вручную или автоматически. Для примера выберем атрибуты **Тип номера** и **Количество гостей** и создадим варианты вручную. 

    1.  Choose the attributes on which your variants will be based and select how you would like to create the variants (manually or automatically). We have selected to create variants based on the "Group type" attribute only and are going to use the link Create all possible variants (2) for the variants to be generated automatically:
        ![]({{site.baseurl}}/attachments/8750040/8718750.png)
        Once all the necessary variants have been created based on the available option combinations, you should have a list like the following:
        ![]({{site.baseurl}}/attachments/8750040/8718751.png)

    2.  Adjust the **Price**, **SKU**, **Quantity** (maximum bookable quantity) and **Weight** values for each of the variants; upload variant images. Be sure to save the changes.
        ![]({{site.baseurl}}/attachments/8750040/8718752.png)

That is all; you have configured a bookable product with product variants.

Now, if you haven't yet done so, go to the "Booking" module settings page and specify which of the attributes you have added for your bookable products need to be used to display your product variants in the form of a table on the product details page on the storefront. For example, if you want the individual lines of your booking table corresponding to the product variants to have titles based on the values of the product's main variant-forming attribute ("Room type", "Car type" or similar), this attribute needs to be specified as the "Room type" attribute for your site. If you want your booking table to have a column for the number of guests per room / number of seats per car / etc., specify which of your attributes ("Number of guests", "Number of seats" or similar) should be used as the "Number of guests" attribute for your site. See {% link "Configuring the module «Booking»" ref_PGtil8wm %} for more information.

We have adjusted the module settings as follows:

![]({{site.baseurl}}/attachments/8750040/8718758.png)

Now the variants of our product on the storefront should look something like this:

  ![]({{site.baseurl}}/attachments/8750040/8718818.png)

Expanding a variant by clicking the arrow icon next to its title allows you to view and select product options specific for that variant. For example, on the screenshot below we can see the option selector "Meals" allowing us to choose the type of meals we want at the hotel:

![]({{site.baseurl}}/attachments/8750040/8718820.png)

In case you are wondering why we are seeing just the attribute "Meals" here, but are not seeing the attributes "Free WiFi: Yes" and "Air Conditioning: Yes", although we have configured them earlier for this product, the explanation is simple: the booking table only shows Yes/No attributes if they are configured as multi-value product options:

![]({{site.baseurl}}/attachments/8750040/8718821.png)

If such multi-value attributes are not used for variants, we see them as checkboxes:

![]({{site.baseurl}}/attachments/8750040/8718822.png)

If they are used to form product variants, we see them simply as a part of product variant description. For example, if we base our variants on "Room type" and "Free WiFi" like so:

![]({{site.baseurl}}/attachments/8750040/8718823.png)

The result will be this:

![]({{site.baseurl}}/attachments/8750040/8718824.png)

When, however, Yes/No attributes are configured as non-multi-value options:

![]({{site.baseurl}}/attachments/8750040/8718825.png)

we only see them in the Specification section:

![]({{site.baseurl}}/attachments/8750040/8718827.png)

Note that the default wording used by the module "Booking" may not work well for your type of bookable products. For example, the phrases  "Room type" and  "Check dates (N-night stay)" will not work for a car rental website. Not to worry - the wording can be fixed by editing the "Booking" module text labels. For details see {% link "Editing «Booking» module text labels to your needs" ref_slH6gvha %}.
