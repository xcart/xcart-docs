---
title: Updating modules from 5.2 to 5.3 branch
lang: en
layout: article_with_sidebar
updated_at: 2017-02-13 17:09 +0400
identifier: ref_u8kJ3imU
order: 200
---

This is a guide that will help you to adapt your module to X-Cart 5.3 version. Please be sure to apply those changes only on dev copy of your store.

### Table of contents

-   [Typical update procedure](#typical-update-procedure)
-   [Template changes](#template-changes)
    *   [New templates structure](#new-templates-structure)
-   [Model changes](#model-changes)
-   [Repository changes](#repository-changes)
-   [Widget changes](#widget-changes)
-   [Code changes](#code-changes)

## Typical update procedure

Below is the typical update steps a developer needs to perform to update the module for X-Cart 5.3 software. You might need to apply some additional fixes and changes, depending on your module complexity.

0.  (**Developer build only**) Install [composer](https://getcomposer.org/download/ "Migrating modules to X-Cart 5.3") and call `composer install` in `<X-Cart>/src/` in your console, in order to install all required components.

1.  Rename each template file extension from __.tpl__ to __.twig__.

2.  Find all __.tpl__ file path occurrencies in php classes inside `classes/XLite/Module/<DEVNAME>/<MODULENAME>` and replace them with __.twig__ ones.

3.  Move template files according to the following scheme:

    *   `skins/default/en/`         -> `skins/customer/`
    *   `skins/admin/en/`           -> `skins/admin/`
    *   `skins/admin/ru/`           -> `skins/admin_ru/`
    *   `skins/mail/en/`            -> `skins/mail/common/`
    *   `skins/admin/en/mail`       -> `skins/mail/admin/`
    *   `skins/default/en/mail/`    -> `skins/mail/customer/`
    *   the same for ColorSchemes and CustomSkin: `default` should be renamed to `customer`

4.  Use [Flexy-to-Twig migration tool](http://xcart.github.io/flexy-to-twig/ "Migrating modules to X-Cart 5.3") to convert each template to Twig-compatible code. Read more about [template changes](#template-changes).

5.  Change **Main.php** `getMajorVersion()`, `getMinorVersion()` and `getMinorRequiredCoreVersion()` methods accordingly. Add `getBuildVersion()` method. Read more {% link 'here' ref_wUXMKpNm %} about X-Cart 5.3 versioning.

6.  Find each `@LC_Dependencies` occurrencies and replace them with `@Decorator\Depend`. Note that right syntax is `@Decorator\Depend({‘X’, ‘b’})`, not `@Decorator\Depend(‘a’, ‘b’)`.

7.  Update model files. Ensure that each getter/setter is **defined** in the code (they are not generated automatically anymore). Apply other [needed changes](#model-changes).

8.  Update repository files. Check on the [list of all required changes](#repository-changes).

9.  Update viewer files. Replace each type occurrence according to the following table:

    *   `XLite\Model\WidgetParam\Int`                   => `XLite\Model\WidgetParam\TypeInt`
    *   `XLite\Model\WidgetParam\String`                => `XLite\Model\WidgetParam\TypeString`
    *   `XLite\Model\WidgetParam\Checkbox`              => `XLite\Model\WidgetParam\TypeCheckbox`
    *   `XLite\Model\WidgetParam\Object`                => `XLite\Model\WidgetParam\TypeObject`
    *   `XLite\View\FormField\Input\Text\Float`         => `XLite\View\FormField\Input\Text\FloatInput`
    *   `XLite\View\FormField\Input\Base\String`        => `XLite\View\FormField\Input\Base\StringInput`
    *   `XLite\View\FormField\Inline\Input\Text\Float`  => `XLite\View\FormField\Inline\Input\Text\FloatInput`

    Read more about [viewer widget changes](#widget-changes) and apply fixes if needed. 

## Template changes

Use the our [Flexy-to-Twig migration tool](http://xcart.github.io/flexy-to-twig/ "Migrating modules to X-Cart 5.3") to convert your templates in your module.

If you modified templates only by using Webmaster mode or CustomSkin module, follow the steps described below.

-   Upgrade your store to X-Cart 5.3;
-   Go to _Look & Feel_ > _Webmaster mode_ section in your admin area. If there are any templates, then you will be able to convert them;
-   Click on the _Flexy-to-twig converter_ button;
-   You will get a list of the files to convert. The first column will show which files will be converted. The second column will show the new location of the converted twig template. The last column will show the status of the file: whether it is converted or not.
-   Press _Convert_ button to convert the files. As soon as the files convert you will see the green sign in the right column.

Other changes (apart from the obvious syntactical changes, refer to [Twig documentation](http://twig.sensiolabs.org/documentation)) that the template designer should know:

*   Template file extension is changed from `.tpl` to `.twig`. This also affects View classes that define template file names.
*   The View object that is rendering the template is available via a special this variable. It means that Flexy's `{getProductUrl()}` corresponds to Twig's `{{ this.getProductUrl() }}`. In Twig there is a difference between the local variables (`{{ product }}`) and the properties/methods of the bound View object (`{{ this.product }}`).
*   Flexy's `<widget class="XLite\View\Widget" param1="value1" param2="value2" />` construct maps to `{{ widget('XLite\\View\\Widget', param1='value1', param2='value2') }}` Twig function call. Note the doubled backslashes in class names, these are required in Twig.
*   `<widget template="other.tpl" />` converts to a simple template inclusion: `{% include 'other.tpl' %}`. All local variables (for example, those that were introduces by a `{% for %}` loop) will be available in the included template as a local {{ variable }}. Note that this is different from accessing the View object property: `{{ this.variable }}`.
*   Flexy's `<list name="product.details" param1="value1" param2="value2" />` converts to `{{ widget_list('product.details', param1='value1', param2='value2') }}` Twig function call.
*   `<widget class="XLite\View\Form\Import" name="importform" /> … <widget name="importform" end />` in Twig is expressed as `{% form 'XLite\\View\\Form\\Import' %} … {% endform %}`. The advantage is that Twig checks at template compile time that opening and closing tags are correctly balanced.
*   Twig function `{{ t('Product name') }}` translates strings just as Flexy's `{t(#Product name#)}`.
*   Twig function `{{ url(...) }}` provides a shortcut to `AView::buildURL`.

{% note info %}
If some of the widget parameters contain dashes (or other non-alphanumeric and non-underscore characters), Twig will not compile widget function call with such arguments and will throw an error: `{{ widget('XLite\\View\\Widget', weird-param-name='value1') }}`. In order to work around this syntax limitation, you can use an alternate widget call syntax: `{{ widget('XLite\\View\\Widget', {'weird-param-name': 'value1'}) }}`. However we strongly advise you to use only camel-cased parameter names as this is the recommended naming convention: `{{ widget('XLite\\View\\Widget', weirdParamName='value1') }}`
The above also applies to widget_list function parameters.
{% endnote %}

### New templates structure

X-Cart 5.3 changed the structure of the templates and you need to make sure that if your module used default templates, that these templates are still in place. 

Template files should be moved according to the following scheme:

*   `skins/default/en/` -> `skins/customer/`
*   `skins/admin/en/` -> `skins/admin/`
*   `skins/admin/ru/` -> `skins/admin_ru/`
*   `skins/mail/en/` -> `skins/mail/common/`
*   `skins/admin/en/mail` -> `skins/mail/admin/`
*   `skins/default/en/mail/` -> `skins/mail/customer/`
*   the same for ColorSchemes and CustomSkin: `default` should be renamed to `customer`

{% note warning %}
CustomSkin module has become discontinued as a method to apply changes over any skin, so you need to move files from `skins/custom_skin/` folder to `skins/theme_tweaker/`. Please note that it will only work for `customer` and `mail` interface files. 
{% endnote %}

You might want to check out [section about changing template names](http://devs.x-cart.com/en/what_is_new/#new-templates-structure "Migrating modules to X-Cart 5.3") in developer blog post.

## Model changes

-   If you did not specify getters/setters in your **Models**, you **must** define them (they are not added automatically by decorator anymore). You can use `.dev/scripts/doctrine-generate-entities.php` script in order to do that quickly.

-   If your module adds a field with `money` type, then you need to manually add getter and setter for it. See `\XLite\Model\Product` class as an example.

-   If your class decorates another one and adds DB table indexes by `@Table(@Index)` directive, then you need to mark your class as `@MappedSuperclass`.

## Repository changes

-   Starting from 5.3.x, `XLite/Model/Repo/ARepo` class contains all general methods to search entities, like `search()` and it doesn't use `getHandlingSearchParams()` method anymore. Therefore you should **remove** `search()`, `searchCount()`, `searchResult()`, `callSearchConditionHandler()`, `isSearchParamHasHandler()`, `getHandlingSearchParams()`, `prepareCndLimit()`, `prepareCndOrderBy()` methods. Define them only to modify the default behaviour.

-   Replace `SEARCH_ORDERBY` and `SEARCH_LIMIT` constants with `P_ORDER_BY` and `P_LIMIT` respectively.

-   Replace all `P_ORDER_BY` usages to the one of the following:

    ```php
    $cnd->{static::P_ORDER_BY} = array(static::SORT_BY_MODE_LAST_VISIT_DATE, 'DESC');
    ```
    
    ```php
    $cnd->{static::P_ORDER_BY} = array(
        array(Repo::SORT_BY_MODE_ENABLED, 'DESC'),
        array(Repo::SORT_BY_MODE_DELAY, 'ASC'),
    );
    ```

-   If you need the default sort order, add this field to the repo:
    
    ```php
    protected $defaultOrderBy = array('date' => false); // true means ASC, false means DESC
    ```

-   Replace each `SEARCH_ORDERBY_*` constant with direct field name, prepended by table alias and a dot.
 
## Widget changes

Itemslist widgets were vastly improved to ease their usage. Now you can:

-   define `getSortByModeDefault()` method, which should return table field to sort by (e.g., 'p.product_id');

-   define `getSortOrderModeDefault()` method to set specific sort order. Return either `static::SORT_ORDER_DESC` or `static::SORT_ORDER_ASC`;

-   define `$sortByModes` field to provide sorting modes in format of _array_, where keys are table field names (e.g. 'p.amount') and values are human-readable string name ('Amount');

-   define `defineRepositoryName()` method, which should return repository FQCN (Fully-classified class name);

-   remove some methods because their implementation was moved to abstract `AItemsList` class:

    *   `getOrderBy()`
    *   `getSearchCondition()`
    *   `getSearchParams()`

## Code changes

-   Decorators of abstract classes must be explicitly defined as abstract.

-   Replace `@LC_Dependencies` directive with `@Decorator\Depend`. Note that right syntax is `@Decorator\Depend({‘a’, ‘b’})`, not `@Decorator\Depend(‘a’, ‘b’)`.

-   Change widget types in module settings:

    *   `XLite\Model\WidgetParam\Int`                   => `XLite\Model\WidgetParam\TypeInt`
    *   `XLite\Model\WidgetParam\String`                => `XLite\Model\WidgetParam\TypeString`
    *   `XLite\Model\WidgetParam\Checkbox`              => `XLite\Model\WidgetParam\TypeCheckbox`
    *   `XLite\Model\WidgetParam\Object`                => `XLite\Model\WidgetParam\TypeObject`
    *   `XLite\View\FormField\Input\Text\Float`         => `XLite\View\FormField\Input\Text\FloatInput`
    *   `XLite\View\FormField\Input\Base\String`        => `XLite\View\FormField\Input\Base\StringInput`
    *   `XLite\View\FormField\Inline\Input\Text\Float`  => `XLite\View\FormField\Inline\Input\Text\FloatInput`
