---
lang: en
layout: article_with_sidebar
updated_at: '2015-01-12 00:00'
title: ItemsList options in customer area
identifier: ref_uW8ghAid
categories:
  - Developer docs
published: true
order: 100
---
## Introduction

This article is in advanced explanation of how to use {% link "ItemsLists in customer area" ref_MRidEzuz %}. It explains how to enable/disable pagination, apply some sorting or display options, etc.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [ItemsList options](#itemslist-options)

## ItemsList options

Main method that defines options of an **ItemsList** is `defineWidgetParams()`. See its implementation in the `\XLite\View\ItemsList\Product\Customer\ACustomer` class as an example: 

```php
protected function defineWidgetParams()
{
    parent::defineWidgetParams();

    $this->widgetParams += array(
        static::PARAM_WIDGET_TYPE => new \XLite\Model\WidgetParam\Set(
            'Widget type', static::WIDGET_TYPE_CENTER, true, $this->widgetTypes
        ),
        static::PARAM_DISPLAY_MODE => new \XLite\Model\WidgetParam\TypeSet(
            'Display mode', $this->getDefaultDisplayMode(), true, array()
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

These parameters are defined during widget initialization and you can override some values in the `setWidgetParams()` method. We will take a look at this method a bit later, but for now let us have a look at default parameters of product **ItemsList**:

*   `PARAM_WIDGET_TYPE` defines whether this ItemsList will be displayed in central area or in sidebar menu. By default, it will be displayed in the center; 

*   `PARAM_DISPLAY_MODE` defines a default display mode for an ItemsList. Generally, it can be **Grid**, **List** or **Table**. By default, an ItemsList will be displayed according to the 'Default display mode for products list' option in 'Store setup > Cart & checkout' section in admin area;

*   `PARAM_SHOW_DISPLAY_MODE_SELECTOR` defines whether **Display Mode** selector must be shown or not. It is 'true' by default;

*   `PARAM_SHOW_SORT_BY_SELECTOR` defines whether **Sort By** selector must be shown or not. It is 'true' by default as well;

*   `PARAM_GRID_COLUMNS` defines how many columns of products should be displayed in **Grid** mode. It is 3 by default;

*   `PARAM_ICON_MAX_WIDTH` and `PARAM_ICON_MAX_HEIGHT` define a size of product **thumbnails** in this ItemsList. By default, these values are 0, which means that actual values will be defined based on ItemsList's type. These numbers are defined in the `\XLite\View\ItemsList\Product\Customer\ACustomer::getIconSizes()` method.

In our mods, we sometimes want to disable some of these parameters or define another values for them. It can be done in the `setWidgetParams()` method of an ItemsList widget: 

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
