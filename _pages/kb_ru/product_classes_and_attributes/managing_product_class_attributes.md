---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-27 13:22 +0400'
identifier: ref_79cWvxmm
title: Работа с атрибутами классов продуктов
order: 40
published: false
---
Данная статья рассматривает следующие вопросы:

*   [Создание атрибутов классов продуктов](#adding-product-class-attributes)
*   [Просмотр атрибутов класса продуктов](#viewing-the-list-of-attributes-configured-for-a-product-class)
*   [Просмотр атрибутов продукта, специфичных для класса продуктов](#viewing-a-products-product-class-level-attributes)
*   [Создание для продукта атрибута, специфичного для класса продуктов](#assigning-product-class-level-attributes-to-products)
*   [Редактирование атрибутов классов продуктов](#editing-product-class-attributes)
*   [Удаление атрибутов классов продуктов](#deleting-product-class-attributes)

## Создание атрибутов классов продуктов

Атрибут на уровне класса продуктов можно создать двумя способами. В качестве примера, создадим атрибут _Материал - Искусственный мех_ для класса продуктов _Мягкие игрушки_.

**Способ 1:**

Данный способ предусматривает настройку атрибутов классов продуктов в разделе **Классы и Атрибуты** на странице **Каталог / Классы и атрибуты**.

The process is as follows:

1.  В панели управления магазина откройте страницу **Каталог / Классы и атрибуты**.
2.  В списке классов продуктов найдите класс, для которого нужен атрибут, и нажмите на ссылку **Редактировать атрибуты** справа от названия класса:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    Откроется страница, на которой можно редактировать атрибуты класса продуктов:
    ![]({{site.baseurl}}/attachments/7504855/8719258.png)
3.  Нажмите **Новый атрибут**:
    ![]({{site.baseurl}}/attachments/7504855/8719259.png)
    Откроется окно для создания нового атрибута:
    ![]({{site.baseurl}}/attachments/7504855/8719260.png)
4.  В открывшемся окне укажите информацию о новом атрибуте:

    *   **Атрибут**: Название атрибута, в нашем случае - _Материал_.
    *   **Группа атрибута**: Название группы атрибутов (указывается, если новый атрибут должен быть задан для группы атрибутов).
    *   **Тип**: Тип значения атрибута (Предзаполненное поле, Текстовое поле, Да/Нет).
    ![]({{site.baseurl}}/attachments/7504855/8719261.png)
5.  Нажмите **Далее**. Атрибут сохранен. В этом же окне можно изменить или добавить значения атрибута:
    ![]({{site.baseurl}}/attachments/7504855/8719262.png)
6.  Настройте значения атрибута (дополнительная информация: {% link "Работа со значениями атрибутов" ref_SuWz9rmN %}). Пример: создание предзаполненного поля _Искусственный мех_: 
    ![]({{site.baseurl}}/attachments/7504855/8719263.png)
7.  Некоторые или все значения атрибута, созданного для класса продуктов, могут автоматически применяться к всем продуктам, которые будут включены в этот класс в будущем. Для этого поставьте галочки справа от названия значений атрибутов (галочки зеленого цвета, когда включены): 
    ![]({{site.baseurl}}/attachments/7504855/8719264.png)
8.  Нажмите **Сохранить**:
    ![]({{site.baseurl}}/attachments/7504855/8719265.png)
    
    Создан новый атрибут _Материал - Искусственный мех_ для класса продуктов _Мягкие игрушки_. Если на шаге 7 вы поставили галочку у значения _Искусственный мех_, атрибут _Материал - Искусственный мех_ будет автоматически применен ко всем новым продуктам, которые буду добавлены в класс _Мягкие Игрушки_. У продуктов, которые уже входят в этот класс, атрибуты останутся без изменений. Чтобы применить новый атрибут к существующему в классе _Мягкие игрушки_ продукту, откройте страницу **Атрибуты** этого продукта и выберите нужное значение атрибута. Дополнительная информация: [Создание для продукта атрибута, специфичного для класса продуктов](#assigning-product-class-level-attributes-to-products).

**Способ 2:**

Данный способ подразумевает редактирование определенного продукта, входящего в класс Мягкие игрушки, и создание атрибута на уровне класса продуктов в разделе **Атрибуты** этого продукта. 


1.  В панели управления магазина найдите продукт, для которого нужно создать новый атрибут, и откройте вкладку **Атрибуты**:
    ![]({{site.baseurl}}/attachments/7504855/8719266.png)
    Откроется страница редактирования атрибутов этого продукта. 
2.  Откройте раздел **Глобальные атрибуты**, здесь можно создать глобальные атрибуты и атрибуты уровня класса продуктов:
    ![]({{site.baseurl}}/attachments/7504855/8719267.png)
3.  На странице **Глобальные атрибуты** указан класс, к которому принадлежит продукт:
    ![]({{site.baseurl}}/attachments/7504855/8719268.png)
    Если класс не задан, или продукт должен входить в другой класс, {% link "выберите нужный класс" ref_EVqNSaZy#assigning-product-classes %}) в меню и нажмите **Сохранить**.
4.  Когда указан класс, на странице появляется раздел редактирования атрибутов класса продуктов. В названии раздела указано название класса продуктов. В нашем примере - _Атрибуты Мягкие игрушки_:
    ![]({{site.baseurl}}/attachments/7504855/8719269.png)

    1.  С помощью меню **Добавить атрибут** создайте новый атрибут нужного типа, укажите его название и значения. 
        ![]({{site.baseurl}}/attachments/7504855/8719270.png)
        (Дополнительная информация: {% link "Работа со значениями атрибутов" ref_bTfJ9bTS %}). 
        Для создания атрибута _Материал - Искусственный мех_ следует выбрать тип _предзаполненное поле_. _Предзаполненное поле_ - это тип атрибута по умолчанию, поэтому можно не выбирать это значение из списка, а просто нажать на кнопку **Добавить атрибут**:
        ![]({{site.baseurl}}/attachments/7504855/8719271.png)
    2.  Задайте название и значения атрибута:
        ![]({{site.baseurl}}/attachments/7504855/8719273.png)
    3.  Укажите область применения значений атрибута:

        *   Для всех продуктов класса
        *   Только для редактируемого продукта. Изменение названий атрибутов и списка атрибутов (например, порядка следования атрибутов в списке или удаление атрибута из списка) отразится на всех продуктах класса. Например, если активировать опцию **Применить изменения значений атрибутов для всех товаров** для значения атрибута _Искусственный мех_,  то в разделе **Характеристики** всех продуктов, входящих в класс _Мягкие игрушки_, появится атрибут _Материал - Искусственный мех_.
        
        ![]({{site.baseurl}}/attachments/7504855/8719274.png)
        Включение опции **Применить изменения значений атрибутов для всех товаров** влияет на продукты, которые входят в класс продуктов на момент сохранения изменений. Данные изменения значений атрибутов не применяются к продуктам, которые вносятся в класс позже.  
    4.  Нажмите **Сохранить**:
        ![]({{site.baseurl}}/attachments/7504855/8719275.png)
        Атрибут создан:
        ![]({{site.baseurl}}/attachments/7504855/8719276.png)
        На странице продукта в магазине в разделе **Характеристики** появилась запись _Материал - Искусственный мех_. Если на шаге 4 была включена опция **Применить изменения значений атрибутов для всех товаров**, такая же запись появилась у всех остальных продуктов класса _Мягкие игрушки_.  Если опция не была включена, атрибут появился только у редактируемого продукта. Но значение атрибута _Искусственный мех_ доступно в списке значений атрибута _Материал_ и может быть установлено для других продуктов вручную.

## Просмотр атрибутов класса продуктов

Как посмотреть атрибуты, созданные для определенного класса продуктов:

1.  В панели управления магазина откройте раздел **Каталог / Классы и атрибуты**.
2.  В списке классов продуктов найдите класс, атрибуты которого нужно просмотреть, и нажмите **Редактировать атрибуты** справа от названия класса:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    Откроется страница со списком атрибутов данного класса продуктов:
    ![]({{site.baseurl}}/attachments/7504855/8719278.png)

У каждого атрибута указано название и тип значения. 

Как посмотреть значения определенного атрибута:

1.  Наведите курсор на название атрибута, справа появится кнопка **Изменить**:
    ![]({{site.baseurl}}/attachments/7504855/8719279.png)
2.  Нажмите **Изменить**. ОТкроется окно с информацией об атрибуте и списком его значений:
    ![]({{site.baseurl}}/attachments/7504855/8719280.png)

## Просмотр атрибутов продукта, специфичных для класса продуктов

Если у продукта есть атрибуты, специфичные для класса продуктов, их можно найти на странице продукта **Атрибуты / Глобальные атрибуты**:

![]({{site.baseurl}}/attachments/7504855/8719281.png)

## Создание для продукта атрибута, специфичного для класса продуктов

Когда созданы атрибуты классов продуктов (**Каталог / Атрибуты и классы**), эти атрибуты следует присвоить продуктам.

Пример: атрибут _Материал - Искусственный мех_, созданный на уровне класса продуктов _Мягкие игрушки_, будет задан для продукта _Пушистый Котик_:

1.  В панели управления магазина найдите продукт, которому нужно добавить атрибут, откройте его страницу и перейдите на вкладку **Атрибуты**:
    ![]({{site.baseurl}}/attachments/7504855/8719266.png)
    Откроется страница редактирования атрибутов данного продукта. 

2.  Нажмите **Глобальные атрибуты**, откроется раздел, где можно задавать/редактировать глобальные атрибуты продукта и атрибуты, специфичные для класса продуктов:
    ![]({{site.baseurl}}/attachments/7504855/8719267.png)
3.  На странице **Глобальные атрибуты** указан класс, к которому принадлежит продукт.:
    ![]({{site.baseurl}}/attachments/7504855/8719287.png)
    Если класс не задан, или продукт должен входить в другой класс, {% link "выберите нужный класс" ref_EVqNSaZy#Managingproductclasses-AssigningProductClasses %} в меню и нажмите **Сохранить**.

4.  Ниже расположен список атрибутов класса продуктов. В нашем случае, это **Атрибуты Мягкие игрушки**:
    ![]({{site.baseurl}}/attachments/7504855/8719286.png)
    Здесь представлен полный список атрибутов выбранного класса. Атрибуты с незаполненными полями значений еще не присвоены данному продукту и не показываются на странице продукта в магазине. 

5.  Если атрибут еще не присвоен продукту:
    *   нажмите на поле значения атрибута и впишите новое значение:
    *   или нажмите на кнопку меню с правой стороны поля и выберите одно из готовых значений:![]({{site.baseurl}}/attachments/7504855/8719289.png)
        В нашем примере выбрано значение _Искусственный мех_:
        ![]({{site.baseurl}}/attachments/7504855/8719273.png)
        Если для продукта необходимо задать несколько классовых атрибутов, добавьте каждый из них вручную таким же образом.

6.  Укажите область применения новых атрибутов - для всех продуктов класса или только для редактируемого продукта.
    ![]({{site.baseurl}}/attachments/7504855/8719274.png)

7.  Нажмите **Сохранить**.
    ![]({{site.baseurl}}/attachments/7504855/8719275.png)

    Атрибуты присвоены продукту и отображаются на странице продукта в магазине.

## Редактирование атрибутов классов продуктов

Как изменить название или свойства атрибута, созданного для определенного продукта:

**Способ 1:**

1.  В панели управления магазина откройте страницу **Каталог / Классы и атрибуты**.
2.  В списке классов продуктов найдите класс, к которому относится атрибут, требующий изменения. Нажмите **Редактировать атрибуты** справа от названия класса:
    ![]({{site.baseurl}}/attachments/7504855/8719257.png)
    Откроется страница редактирования атрибутов класса продуктов:
    ![]({{site.baseurl}}/attachments/7504855/8719278.png)
3.  В списке атрибутов класса найдите атрибут, который нужно изменить, и наведите на него курсор, справа появится кнопка **Изменить**:
    ![]({{site.baseurl}}/attachments/7504855/8719279.png)
4.  Чтобы изменить только название атрибута, нажмите внутри поля с названием и впишите новое название. Чтобы изменить значения атрибута (или название и значения), нажмите **Изменить**. Откроется окно **Изменить значения атрибута**.
5.  Некоторые или все значения атрибута, созданного для класса продуктов, могут автоматически применяться к всем продуктам, которые будут включены в этот класс в будущем. Для этого поставьте галочки справа от названий значений атрибутов (галочки зеленого цвета, когда включены).
6.  Нажмите **Сохранить**.

**Способ 2:**

1.  In your store's Admin area, find the product for which you want to edit a "product class"-level attribute (This can be any product that has this attribute: you will be able to extend the changes to the other products of the same product class), open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes").
4.  Find the attribute you want to edit and make any changes you require:

    *   To edit the attribute name, hover your cursor over it (the **Attribute name** field will become visible), click inside the **Attribute name** field and edit the attribute name as you require. 
    *   To edit the attribute values, edit the **Attribute value** field(s).

5.  Specify whether you want to apply the changes globally or locally:

    *   Apply value changes globally => Changes of attribute values will apply for all the products with the corresponding class.
    *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attributes list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products of the corresponding class.
6.  Click **Save changes**.

## Deleting product class attributes

Sometimes you may need to delete an attribute created at the level of a product class. You can do so using one of the following methods:

**Method 1:**

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).
2.  In the list of product classes, locate the name of the product class for which you need to delete an attribute and click on the Edit attributes (N) link opposite it.
    This opens a page where you will be able to manage attributes for this product class.
3.  In the list of product class attributes, locate the attribute you need to delete and click on the **Trash **icon opposite its name. The attribute will be marked for deletion.
4.  Click **Save changes**.
    The attribute will be deleted from the list of attributes for this product class and will be removed from the details of all the products that belong to this product class.

**Method 2:**

1.  In your store's Admin area, find any product that has the "product class"-level attribute you want to delete, open its details and click on the** Attributes** tab.
2.  On the **Attributes** tab, click Global.
3.  On the page that opens, locate the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes").
4.  Find the attribute you want to delete and click on the **Trash** icon opposite its name. The attribute will be marked for deletion.
5.  It does not matter whether the option "Apply value changes globally" is selected or not: deleting a "product class"-level attribute here will be applied globally in any case (The attribute will be deleted from the list of attributes for this product class and will be removed from the details of all the products that belong to this product class).

6.  Click **Save changes**.

_Related pages:_

*   {% link "Product classes and attributes" ref_T90ZcEpP %}
*   {% link "Managing product classes" ref_EVqNSaZy %}
*   {% link "Types of product attributes - by scope" ref_uaJk8ete %}
