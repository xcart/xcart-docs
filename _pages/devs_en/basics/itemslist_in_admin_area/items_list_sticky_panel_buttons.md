---
title: ItemsList Sticky Panel buttons
lang: en
layout: article_with_sidebar
updated_at: 2016-11-09 16:13 +0400
identifier: ref_vHI163Zu
order: 100
---

## General structure

The panel consists of three main parts:
- The main button;
- Additional buttons (more actions);
- Custom buttons.

Each of the parts is an array element returned by the method `\XLite\View\StickyPanel\ItemsListForm::defineButtons()`. `Custom buttons` - Each additional button must be a separate element.  

### The main button

(See `\XLite\View\StickyPanel\ItemForm::defineButtons()`, )

### Additional buttons (more actions).

Is in fact a group (http://getbootstrap.com/components/#btn-groups). Each element of the group may be either a regular button or a dropdown list (http://getbootstrap.com/components/#btn-dropdowns). The elements are returned by the method `\XLite\View\StickyPanel\ItemsListForm::defineAdditionalButtons()` as an array, in  which every element is a button within the group. Buttons are defined declaratively meaning to say that it is not AView objects for buttons that need to be created, but data for their creation need to be returned as simple arrays. For each button, three array elements are processed:

- class - the class whose object the button will be;
- params - widget parameters used for the creation of the widget;
- position - absolute position of the button within the group.

For each element of the group, the presence of a `more-action` substring is required in the `style` parameter among the widget parameters.

#### Dropdown list

To add a dropdown list, it is necessary to create a class extended from `\XLite\View\Button\Dropdown\ADropdown` and use it as a class for a button within the group. The elements of the list are declared in the method `\XLite\View\Button\Dropdown\ADropdown::defineAdditionalButtons()` following the same principle as in `\XLite\View\StickyPanel\ItemsListForm::defineAdditionalButtons()`. For the list to be expanded upwards, which is the thing you require the most often for the panel, it is necessary to return the string `dropup` from the method `\XLite\View\Button\Dropdown\ADropdown::getDefaultDropDirection()` (or send the widget parameter `\XLite\View\Button\Dropdown\ADropdown::PARAM_DROP_DIRECTION` with that value in the `params` field of the group element).

To add a divider to the list, it is necessary to add the following element (with the respective value of `position`):

```
[
    'class'    => 'XLite\View\Button\Dropdown\Divider',
    'params'   => [
        'style'      => 'more-action',
    ],
    'position' => 1,
]
```

For each item in the list, the presence of a `more-action` substring is required in the `style` parameter among the widget parameters.


#### Reaction to a change in the list (selection of entries)

There may be three types of reaction:

- Group element is active at all times;
- Group element is not active, but is activated when entries are selected;
- Group element is hidden and is revealed when entries are selected.

The choice of the type of reaction is made by adjusting the `style` parameter in the `params` field of a group element. For a button to be active at all times, it is necessary that the substring `always-enabled` is present in this parameter. The second type of reaction is the default variant; it does not require any additional settings. For the third variant it is necessary that `style` parameter contains the substring `hide-on-disable hidden`.

The above is also true for items in a dropdown list.

## Custom buttons

To add custom buttons, you simply need to add them to the array returned by the method `\XLite\View\StickyPanel\ItemsListForm::defineButtons()`. The thing to be added is objects, the children of `\XLite\View\Button\AButton`. However, if you need to display not a button, but something else, you can add an object of any widget.

For a button to be active at all times, you need to add the substring `always-enabled` to its widget parameter `style`.
