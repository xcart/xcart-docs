---
title: Как переместить описание категории под список продуктов
identifier: ref_hOAZXJPp
updated_at: 2016-05-18 00:00
layout: article_with_sidebar
lang: ru
version: X-Cart 5.2.16 and earlier
categories:
- How-To Articles
- Outdated
---

This article describes how to move category description below products list.

Для реализации требуемых изменений, понадобится сделать описанные ниже модификации темплейтов в Х-Карт, а также установить и настроить модуль "Banner System" ([http://market.x-cart.com/addons/banner-system.html](http://market.x-cart.com/addons/banner-system.html)).

## Step-by-step guide

1.  Выполнение модификации темплейтов в Х-Карт

    1.1\. Создайте новый темплейт, например:

    _skins/theme_tweaker/default/en/center/bottom/category_description.tpl_

    Содержимое нового темплейта:

    ```php
    {**
     * @ListChild (list="center.bottom", weight="300")
     *}
    {if:getTarget()=#category#}
    <div class="category-description">{getDescription():h}</div>
    {end:}
    ```

    Новый темплейт будет использоваться для отображения описания категории в нижней центральной части страницы, в составе списка "center.bottom".

    1.2\. Примените к базе X-Cart следующий SQL запрос:

    ```php
    INSERT INTO xc_theme_tweaker_template (template, date) VALUES ("theme_tweaker/default/en/center/bottom/category_description.tpl", UNIX_TIMESTAMP());
    ```

    После этого появится возможность редактировать новый темплейт непосредственно в администраторской части X-Cart, на странице "Look & Feel " в разделе "Webmaster mode", или используя инструмент "Webmaster mode".

    1.3\. Выполните ре-генерацию кэша в X-Cart.

    1.4\. Модифицируйте код стандартного темплейта при помощи инструмента "Webmaster mode":

    _skins/default/en/category_description.tpl_

    Закомментируйте код, который выводит описание категории, заключив его в специальные тэги {* *}, например:

    ```php
    {*
    <div class="category-description">{getDescription():h}</div>
    *}
    ```

    Это позволит убрать описание категории из верхней центральной части страницы.

2.  Настройка баннера для категории

    2.1\. Установите и активируйте модуль "Banner System"

    2.2\. Удалите картинку из описания категории, и настройте эту же самую картинку как баннер, который будет показываться в верхней центральной части на странице данной категории.

    На скриншотах ниже приведен пример настройки баннера для категории:

    ![2016-05-05 15-35-25 - Banner - Apparel category.png]({{site.baseurl}}/attachments/9307060/9439719.png)

    ![2016-05-05 15-34-10 - Banner - Apparel category.png]({{site.baseurl}}/attachments/9307060/9439718.png)

Обратите внимание, что новый темплейт включается в список "center.bottom" с весовым коэффициэнтом weight="300". Таким образом, новый темплейт будет отображаться после виджета "Category products" (_XLite\View\ItemsList\Product\Customer\Category\Main : default/en/items_list/body.tpl_, для которого задан весовой коэффициэнт weight="200"), и перед виджетом "Bestseller products" (_XLite\Module\CDev\Bestsellers\View\Bestsellers : default/en/items_list/body.tpl_, для которого задан весовой коэффициэнт weight="400"):

 _classes/XLite/View/ItemsList/Product/Customer/Category/Main.php_

```php
* @ListChild (list="center.bottom", zone="customer", weight="200")
```

_classes/XLite/Module/CDev/Bestsellers/View/Bestsellers.php_

```php
* @ListChild (list="center.bottom", zone="customer", weight="400")
```

На скриншотах ниже показано, как с помощью инструмента "Webmaster mode" определить, какие виджеты и темплейты используются для отображения данных на странице категории:

![2016-05-05 14-35-51 - Webmaster mode - Category description.png]({{site.baseurl}}/attachments/9307060/9439716.png)

![2016-05-05 14-50-29 - Webmaster mode - Category products.png]({{site.baseurl}}/attachments/9307060/9439717.png)
