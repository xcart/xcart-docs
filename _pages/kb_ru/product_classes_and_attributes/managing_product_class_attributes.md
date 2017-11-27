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

When using this method, you edit the details of a specific product belonging to the product class "Plates" and add "product class"-level attributes via the **Attributes** tab of its details page. 

The process is as follows:

1.  In your store's Admin area, find the product for which you want to add a new attribute, open its details and click on the** Attributes** tab:
    ![]({{site.baseurl}}/attachments/7504855/8719266.png)
    This will open a page where you can manage attributes for this product. 
2.  Click on the Global link at the top of the page to access the subsection where you can add and assign global and "product class"-level attributes to this product:
    ![]({{site.baseurl}}/attachments/7504855/8719267.png)
3.  On the page that opens, make sure that the product has been assigned an appropriate product class:
    ![]({{site.baseurl}}/attachments/7504855/8719268.png)
    (If the product does not have a product class assigned, or needs to be assigned a different product class, take a moment to {% link "assign an appropriate product class to it" ref_EVqNSaZy#assigning-product-classes %}).
4.  Add attributes via the page section intended for managing the product's "product class"-level attributes (The title of this section is formed based on the name of the product class according to the pattern "`<Product class name>` attributes"; in our example, this will be "Plates attributes"):
    ![]({{site.baseurl}}/attachments/7504855/8719269.png)

    1.  Create a new empty entry in the attributes list (This is where you will specify your attribute name and value(s)): click the "down arrow" part of the **Add attribute** button and select the type of attribute value you require (_Plain field_, _Textarea_ or _Yes/No_) from the drop-down button menu. 
        ![]({{site.baseurl}}/attachments/7504855/8719270.png)
        (For an explanation of the different attribute value field types, see {% link "Managing attribute values" ref_bTfJ9bTS %}). 
        As we are going to add the attribute  "Print color.......Orange", we should select the attribute value type "_Plain field_". "_Plain field_" is the default value, so we don't even need to use the drop-down menu: simply clicking **Add attribute** will create the empty fields we require:
        ![]({{site.baseurl}}/attachments/7504855/8719271.png)
    2.  Use the **Attribute name** and **Attribute option** fields to specify, respectively, the attribute name and value(s):
        ![]({{site.baseurl}}/attachments/7504855/8719273.png)
    3.  Choose whether you want to apply the changes you made locally or globally:

        *   Apply value changes globally => Changes of attribute values will apply for all the products with the corresponding class.
        *   Apply value changes locally => Changes of attribute values will affect only this product. Changes of attribute names and of the attribute list (for example, changes of the order of attributes in the list or removal of attributes) will affect all the products of the corresponding class.
        For example, choosing to apply globally the attribute value "Orange" that we added for the attribute "Print color" (see the snapshot below) will result in that all the products that currently belong to the product class "Plates" will have the attribute "Print color..........Orange" in their Specification. 
        ![]({{site.baseurl}}/attachments/7504855/8719274.png)
        Note that when you apply attribute values globally, they are applied only to products that have the same product class assigned at the time you save the changes. Any products to which the product class in question will be assigned at a later time will _not_ get these values automatically.
    4.  Click the **Save changes** button at the bottom of the screen:
        ![]({{site.baseurl}}/attachments/7504855/8719275.png)
        The attribute will be added:
        ![]({{site.baseurl}}/attachments/7504855/8719276.png)
        Now if you view the product on the storefront,  the Specification tab on its details page will show the attribute "Print color..........Orange". If at step 4c you chose to apply the attribute value "Orange" globally, all the products of the product class "Plates" will show the same attribute as well. If you kept the option "Apply value changes locally", the attribute value "Orange" will be applied only for the product you edited (However, you will be able to find "Orange" in the list of attribute values for the attribute "Print color" and apply it to other products of the product class "Plates" manually).

## Viewing the list of attributes configured for a product class
