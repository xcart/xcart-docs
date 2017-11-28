---
lang: ru
layout: article_with_sidebar
updated_at: '2017-11-28 17:23 +0400'
identifier: ref_KT3iuuSv
title: Работа с группами атрибутов
order: 70
published: false
---
Для работы с большим количеством глобальных атрибутов и атрибутов классов продуктов удобно разделить все атрибуты на группы. Названия групп атрибутов будут служить заголовками списков атрибутов как в магазине:

![]({{site.baseurl}}/attachments/7504788/7602420.png)

так и в панели управления магазина:

![]({{site.baseurl}}/attachments/7504788/7602470.png)

Данная статья рассматривает следующие вопросы:

*   [Создание групп атрибутов](#adding-attribute-groups);
*   [Включение атрибутов в группы](#assigning-attributes-to-an-attribute-group);
*   [Редактирование групп атрибутов](#editing-attribute-groups);
*   [Удаление групп атрибутов](#deleting-attribute-groups).

## Создание групп атрибутов

1.  В панели управления магазина откройте страницу **Каталог / Классы и атрибуты**.

2.  В зависимости от того, группу каких атрибутов вы создаете, нажмите **Редактировать атрибуты** в строке _Глобальные атрибуты_ или в строке определенного класса продуктов:
    ![]({{site.baseurl}}/attachments/7504788/8719346.png)
    Откроется страница редактирования атрибутов и групп атрибутов:
    ![]({{site.baseurl}}/attachments/7504788/8719347.png)
    
3.  Нажмите **Управление группами атрибутов**. 
    ![]({{site.baseurl}}/attachments/7504788/8719348.png)
    Откроется окно **Управление группами атрибутов**: 
    ![]({{site.baseurl}}/attachments/7504788/8719349.png)
    
4.  Нажмите **Новая группа**, появится новая пустая строка:
    ![]({{site.baseurl}}/attachments/7504788/8719350.png)

5.  В новом поле напишите название группы атрибутов:
    ![]({{site.baseurl}}/attachments/7504788/8719351.png)
    
6.  Нажмите **Сохранить**:
    ![]({{site.baseurl}}/attachments/7504788/8719352.png)

Создана группа атрибутов, но в нее пока не входит ни один атрибут. 

## Включение атрибутов в группы

Когда группа создана, нужно заполнить ее атрибутами. Это можно сделать на странице **Каталог / Классы и атрибуты** во время создания или редактирования атрибута:

*   Группу для атрибута можно выбрать во время создания нового атрибута:
    ![]({{site.baseurl}}/attachments/7504788/8719353.png)
*   Атрибут можно включить в одну из групп во время редактирования атрибута:
    ![]({{site.baseurl}}/attachments/7504788/8719354.png)

## Редактирование групп атрибутов

It is possible to rename any existing attribute group and change the order in which attribute groups appear on the page.

Here's how this can be done:

1.  In your store's Admin area, go to the **Classes & attributes** section (**Catalog > Classes & attributes**).

2.  Go to the appropriate list of attributes and attribute groups by clicking on the Edit attributes (N) link. For example, if we want to edit a group of global attributes, we should use the link opposite the _Global attributes_ title:
    ![]({{site.baseurl}}/attachments/7504788/8719356.png)
    
3.  On the page that opens, click the **Manage groups** button:
    ![]({{site.baseurl}}/attachments/7504788/8719357.png)
    A popup titled **Manage attribute groups** will appear.
    ![]({{site.baseurl}}/attachments/7504788/8719355.png)

4.  Use the controls of the **Manage attribute groups** popup for editing:

    *   To rename a group, click on its name. The group name field will become editable:
        ![]({{site.baseurl}}/attachments/7504788/8719358.png)
        Make the changes you require and click **Save changes**. The name of the attribute group will be updated.
    *   To change the order of attribute groups on the list, simply drag and drop the items to their new positions. To drag an item, place your mouse cursor over the four-headed arrow to the left of its name (the cursor will change to a four headed arrow), hold down the mouse button and drag the item to a new position in the list.
        ![]({{site.baseurl}}/attachments/7504788/8719360.png)
        After rearranging the attribute groups as you require, be sure to click **Save changes**. The changes will be applied.

## Deleting attribute groups

When you no longer need a certain attribute group, you can delete it. Note that deleting a group does not delete the attributes that were assigned to it: after a group has been deleted, the attributes from the group will appear among other attributes having no associated groups.

To delete an attribute group:

1.  In your store's Admin area, go to the Classes & attributes section (**Catalog > Classes & attributes**).

2.  Go to the appropriate list of attributes and attribute groups by clicking on the Edit attributes (N) link. For example, if we want to delete a group of global attributes, we should use the link opposite the _Global attributes_ title:
    ![]({{site.baseurl}}/attachments/7504788/8719356.png)
    
3.  On the page that opens, click the **Manage groups** button:
    ![]({{site.baseurl}}/attachments/7504788/8719357.png)
    A popup titled **Manage attribute groups** will appear.
    
4.  In the **Manage attribute groups** popup, locate the group that needs to be deleted and click on the Trash icon opposite its name:
    ![]({{site.baseurl}}/attachments/7504788/8719359.png)
    The group will be marked for deletion.
    
5.  Click **Save changes**. The group will be deleted. Any attributes assigned to this group will become unassigned.

_Related pages:_

*   {% link "Product classes and attributes" ref_T90ZcEpP %}
*   {% link "Types of product attributes - by scope" ref_uaJk8ete %}

