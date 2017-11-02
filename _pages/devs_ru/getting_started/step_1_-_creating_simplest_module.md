---
title: Шаг 1 - создание простейшего модуля для X-Cart
lang: ru
layout: article_with_sidebar
updated_at: 2017-10-13 15:49 +0400
identifier: ref_TzTBkZ8i
order: 100
keywords:
- Developers docs
---

## Введение

Данное руководство описывает процесс создания простого модуля для магазина X-Cart.

## Содержание

*   [Выбор уникальных свойств](#section-2)
*   [Создание модуля вручную](#section-3)
*   [Создание модуля с помощью CLI](#cli)
*   [Создание дистрибутива модуля](#section-4)

## Выбор уникальных свойств

Прежде чем начать работу, необходимо задать два уникальных параметра:

*   идентификатор разработчика 
*   идентификатор модуля

**Идентификатор разработчика** показывает, что модуль написан именно вами. Например, **CDev** и **XC** - это идентификаторы модулей, разработанных командой X-Cart. Идентификатор модуля - это, по сути, название вашего модуля, например, **Australia Post**  или **Фильтры Продуктов**.

Идентификатор всегда начинается с заглавной буквы и включает до 64 букв и цифр. 

## Создание модуля вручную

1. В директории установки магазина создайте новую папку с названием `<X-Cart>/classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/`. Обратите внимание, что  `<YOUR-DEVELOPER-ID>` и `<YOUR-MODULE-ID>` - это ваши идентификаторы разработчика и модуля.

2. В папке `<X-Cart>/classes/XLite/Module/<YOUR-DEVELOPER-ID>/<YOUR-MODULE-ID>/` создайте файл Main.php следующего содержания: 

```php
<?php
namespace XLite\Module\<YOUR-DEVELOPER-ID>\<YOUR-MODULE-ID>;

abstract class Main extends \XLite\Module\AModule
{
    /**
     * Author name
     *
     * @return string
     */
    public static function getAuthorName()
    {
        return 'Your name';
    }

    /**
     * Module name
     *
     * @return string
     */
    public static function getModuleName()
    {
        return 'Your module name';
    }

    /**
     * Get module major version
     *
     * @return string
     */
    public static function getMajorVersion()
    {
        return '5.3';
    }

    /**
     * Module version
     *
     * @return string
     */
    public static function getMinorVersion()
    {
        return 0;
    }

    /**
     * Module description
     *
     * @return string
     */
    public static function getDescription()
    {
        return 'Your module description';
    }
}
```

В секции файла `namespace` замените значения `<YOUR-DEVELOPER-ID>` и `<YOUR-MODULE-ID>` на свои идентификаторы разработчика и модуля.

3. Задайте методы `getDescription()`, `getModuleName()` и `getAuthorName()` чтобы они возвращали ваши данные - описание модуля, название модуля и автора модуля.

4. Обновите кеш магазина на странице управления кэшем в зоне администратора:
	![1.jpg]({{site.baseurl}}/attachments/ref_TzTBkZ8i/1.jpg)
    
5. После обновления магазина модуль появится в списке установленных модулей на странице "Мои модули" в зоне администратора.

## Создание модуля с помощью CLI

{% link "Инструмент командной строки X-Cart" ref_kC6eLh5V %}

## Создание дистрибутива модуля

Чтобы создать дистрибутив модуля:

1. Активируйте опцию `developer_mode` в файле `<X-Cart>/etc/config.php` (установите ее значение `On`).

2. После этого у каждого модуля в на странице "Мои модули/Установленные модули" появится кнопка "Упаковать":

	![2.jpg]({{site.baseurl}}/attachments/ref_TzTBkZ8i/2.jpg)

3. Нажав кнопку **Упаковать**, вы получите дистрибутив модуля.
