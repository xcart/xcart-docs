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

X-Cart автоматически находит бренды по глобальным атрибутам, указанным в настройках модуля. Список торговых марок отображается в разделе **Каталог / Бренды** в панели управления магазина. 

![brands.png]({{site.baseurl}}/attachments/ref_2LetICls/brands.png)

Список составлен в алфавитном порядке и отображается одинаково в интерфейсе администратора и покупателей. На странице **Каталог / Бренды** администратор может изменить порядок следования брендов в списке, редактировать и добавлять новые бренды. 

Нажмите **Новый бренд**, чтобы _создать_ бренд. 

Нажмите на **название бренда** в списке, чтобы _редактировать_ существующий бренд.

Информация о брендах:
* **Бренд**: Название торговой марки. Это обязательное поле.
* **Логотип**: Загрузите изображение бренда по ссылке или с компьютера.
* **Описание**: Информация, которая будет отображаться на странице бренда в магазине.
* **Meta ключевые слова**: Ключевые слова в мета-тэге keywords на странице категории (для поисковой оптимизации).
* **Meta описание**: Описание бренда в мета-теге description на странице категории (для поисковой оптимизации).
* **ЧПУ**: Семантическая ссылка на страницу бренда (для поисковой оптимизации).

The buyers will see the Brands block on the home page and on any category page on the store front-end. You can change the Brands block location using the [Webmaster mode](https://devs.x-cart.com/webinars_and_video_tutorials/using_webmaster_mode_in_x-cart_5.html "Shop by Brand Module"). The brands are also added to the store main {% link "menu" ref_BDykFBbw %}. If you want to disable the brands menu you can do it in the **Content** > **Menus** section of the store admin back-end.

![home.png]({{site.baseurl}}/attachments/ref_2LetICls/home.png)

The Brands block on the store front-end displays only the brands that have products that are in stock. If you want to show the brands with the out-of-stock products, please, enable the "Show all" option for the '_How to show out of stock products_' field in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**). The brands that have no products assigned to them won't be displayed ever.

![general.png]({{site.baseurl}}/attachments/ref_2LetICls/general.png)

{% note warning %}
Enabling the "Show all" option for the '_How to show out of stock products_' field in the {% link "Customer Zone settings" ref_qAZlJxZm %} (**Store setup** > **Cart & Checkout**) will display the out-of-stock products throughout the whole store.
{% endnote %}
