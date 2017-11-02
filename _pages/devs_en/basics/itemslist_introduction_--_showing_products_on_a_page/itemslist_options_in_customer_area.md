---
title: ItemsList options in customer area
identifier: ref_uW8ghAid
updated_at: 2015-01-12 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
---

## Introduction

This article is in advanced explanation of how to use {% link "ItemsLists in customer area" ref_MRidEzuz %}. It explains how to enable/disable pagination, sorting options, display options etc.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [ItemsList options](#itemslist-options)

## ItemsList options

Main method that defines what options that exist in an **ItemsList** is `defineWidgetParams()`. See its implementation in the `\XLite\View\ItemsList\Product\Customer\ACustomer` class as an example: 

```php
protected function defineWidgetParams()
{
    parent::defineWidgetParams();

    $this->widgetParams += array(
        static::PARAM_WIDGET_TYPE => new \XLite\Model\WidgetParam\Set(
            'Widget type', static::WIDGET_TYPE_CENTER, true, $this->widgetTypes
        ),
        static::PARAM_DISPLAY_MODE => new \XLite\Model\WidgetParam\Set(
            'Display mode', static::DISPLAY_MODE_GRID, true, array()
        ),
        static::PARAM_SHOW_DISPLAY_MODE_SELECTOR => new \XLite\Model\WidgetParam\Checkbox(
            'Show "Display mode" selector', true, true
        ),
        static::PARAM_SHOW_SORT_BY_SELECTOR => new \XLite\Model\WidgetParam\Checkbox(
            'Show "Sort by" selector', true, true
        ),
        static::PARAM_GRID_COLUMNS => new \XLite\Model\WidgetParam\Set(
            'Number of columns (for Grid mode only)', 3, true, $this->getGridColumnsRange()
        ),
        static::PARAM_ICON_MAX_WIDTH => new \XLite\Model\WidgetParam\Int(
            'Maximal icon width', 0, true
        ),
        static::PARAM_ICON_MAX_HEIGHT => new \XLite\Model\WidgetParam\Int(
            'Maximal icon height', 0, true
        ),
    );
}
```

Definition of parameters is done during widget initialization and if you want to override some values, you can do this in the `setWidgetParams()` method. We will take a look at this method a bit later, but for now let us have a look at default parameters of product **ItemsList**:

*   `PARAM_WIDGET_TYPE` defines whether this ItemsList will be displayed in central area or in sidebar menu;

*   `PARAM_DISPLAY_MODE` defines a default display mode for an ItemsList. Generally, it can be **Grid**, **List** or **Table**;

*   `PARAM_SHOW_DISPLAY_MODE_SELECTOR` defines whether **Display Mode** selector must be shown or not;

*   `PARAM_SHOW_SORT_BY_SELECTOR` defines whether **Sort By** selector must be shown or not similar to `PARAM_SHOW_DISPLAY_MODE_SELECTOR` option;

*   `PARAM_GRID_COLUMNS` defines how many columns should products be displayed in. It works for **Grid** display mode only;

*   `PARAM_ICON_MAX_WIDTH` and `PARAM_ICON_MAX_HEIGHT` define a size of product **thumbnails** in this ItemsList.

In our mods, we sometimes want to disable some of these parameters or define another default value. It can be done in the `setWidgetParams()` method of an ItemsList widget: 

```php
public function setWidgetParams(array $params)
{
	parent::setWidgetParams($params);

	// setting thumbnail sizes
	$this->widgetParams[static::PARAM_ICON_MAX_WIDTH]->setValue(120);
	$this->widgetParams[static::PARAM_ICON_MAX_HEIGHT]->setValue(120);

	// removing Display Mode selector
	unset($this->widgetParams[self::PARAM_SHOW_DISPLAY_MODE_SELECTOR]); 

	// another way of removing Display Mode selector
	$this->widgetParams[self::PARAM_SHOW_SORT_BY_SELECTOR]->setValue(false);
}

```