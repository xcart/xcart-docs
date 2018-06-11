---
lang: ru
layout: article_with_sidebar
updated_at: '2018-06-11 14:25 +0400'
identifier: ref_1vIquXc9
title: Поиск товаров по брендам
order: 260
published: false
---
Модуль [Поиск товаров по брендам (Shop by Brand)](https://market.x-cart.com/addons/shop-by-brand.html "Shop by Brand Module") входит в _X-Cart Всё включено_, для _X-Cart Базовый_, _X-Cart Бизнес_ и _X-Cart Мультивендор_ этот модуль следует приобрести в [Маркетплейсе](https://market.x-cart.com/addons "Поиск товаров по брендам").

Модуль **Поиск товаров по брендам (Shop by Brand)** находит товары по названиям производителей и торговых марок. Модуль упрощает поиск товаров для покупателей, особенно для новых посетителей магазина, которые не знакомы с ассортиментом магазина.

{% link "Установите и активируйте модуль" ref_gpeZtm28 %}.

Перейдите по ссылке **Настройки** и установите параметры модуля:

![addon.png]({{site.baseurl}}/attachments/ref_2LetICls/addon.png)

![settings.png]({{site.baseurl}}/attachments/ref_2LetICls/settings.png)

{:.ui.compact.celled.small.padded.table} 

| Глобальный атрибут товара, определяющий его бренд | Выберите бренды из глобальных атрибутов товаров. Если в поле нет вариантов для выбора, сначала настройте глобальные атрибуты. |
| Упорядочивать список на странице брендов | Установите режим сортировки брендов по названию, по количеству товаров бренда или в выбранном администратором порядке. |
| Разбивать список брендов на страницы | Рекомендуется включить эту опцию, если в магазине представлено множество брендов. |
| Количество брендов на страницу по умолчанию | Количество брендов в списке на странице торговых марок. |
| Отображать блок со списком брендов | Включите эту опцию, чтобы секция со списком брендов отображалась на главной странице магазина. |
| Упорядочивать список в блоке | Установите режим сортировки брендов в секции на главной странице - по названию, по количеству товаров бренда или в выбранном администратором порядке. |
| Длина списка в блоке | Количество брендов в секции на главной странице. |

Don't forget to **Submit** changes when done.

When the module is enabled and configured, existing brands are collected through the store automatically based on the global attribute you specified and are displayed in the _Brands_ section (**Catalog** > **Brands**) in the admin back-end. 

![brands.png]({{site.baseurl}}/attachments/ref_2LetICls/brands.png)

Here the cart admin can change the order of appearance of the brands the way he needs. By default, the brands are sorted alphabetically. Also, it's possible to edit the existing brands and add new ones if required. 

To create a new brand click the **New brand** button, to edit an existing brand click the brand name in the list. The procedure is similar, in both cases you'll need to feel in the fields with the info and save the changes.

You can specify the following info for your brands, the only required filed being the brand name:
* **Brand name**: Use this field to specify or edit the brand name here.
* **Brand logo** : Use this field to upload a brand logo here (you can do it either via a URL or directly from your computer).
* **Description** : A brand description that will be displayed on the brand's page.
* **Meta keywords** : The keywords to be used in the keywords META tag on the category page (for SEO purposes).
* **Meta description** : The description to be used in the description META tag on the category page (for SEO purposes).
* **Clean URL** : The product page Clean URL (for SEO purposes).

The buyers will see the Brands block on the home page and on any category page on the store front-end. You can change the Brands block location using the [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Shop by Brand Module"). The brands are also added to the store main {% link "menu" ref_BDykFBbw %}. If you want to disable the brands menu you can do it in the **Content** > **Menus** section of the store admin back-end.

![home.png]({{site.baseurl}}/attachments/ref_2LetICls/home.png)

The Brands block on the store front-end displays only the brands that have products that are in stock. If you want to show the brands with the out-of-stock products, please, enable the "Show all" option for the '_How to show out of stock products_' field in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**). The brands that have no products assigned to them won't be displayed ever.

![general.png]({{site.baseurl}}/attachments/ref_2LetICls/general.png)

{% note warning %}
Enabling the "Show all" option for the '_How to show out of stock products_' field in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**) will display the out-of-stock products throughout the whole store.
{% endnote %}
