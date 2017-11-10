---
title: Sticky panel buttons (admin area, items list)
published: false
lang: ru
layout: article_with_sidebar
updated_at: 2016-09-28 17:29 +0400
identifier: ref_v4SqT9xD
order: 100
version: X-Cart 5.3.x
---

## Общая структура

Панель состаит из трех основных частей:
- Основная кнопка;
- Additional buttons (more actions);
- Custom buttons.

Каждая часть - это элемент массива, возвращаемый методом `\XLite\View\StickyPanel\ItemsListForm::defineButtons()`. `Custom buttons` - Каждая дополнительная кнопка должна быть отдельным элементом.  

### Основная кнопка

(см.: `\XLite\View\StickyPanel\ItemForm::defineButtons()`, )

### Additional buttons (more actions).

Представляет из себя группу (http://getbootstrap.com/components/#btn-groups). При этом кажый элемент группы может быть как простой кнопкой, так и раскрывающимся списком (http://getbootstrap.com/components/#btn-dropdowns). Элементы объявляются в методе `\XLite\View\StickyPanel\ItemsListForm::defineAdditionalButtons()` как массив, в котором каждый элемент - это кнопка внутри группы. Кнопки объявляеются декларативно, то есть не объектами AView, а простыми массивами. Для каждой кнопки обрабатывается три элемента массива:

- class - класс, объектом которого будет кнопка;
- params - параметры виджета, используемые для создания виджета;
- position - абсолютное положение кнопки в группе.

Для каждого элеметна группы обязятельно наличие подстроки `more-action` в параметре `style` среди параметров виджета.

#### Раскрывающийся список

Для того, чтобы добавить раскрывающийся список, необходимо создать класс, унаследованный от `\XLite\View\Button\Dropdown\ADropdown`, и использовать его в качестве класса для кнопки в группе. Элементы списка объявляются в методе `\XLite\View\Button\Dropdown\ADropdown::defineAdditionalButtons()` по такому же принципу, как и в `\XLite\View\StickyPanel\ItemsListForm::defineAdditionalButtons()`. Для того, чтобы список раскрывался вверх, что чаще всего и нужно для панели, необходимо из метода `\XLite\View\Button\Dropdown\ADropdown::getDefaultDropDirection()` вернуть строку `dropup` (либо передать виджет параметр `\XLite\View\Button\Dropdown\ADropdown::PARAM_DROP_DIRECTION` с этим значением в поле `params` элемента группы).

Для добавления разделителя в список необходимо добавить элемент (с соответствующим значением `position`):

```
[
    'class'    => 'XLite\View\Button\Dropdown\Divider',
    'params'   => [
        'style'      => 'more-action',
    ],
    'position' => 1,
]
```

Для каждого пункта списка обязятельно наличие подстроки `more-action` в параметре `style` среди параметров виджета.


#### Реакция на изменения в списке (выбор строк)

Может быть три реакции:

- Элемент группы активен всегда;
- Элемент неактивен, при выборе строк - активируется;
- Элемент отсутствует, при выборе строк - появляется.

Управление происходит через изменеие парамтра `style` в поле `params` элемента группы. Для того чтобы кнопка была всегда активна, необходимо, что бы в этом параметре присутсвовала подстрока `always-enabled`. Второй вариант считается основным и не требует дополнительных настроек. Для третьего варианта необходимо, чтобы в `style` была подстрока `hide-on-disable hidden`.

Это также справедливо для пунктов раскрывающегося списка.

## Custom buttons

Для добавление дополнительных кнопок их нужно просто добавить в массив, возвращаемый методом `\XLite\View\StickyPanel\ItemsListForm::defineButtons()`. Добавлять нужно объекты, наследники `\XLite\View\Button\AButton`. Впрочем, если нужно отобразить не кнопку, то можно добавить объект любого виджета.

Для того чтобы кнопка была всегда активна, необходимо добавить подстроку `always-enabled` в её виджет параметр `style`.
