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


1.  В панели управления магазина откройте странницу **Каталог / Классы и атрибуты**.
2.  Нажмите **Редактировать атрибуты** справа от заголовка **Глобальные атрибуты**:
    ![]({{site.baseurl}}/attachments/7504857/8719313.png)
    Откроется страница, содержащая список глобальных атрибутов всех продуктов магазина:
    ![]({{site.baseurl}}/attachments/7504857/8719314.png)

Для каждого атрибута в списке указано его название и тип значения. 

Как посмотреть значения атрибута:

1.  Наведите курсор на название атрибута. Справа появится кнопка **Изменить**:
    ![]({{site.baseurl}}/attachments/7504857/8719315.png)
2.  Нажмите **Изменить**. Откроется окно с информацией об атрибуте и его значениях:
    ![]({{site.baseurl}}/attachments/7504857/8719316.png) 

## Присвоение глобального атрибута продукту

Когда глобальные атрибуты уже созданы (на странице **Каталог / Классы и атрибуты**), они должны быть присвоены продуктам.

В качестве примера, глобальный атрибут _Цвет - Розовый_ будет присвоен продукту _Блютусный Динамик Чашка Энергии_:

1.  В панели управления магазина найдите продукт, для которого нужно создать глобальный атрибут, и перейдите на вкладку **Атрибуты**:
    ![]({{site.baseurl}}/attachments/7504857/8719303.png)
    Откроется страница редактирования атрибутов продукта. 
2.  Перейдите в раздел **Глобальные атрибуты**, здесь для данного продукта можно задать глобальные атрибуты, а также, атрибуты класса продуктов:
    ![]({{site.baseurl}}/attachments/7504857/8719304.png)

3.  В секции Глобальные атрибуты перечислены все глобальные атрибуты магазина. Если у какого-то атрибута не указано значение, значит, он еще не применен ни к какому продукту и не доступен в магазине:
    ![]({{site.baseurl}}/attachments/7504857/8719319.png)
     
4.  Как присвоить атрибут продукту:
    *   впишите значение атрибута вручную:
    *   или нажмите на кнопку меню поля значения атрибута и выберите одно из готовых значений: 
        ![]({{site.baseurl}}/attachments/7504857/8719320.png)
        В качестве примера, мы установили значение Розовый атрибута Цвет:
        ![]({{site.baseurl}}/attachments/7504857/8719308.png)
        Таким же образом можно присвоить несколько атрибутов одному продукту.

5.  Включите или отключи те опцию **Применить изменения значений атрибутов для всех товаров**, чтобы применить изменение ко всем продуктам магазина или только к редактируемому.
    ![]({{site.baseurl}}/attachments/7504857/8719309.png)

6.  Нажмите **Сохранить**.
    ![]({{site.baseurl}}/attachments/7504857/8719310.png)
    Атрибут и его выбранное значение присвоены продукту и доступны в магазине.

## Просмотр глобальных атрибутов продукта

If a product has any global attributes assigned, you can view their list in the "Global attributes" section of the product's details (**Attributes** tab** >** **Global **subsection):

![]({{site.baseurl}}/attachments/7504857/8719308.png)

## Editing global attributes

Sometimes you may need to change the name and/or values of a global attribute. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  Click on the Edit attributes (N) link opposite the **Global attributes** title:
    ![]({{site.baseurl}}/attachments/7504857/8719313.png)
    This opens a page where you will be able to manage your store's global attributes.
3.  In the list of global attributes, locate the attribute you need to edit and hover your cursor over its name. The **Attribute name** field will become visible and an **Edit** button will be displayed next to it:
    ![]({{site.baseurl}}/attachments/7504857/8719315.png)
4.  If you just need to change the attribute name, click inside the **Attribute name** field and edit the attribute name as you require. If you need to change the attribute values (or both the attribute name and values), click the **Edit** button; this will open a popup titled **Edit attribute values** where you will be able make the necessary changes.
5.  If you want some or all of the attribute value(s) to be applied automatically to all the products that will be created in your store in future, be sure to "enable" the Check mark icon(s) opposite the names of these attribute values (the Check mark icons should turn green).
6.  Once you're done editing, click **Save changes**.

**Method 2:**

1.  In your store's Admin area, find the product for which you want to edit a global attribute (This can be any product that has this attribute: you will be able to extend the changes to the other products in your store), open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the **Global attributes** page section.
4.  Find the attribute you want to edit and make any changes you require:

    *   To edit the attribute name, hover your cursor over it (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require. 
    *   To edit the attribute values, edit the **Attribute value** field(s).

5.  Specify whether you want to apply the changes globally or locally:

    *   Apply value changes globally => Changes of attribute values will apply for all the products in your store.
    *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attribute list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products in your store.
6.  Click **Save changes**.

## Deleting global attributes

Sometimes you may need to delete a global attribute. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  Click on the Edit attributes (N) link opposite the **Global attributes** title.
    This opens a page where you will be able to manage your store's global attributes.
3.  In the list of global attributes, locate the attribute you need to delete and click on the **Trash **icon opposite its name. The attribute will be marked for deletion.
4.  Click **Save changes**.
    The attribute will be deleted from the list of your store's global attributes and will be removed from the details of all products.

**Method 2:**

1.  In your store's Admin area, find any product that has the global attribute you want to delete, open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, scroll down to the **Global attributes** section.
4.  Find the attribute you want to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
5.  It does not matter whether the option "Apply value changes globally" is selected or not: deleting a global attribute here will be applied globally in any case (The attribute will be deleted from the list of your store's global attributes and will be removed from the details of all products).
6.  Click **Save changes**.

_Related pages:_

*   {% link "Product classes and attributes" ref_T90ZcEpP %}
*   {% link "Types of product attributes - by scope" ref_uaJk8ete %}

