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

When using this method, you edit the details of some product and add global attributes via the **Attributes** tab of its details page. 

The process is as follows:

1.  In your store's Admin area, open the deails of any product that needs to be assigned a new global attribute and click on the** Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504857/8719303.png)
    This will open a page where you can manage attributes for this product. 
2.  Click on the __Global__ link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504857/8719304.png)
    On the page that opens there will be the **Global attributes** section where you will add new attributes on the global level:
    ![]({{site.baseurl}}/attachments/7504857/8719305.png)

3.  Use the **Global attributes** section to add information about the new attribute:
    1.  Create a new empty entry in the attributes list (This is where you will specify your attribute name and value(s)): click the "down arrow" part of the **Add attribute** button and select the type of attribute value you require (_Plain field_, _Textarea_ or _Yes/No_) from the drop-down button menu. 
        ![]({{site.baseurl}}/attachments/7504857/8719306.png)
        (For an explanation of the different attribute value field types, see {% link "Managing attribute values" ref_bTfJ9bTS %}). 
        As we are going to add the attribute  "Color" with values like "Orange", "Blue", etc., we should select the attribute value type "_Plain field_". "_Plain field_" is the default value, so we don't even need to use the drop-down menu: simply clicking **Add attribute** will create the empty fields we require:
        ![]({{site.baseurl}}/attachments/7504857/8719307.png)

    2.  Use the **Attribute name** and **Attribute option** fields to specify, respectively, the attribute name and value(s):
        ![]({{site.baseurl}}/attachments/7504857/8719308.png)

    3.  Choose whether you want to apply the changes you made locally or globally:

        *   Apply value changes globally => Changes of attribute values will apply for all the products in your store.
        *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attribute list (for example, changes of the order of attributes in the list, or removal of attributes) will affect all the products in your store.For example, choosing to apply globally the attribute value "Orange" that we added for the attribute "Color" (see the snapshot below) will result in that all the products in your store will have the attribute "Color..........Orange" in their Specification. 
        ![]({{site.baseurl}}/attachments/7504857/8719309.png)
        Note that when you apply attribute values globally, they are applied only to products that exist in the store's catalog at the time you save the changes. Any products that will be created at a later time will _not_ get these values automatically.
    4.  Click the **Save changes** button at the bottom of the screen:
        ![]({{site.baseurl}}/attachments/7504857/8719310.png)

        The attribute will be added:
        ![]({{site.baseurl}}/attachments/7504857/8719311.png)
        Now if you view the product on the storefront,  the Specification tab on its details page will show the attribute "Color..........Orange". If at step 4c you chose to apply the attribute value "Orange" globally, all the products in your store will show the same attribute as well. If you kept the option "Apply value changes locally", the attribute value "Orange" will be applied only for the product you edited (However, you will be able to find "Orange" in the list of attribute values for the attribute "Color" and apply it to other products in your store manually).

## Viewing your store's list of global attributes
