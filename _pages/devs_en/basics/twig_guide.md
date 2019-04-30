---
lang: en
layout: article_with_sidebar
updated_at: '2016-08-31 00:00'
title: Custom features with Twig template engine
identifier: ref_twigguide
version: X-Cart 5.3.0 and later
order: 55
categories:
  - Developer docs
  - Demo module
published: true
---

## Introduction

This article is a guide to custom extensions and features of the [Twig](http://twig.sensiolabs.org) template engine used in X-Cart 5.3 and later versions. The complete documentation to Twig basic features is available at [http://twig.sensiolabs.org/documentation/](http://twig.sensiolabs.org/documentation/).

## Table of Contents

*   [Migration from Flexy](#migration-from-flexy)
*   [Overview](#overview)
    -   [widget()](#widget)
    -   [widget_list()](#widget-list)
    -   [form tag](#form-tag)
    -   [t()](#t)
    -   [url()](#url)
*   [Tips and tricks](#tips-and-tricks)

## Migration from Flexy

X-Cart 5.3 will use Twig templates instead of the dated {% link 'Flexy templates' ref_VcuME8xW %}. Twig is a modern, secure and extremely flexible templating engine. 

To make the transition smooth for our developer community, we provide a tooling to automate this process. In order to convert your custom .tpl files to .twig install the [flexy-to-twig](https://www.npmjs.com/package/flexy-to-twig) npm package and run ```flexy-to-twig template.tpl > template.twig```. More detailed instructions are provided at the flexy-to-twig npm package page.

Alternatively, you can use our [online converter](http://xcart.github.io/flexy-to-twig/) if you have just a couple of templates or just want to play around with it.

Read more about 5.2 to 5.3 migration {% link 'here' ref_u8kJ3imU %}

## Overview

Template extension `*.twig` is used in X-Cart software, instead of the old `*.tpl` extension.

The {% link 'View object' ref_6dMJsZ63 %} that is rendering the template is available via a special `this` variable. It means that Flexy's `{getProductUrl()}` corresponds to Twig's `{{ this.getProductUrl() }}`. There is a difference between the local variables (`{{ product }}`) and the properties/methods of the bound View object (`{{ this.product }}`).

Also, there are some custom functions and tags available to you:

### `widget()`

The `widget` function renders a certain **View** class. The FQCN name of the widget class must be passed as the first argument (note the **doubled backslashes** in class names which are required in Twig). You can pass several variables as the widget parameter, starting from the second argument of `widget` call.

```twig
{{ widget('XLite\\View\\Widget', param1='value1', param2='value2') }}
```

{% note info %}
If some of the widget parameters contain dashes (or other non-alphanumeric and non-underscore characters), Twig will not compile widget function call with such arguments and will throw an error: `{{ widget('XLite\\View\\Widget', weird-param-name='value1') }}`. In order to work around this syntax limitation, you can use an alternate widget call syntax: `{{ widget('XLite\\View\\Widget', {'weird-param-name': 'value1'}) }}`. However we strongly advise you to use only camel-cased parameter names as this is the recommended naming convention: `{{ widget('XLite\\View\\Widget', weirdParamName='value1') }}`
The above also applies to `widget_list` function parameters.
{% endnote %}

### `widget_list()`

The `widget` function renders a certain **view list**. View list is the collection of classes and templates marked with @ListChild annotation. The name of the view list is passed as the first argument. You can also pass several variables as the widget parameter, starting from the second argument of `widget_list` call.

```twig
{{ widget_list('product.details', param1='value1', param2='value2') }}
```

### `form` tag

The `form` tag wraps content in `<form>` HTML tag with attributes received from a certain X-Cart Form class. Form class name is passed as the first parameter. This tag is balanced and should be closed with `endform` tag.

```twig
{% form 'XLite\\View\\Form\\Import' %}
    ...
{% endform %} 
```

### `t()`

The `t` function provides translation for a certain language label. Name of the label is passed as the only argument. The _optional_ label parameters are passed within an object as the second argument.

```twig
{{ t('Product name') }}

{{ t('Proceed to the special url', { 'specialUrl': this.getSpecialURL() }) }}
```

### `url()`

The `url` function serves as the shortcut for `AView::buildURL` function and returns url string. First two arguments are **target** and **action** and the third is the object of query parameters.

```twig
{{ url('target', 'action', { 'param_1': 'some_param_value' }) }}
```

## Tips and tricks

If you need to output the language label as _unescaped_ HTML code, you'll need to modify the template file. By default, X-Cart outputs escaped varibles to protect from XSS attacks.

To circumvent this behaviour, you'll need to filter label or any other output through `raw` [filter](http://twig.sensiolabs.org/doc/filters/raw.html).

The easiest way is to use {% link 'the Webmaster mode' ref_siabU9Pf %}. Enable it in **Look & Feel** settings inside the admin area, find the needed template in your storefront and add `raw` filter to the output so it becomes like this:

```twig
{{ t('some unescaped HTML code') | raw }}
```

The above can be applied to any Twig output, not only t() function.
