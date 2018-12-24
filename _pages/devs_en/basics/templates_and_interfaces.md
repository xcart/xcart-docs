---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-25 00:00'
title: Templates and interfaces
identifier: ref_templates
order: 50
published: true
---

## Introduction

Templates are the part of X-Cart view layer. They define exactly how the content is shown on a page -- basically, templates present HTML code. In most cases, templates *should not contain any logic* whether they will or will not be rendered, this is typically handled by the corresponding {% link "View classes" ref_6dMJsZ63 %}. 

Templates in X-Cart are rendered with *built-in rendering engine*. Rendering engine allows to combine static HTML code with dynamic data, provided by View class. Also, the engine helps to automate code generation with the most basic conditional and loop operators. Data preprocessing should still be handled by the View class to separate two different concerns and allow a more maintainable software.

Flexy template engine was used in X-Cart 5.0 - 5.2 versions. You can read more about it at the {% link "Flexy template engine guide" ref_VcuME8xW %}.

Starting with X-Cart 5.3, default rendering system is [Twig](http://twig.sensiolabs.org). It has been extended with some X-Cart specific features, which are described at {% link "Custom features with Twig template engine" ref_twigguide %} guide.

## Table of contents

*   [Introduction](#introduction)
*   [Table of contents](#table-of-contents)
*   [How to include template](#how-to-include-template)
*   [Template locations](#template-locations)
*   [View interfaces](#view-interface)
*   [Getting dynamic data from View classes](#getting-dynamic-data-from-view-classes)

## How to include template

Generally, templates become populated with data and displayed via View classes. The rendering process is done just before responding to the request - after controller has handled request data, all calculation of the view tree is completed and requested resources are compiled.

{% note warning %}
Code examples are given for the Twig rendering engine and **X-Cart 5.3+** version. The concepts are pretty much the same for X-Cart 5.2 and earlier versions, the main difference is the syntax.
{% endnote %}

There are several ways to include the template on the page:

### View class template

To render a template through a View class, you should specify its filepath in `getDefaultTemplate()` function inside `XLite\View\AView` descendant:

```php
protected function getDefaultTemplate()
{
    return 'modules/Tony/ViewerDemo/mycode.twig';
}
```

If template is to be outputed, its View obviously should be visible on the selected page.

### Nested inside another template

Also, templates can be nested through `{{ widget() }}` or `{% include %}` Twig functions.

```twig
{##
 # include() function simply inlines the other template. You can access View methods through 'this' variable to determine the template path. 
 #}

{% include this.getDir() ~ '/input.twig' %}

{##
 # If other widget has a defined template, it will be rendered through widget() function
 #}
{{ widget('\\XLite\\View\\Button\\AddAddress', label=t('Add new address'), style='main-button', profileId=this.profile_id) }}
```

### View list inclusion

You can specify `@ListChild` annotation, which will include the annotated template automatically to the place where the appropriate `{{ widget_list() }}` call is done. Annotation `list` param is the widget list name and `weight` param is the sorting order of the templates (the higher value the lower position).

```twig
{##
 # Shopping cart item weight block
 #
 # @ListChild (list="cart.item.info", weight="100")
 #}

{% if not this.item.isValidAmount() %}
  <p class="item-out-of-stock">{{ t('Out of stock') }}</p>
{% endif %}
```

### Manual `display()` call

As a last resort, you can call `display()` function on View class instance and serve template path as its argument to print the rendered template to the output buffer. 

{% note warning %}
Use of this method is very **low-level** and won't be needed in most of the cases. In almost any situation you can use the aforemented methods to achieve the task.
{% endnote %}

```php
/**
 * Print widget inner content
 *
 * @return string
 */
public function displayInnerContent()
{
    $template = 'modules/Demo/Demo/other.twig';

    if ($show_list) {
        $this->displayViewListContent('list');
    } else {
        $this->display($template);
    }
}
```

## Template locations

Templates are generally stored in the following locations:

*   Core templates: `skins/<interface>/<path_to_templates>`
*   Module templates: `skins/<interface>/modules/<vendor>/<module_name>/<path_to_templates>`
*   Skin templates: `skins/<skin_path>/<interface>/<path_to_templates>`

Here `<path_to_templates>` might have several levels of directory nesting. Examples of the full template path:

*   `skins/admin/order/page/info.twig`
*   `skins/customer/modules/XC/Reviews/reviews_page/rating/body.twig`

Also, X-Cart has a system which allows to override core templates with the skin ones. Read more at {% link 'Skin file substitution' ref_skin_substitution %} guide.

## View interfaces

Interfaces are different modes of X-Cart presentation layer. Every UI-related file is grouped under certain interface. X-Cart rendering system can't render or anyhow access the file, if it is not present inside current interface folder.

X-Cart is using five interface modes:

*   Customer interface (stored in `customer` folder). 
    Uses the files to render product lists, details pages, cart, checkout sections - everything, that can be seen in customer zone (cart.php).

*   Admin interface (stored in `admin` folder).
    Operates with the files to draw administrator panel inside admin zone (admin.php).

*   Common interface (stored in `common` folder).
    Or in other words - fallback interface, which is accessed when the current interface doesn't have the needed file.

*   Mail interface (stored in `mail` folder).
    This interface can contain any other interface, such as `admin`, `customer`, `common` ones. It contains very specific files and rules to render mail messages.

*   PDF interface (stored in `pdf` folder).
    Similar to mail interface, contains specific templates to render pdf pages.

There are overrides for interface when a certain language is enabled. You can read more at {% link 'Substitution fallback scheme' ref_skin_substitution#fallback-scheme %} paragraph.

## Getting dynamic data from View classes

Properties and methods of View class can be accessed in templates using the `this` object like this:

```twig
{##
 # Address 
 #}
<ul class="address-entry">
  {% for fieldName, fieldData in this.getSchemaFields() %}
    {% if this.getFieldValue(fieldName, 1) %}
      <li class="{{ this.getFieldStyle(fieldName) }}">
        <ul class="address-text">
          <li class="address-text-label address-text-label-{{ fieldName }}">{{ fieldData.label }}:</li>
          <li class="address-text-value">{{ this.getFieldValue(fieldName, 1) }}</li>
          <li class="address-text-comma address-text-comma-{{ fieldName }}">,</li>
        </ul>
      </li>
    {% endif %}
  {% endfor %}
</ul>
```
