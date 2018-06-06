---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-06 11:48 +0400'
identifier: ref_1Iu2dCz7
title: Категории товаров
order: 130
published: false
---
Распределение товаров по категориям упрощает покупателям поиск и нивигацию по магазину. Категории создаются двумя способами - путём {% link "импорта" ref_AwaMbiEf %}и вручную. 

* [Создание категории](создание-категори)
* [Создание подкатегории](создание-подкатегории)
* [Добавление товара в категорию](добавление-товара-в-категорию)
* [Создание рекомендуемых товаров](создание-рекомендуемых-товаров)
* [Отображение категорий в магазине](отображение-категорий-в-магазине)


## Создание категории 

На странице **Каталог / Категории** нажмите **Новая категория** и в появившемся поле напишите название новой категории. Нажмите **Сохранить**. 

![new.png]({{site.baseurl}}/attachments/ref_6rpDdput/new.png)

Новая категория появилась вверху списка. В магазине категории отображаются в том же порядке, что и в панели администратора. Если нужно, переместите категорию на другую позицию. 

![list.png]({{site.baseurl}}/attachments/ref_6rpDdput/list.png)

Для редактирования свойств новой категории нажмите на название. Общие настройки категории находятсятся на вкладке **Информация о категории**. На вкладках **Подкатегории**, **Товары** и **Рекомендуемые товары** происходит управление подкатегориями и товарами, входящими в эту категорию.

![edit-category.png]({{site.baseurl}}/attachments/ref_6rpDdput/edit-category.png)

### Информация о категории

* **Название категории** - одно и то же название отображается в интерфейсе и администратора и покупателей.
* **Родительская категория** - Если выбрано значение **Главная категория**, новая категория будет одной из главных категорий, которые отображаются в секции **Категории** на главной странице магазина. Если выбрано **название категории**, новая категория будет подкатегорией выбранной категории. 
* **Настроить показ заголовка для категории** - Настройка определяет, показывать или не показывать название категории на странице этой категории.
* **Изображение категории** - Установите изображение категории, покупатели увидят эту картинку над названием категории на главной странице магазина.
* **Верхний баннер** - баннер отображается сверху на странице категории.
* **Описание** - Информация о категории, которую покупатели увидят на странице категории.
* **ЧПУ** - Семантическая ссылка на категорию, необходимая для поисковой оптимизации.
* **Заголовок страницы категории** - Название категории на вкладке браузера, в которой открыта эта категория. Если поле не заполнено, будет использовано название категории.
* **Meta ключевые слова** - ключевые слова в мета теге _keywords_ страницы категории, необходимые для поисковой оптимизации.
* **Meta описание** - Описание в мета теге _description_ страницы категории, необходимое для поисковой оптимизации.
* **Мета теги Open Graph** - Мета теги стандарта _Open Graph_ для передачи страницы категории сервису _Facebook_.
* **Группы пользователей** - Только члены выбранных групп пользователей будут видеть эту категорию в магазине. Покупатели, входящие в другие группы пользователей или не входящие ни в какую группу, не увидят категорию и её товары.
* **Включено** - Опция включает и отключает категорию. Категория отображается или не отображается в магазине.
* **Классы для фильтра продуктов** - Свойства товаров, которые будут представлены в секции фильтров на странице категории.

Когда категория настроена, нажмите **Обновить** для сохранения изменений.

## Adding a subcategory

To add a subcategory you should do almost all the same as to add a category, as a subcategory is a category in fact but of a lower level. So go to the Subcategories tab on the category details page, click the New Category button and follow the procedure described [above](https://kb.x-cart.com/products/categories.html#adding-a-new-category "Product Categories"). 

![subcategory.png]({{site.baseurl}}/attachments/ref_6rpDdput/subcategory.png)

## Adding product to a category

To add a product to a category go to the _Product_ tab on the category details page and click the **Add product** button. You'll be redirected to the _Add products_ page (**Catalog** > **Products** > **Add products**) where you can {% link "add products" ref_fhzzxDTy %} to the category one by one. As you understand it is annoying to update/add each new product via the Admin interface. Instead, you can import products as described in {% link "How to import data" ref_glDc6kA1 %} to make the process faster.

![product.png]({{site.baseurl}}/attachments/ref_6rpDdput/product.png)

## Adding featured products

Use the _Featured Products_ tab on the category details page to add featured products to a category. For more info on the featured products set-up please fere to {% link "Adding featured products" ref_4iFdpTdv %}.

## Categories representation

By default the categories block is displayed in the left side column on the home page. 

![home.png]({{site.baseurl}}/attachments/ref_6rpDdput/home.png)

It's possible to change the categories block location using the [webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Product Categories"). Also it's possible to remove the categories block at all and add categories to the top menu. You'll get a horizontal categories representation this way. 

To do so you should:

1. Add your categories as menus on the Menus page (**Content** > **Menus**) in the store back-end as described in {% link "Adding new items to your store's menus" ref_BDykFBbw %}.

   ![menus.png]({{site.baseurl}}/attachments/ref_6rpDdput/menus.png)

   {% note info %}
   If you want to add a link to a page within your store (e.g. the category page), you can specify it as ?target=category&category_id=4 (relative path) or as http://www.your_store_url.com/cart.php?target=category&category_id=4 (absolute path).
   Also the '{_category_name_}' shortcut value will lead to the category page.
   {% endnote %}

   Make sure the category menus are enabled and go in a proper order. Turn all unnecessary menus off to make the menu bar more attractive.

2. Add a submenu if necessary

   ![submenu.png]({{site.baseurl}}/attachments/ref_6rpDdput/submenu.png)

3. Change the home page and default page layout on the _Layout_ page (**Look & feel** > **Layout**) in the store back-end.

   ![layout.png]({{site.baseurl}}/attachments/ref_6rpDdput/layout.png)

4. Check your new site layout.

   ![home_1.png]({{site.baseurl}}/attachments/ref_6rpDdput/home_1.png)
   
{% note info%}
It's also possble to move the categories list to the horizontal bar using the [Horizontal Flyout Categories Menu](https://market.x-cart.com/addons/horizontal-flyout-categories-menu.html "Product Categories") module. It's easier in set-up.
{% endnote %}
