---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-28 12:52 +0400'
identifier: ref_o3s6sQgq
title: Работа с глобальными атрибутами
order: 50
published: false
---
Данная статья рассматривает следующие вопросы:

*   [Создание глобальных атрибутов ](#adding-global-attributes);
*   [Просмотр глобальных атрибутов магазина](#viewing-your-stores-list-of-global-attributes);
*   [Присвоение глобального атрибута продукту](#assigning-global-attributes-to-products);
*   [Просмотр глобальных атрибутов продукта](#viewing-a-products-global-attributes);
*   [Редактирование глобальных атрибутов](#editing-global-attributes);
*   [Удаление глобальных атрибутов](#deleting-global-attributes).

## Создание глобальных атрибутов 

В X-Cart есть два способа создания глобальных атрибутов.

**Способ 1:**

Данный способ предусматривает создание глобальных атрибутов в разделе **Классы и атрибуты** (**Каталог / Классы и атрибуты**).


1.  В панели управления магазина откройте страницу **Каталог / Классы и атрибуты**.
2.  Нажмите ссылку **Редактировать атрибуты** справа от заголовка **Глобальные атрибуты**:
    ![]({{site.baseurl}}/attachments/7504857/8719294.png)
    Откроется страница редактирования глобальных атрибутов:
    ![]({{site.baseurl}}/attachments/7504857/8719295.png)
3.  Нажмите **Новый атрибут**:
    ![]({{site.baseurl}}/attachments/7504857/8719296.png)
    Откроется окно для создания нового атрибута:
    ![]({{site.baseurl}}/attachments/7504857/8719297.png)
4.  Внесите информацию о новом атрибуте:

    *   **Атрибут**: название нового атрибута.
    *   **Группа атрибута**: название группы атрибута (указывается, если новый атрибут должен быть присвоен какой-то группе атрибутов).
    *   **Тип**: тип значения атрибута (предзаполненное поле, текстовое поле, да/нет).![]({{site.baseurl}}/attachments/7504857/8719298.png)
5.  Нажмите **Далее**. Атрибут создан. В этом же окне можно редактировать его значения.:
    ![]({{site.baseurl}}/attachments/7504857/8719299.png)
6.  Настройте значения атрибута (дополнительная информация: {% link "Работа со значениями атрибутов" ref_SuWz9rmN %}). В качестве примера, зададим значения для атрибута _Цвет_, для этого нужно обозначить цвета всех продуктов, которым будет присвоен этот глобальный атрибут: 
    ![]({{site.baseurl}}/attachments/7504857/8719300.png)
7.  Чтобы несколько или все значения нового атрибута автоматически присваивались всем продуктам, которые будут добавлены в каталог магазина в будущем, нажмите галочки справа от значений атрибута (галочки зеленого цвета, когда активированы): 
    ![]({{site.baseurl}}/attachments/7504857/8719301.png)
8.  Нажмите **Сохранить**:
    ![]({{site.baseurl}}/attachments/7504857/8719302.png)
    Значения атрибута сохранены. 

    Создан новый атрибут. Если на шаге 7 для всех его значений вы поставили галочки, эти значения будут автоматически присвоены новым продуктам, которые будут созданы в магазине. Новый атрибут не применяется автоматически к продуктам, которые уже существовали в магазине на момент создания атрибута. Значения нового атрибута можно присвоить существующим продуктам вручную на странице **Атрибуты** каждого продукта. Редактируя один продукт, вы можете включить опцию **Применить изменения значений атрибутов для всех товаров**, чтобы применить такие же изменения ко всем продуктам магазина.

**Способ 2:**

Данный способ предусматривает редактирование продукта и создание глобальных атрибутов в разделе **Атрибуты** этого продукта. 


1.  В панели управления магазина откройте страницу любого продукта, для которого нужен новый атрибут, и перейдите на вкладку **Атрибуты**:
    ![]({{site.baseurl}}/attachments/7504857/8719303.png)
    Откроется страница редактирования атрибутов этого продукта. 
2.  Пройдите по ссылке **Глобальные атрибуты**. Это раздел, где вы можете создать глобальные атрибуты и атрибуты класса продуктов для данного продукта:
    ![]({{site.baseurl}}/attachments/7504857/8719304.png)
    В секции **Глобальные атрибуты** создайте новые атрибуты, которые будут действовать на уровне всего магазина:
    ![]({{site.baseurl}}/attachments/7504857/8719305.png)

3.  Укажите данные новых атрибутов:
    1.  В меню **Добавить атрибут** выберите тип нового атрибута (предзаполненное поле, текстовое поле , да/нет). В списке атрибутов появится новая пустая строка, в которой необходимо указать название нового атрибута и его значения. 
        ![]({{site.baseurl}}/attachments/7504857/8719306.png)
        (Дополнительная информация о типах значений атрибутов: {% link "Работа со значениями атрибутов" ref_SuWz9rmN %}). 
        Для примера, мы создадим атрибут _Цвет_ со значениями _Серый, Белый_ и т.д., поэтому нам нужен тип атрибута _Предзаполненное поле_. Тип атрибута _Предзаполненное поле_ - это значение по умолчанию, поэтому можно просто нажать на кнопку **Добавить атрибут** и не выбирать значение из меню:
        ![]({{site.baseurl}}/attachments/7504857/8719307.png)

    2.  Укажите название и значения атрибута:
        ![]({{site.baseurl}}/attachments/7504857/8719308.png)

    3.  Укажите область применения атрибута:

        *   Для всех продуктов в каталоге.
        *   Только для редактируемого продукта. Изменение названия атрибута и списка атрибутов (например, изменение позиции атрибута в списке или удаление атрибута из списка) затрагивает все продукты в магазине. Например, если значение _Серый_ атрибута _Цвет_ применено глобально, в описание всех продуктов в магазине появится атрибут _Цвет - Серый_. 
        ![]({{site.baseurl}}/attachments/7504857/8719309.png)
        Обратите внимание, глобальное применение атрибута распространяется только на продукты, существующие в магазине на момент совершения данных изменений. Атрибут не будет автоматически присвоен продуктам, которые будут созданы в каталоге в будущем.
    4.  Нажмите **Сохранить**:
        ![]({{site.baseurl}}/attachments/7504857/8719310.png)

        Атрибут создан:
        ![]({{site.baseurl}}/attachments/7504857/8719311.png)
        В разделе **Характеристики** продукта в магазине появился атрибут _Цвет - Серый_. Если на шаге 4 это значение атрибута было применено глобально, то у всех продуктов появилась такая же запись. Если значение атрибута не было применено глобально, запись появилась только у редактируемого продукта. Но для других продуктов это значение атрибута всегда можно задать вручную.

## Просмотр глобальных атрибутов магазина

To view your store's global attributes:

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  Click on the Edit attributes (N) link opposite the **Global attributes** title:
    ![]({{site.baseurl}}/attachments/7504857/8719313.png)
    This opens a page with your store's global attributes list:
    ![]({{site.baseurl}}/attachments/7504857/8719314.png)

In the list of global attributes, for each attribute you can see the attribute name and the field type that was used to add the attribute's values. 

To view the values for a specific attribute:

1.  Hover your cursor over the line with the attribute's name. This will display an **Edit** button opposite the attribute's name:
    ![]({{site.baseurl}}/attachments/7504857/8719315.png)
2.  Click the **Edit** button. This will display the attribute's details, including the list of its values:
    ![]({{site.baseurl}}/attachments/7504857/8719316.png) 

## Assigning global attributes to products

After adding global attributes via the Classes & attributes section (**Catalog > Classes & attributes**), you need to assign these attributes to specific products.

In the following example, we will assign the global attribute "Color.....Orange" to the product named "12 oz. Plastic Cup, 100 count":

1.  In your store's Admin area, find the product to which you need to assign a global attribute, open its details and click on the** Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504857/8719303.png)
    This will open a page where you can manage attributes for this product. 
2.  Click on the __Global__ link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504857/8719304.png)

3.  On the page that opens, scroll down to the **Global attributes** section and look at the list of attributes displayed in it:
    ![]({{site.baseurl}}/attachments/7504857/8719319.png)
    Here you can see the full list of your store's global attributes. The attributes for which the **Attribute option** field is empty are not yet assigned to the product and are not shown on the storefront. 
4.  For the attribute that needs to be assigned:
    *   click inside the **Attribute option **field and type in the value you require, or:
    *   click on the down arrow button at the right of the **Attribute option **field and select a previously configured attribute value from the drop-down list: 
        ![]({{site.baseurl}}/attachments/7504857/8719320.png)
        We have selected the value "Orange". In the screenshot below you can see it displayed in the **Attribute option** field:
        ![]({{site.baseurl}}/attachments/7504857/8719308.png)
        If you have more global attributes that need to be assigned to the product, repeat this for each of them.

5.  Choose whether you want to apply the selected attribute value(s) to this product only (select "Apply value changes locally") or to extend it/them to all the products of the same product class (select "Apply value changes globally").
    ![]({{site.baseurl}}/attachments/7504857/8719309.png)

6.  Click **Save changes**.
    ![]({{site.baseurl}}/attachments/7504857/8719310.png)
    The attribute(s) and their selected value(s) will be assigned to the product, after which you will be able to see them on the storefront.

## Viewing a product's global attributes
