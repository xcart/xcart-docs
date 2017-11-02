---
title: What is new in 5.3
lang: en
layout: blogpost
updated_at: 2016-11-25 15:35 +0400
identifier: ref_MJEGoA0S
order: 999
author: Max Vydrin
description: X-Cart 5.3 comes with significant performance and usability improvements,
  such as new built-in Crisp White skin, development mode decorator, improved widget
  caching and developer DebugBar. It also utilizes the power of PHP 7 while PHP 5.4
  becomes minimum version. Finally, it comes upgraded with Twig template engine so
  you'll need to convert old Flexy templates to new Twig ones. This article overviews
  the major changes in the software and required adaptations.
---

X-Cart 5.3 comes with significant performance and usability improvements, such as new built-in Crisp White skin, development mode decorator, improved widget caching and developer DebugBar. It also utilizes the power of PHP 7 while PHP 5.4 becomes minimum version. Finally, it comes upgraded with Twig template engine so you'll need to convert old Flexy templates to new Twig ones. This article overviews the major changes in the software and required adaptations.

## “Crisp White” Skin

Our new skin uses [12-column Bootstrap grid](http://www.w3schools.com/bootstrap/bootstrap_grid_system.asp "What is new in 5.3"). 

![Bootstrap grid]({{site.baseurl}}/attachments/baseline-grid.jpg)

It has a 40px gutter (gap between column content) and a baseline grid with the line-height value of 20px. See the screenshot below.

![Example of baseline grid]({{site.baseurl}}/attachments/vertical-rhythm.png)

- The margin between the main banner and the title is 3 rhythms (60px);
- The margin between the title and the description is 2 rhythms (40px).

The grid makes pages easier to perceive, and here is when you want to use it:

- When you create a design concept, take our [template](http://static.x-cart.com/download/%D0%A1risp_white_template_v1.sketch "What is new in 5.3") as a starting point. You will find all the main pages with an already defined baseline grid there. The template is in the .sketch format, and you need the [Sketch app](https://www.sketchapp.com/ "What is new in 5.3") to use it.
- When you want to tweak an existing design and want to move some elements. For that, download the [Baseliner](https://chrome.google.com/webstore/detail/baseliner/agoopbiflnjadjfbhimhlmcbgmdgldld "What is new in 5.3") plugin for Google Chrome, set the line-height property as 20px (second parameter), and you will always be sure to place elements according to the grid.

Sure, it is up to you to decide, what size of margins to use; however, if you use a grid, your design will look more professional.

## PHP 5.4 as the minimum version, PHP7 and MySQL 5.7
The minimal required PHP version is 5.4. An overview of the "new" features of this version can be found here: [http://php.net/manual/en/migration54.new-features.php](http://php.net/manual/en/migration54.new-features.php "What is new in 5.3")

However, we recommend to use PHP 5.6 or and especially PHP 7 for better performance.

Also, X-Cart supports MySQL 5.7.x by default. If you use an older version and want to run X-Cart on MySQL 5.7.x, you need to disable the option `ONLY_FULL_GROUP_BY`. 

## New decorator and new developer mode
X-Cart 5.3 allows you to apply changes to PHP code in `<X-Cart>/classes/` and see the changes immediately on next page load. Yes, you will not have to rebuild the cache of classes to see the change. You can add, remove or change decoration classes, @LC_dependencies annotations, etc. Moreover, if you add a breakpoint to a file in `<X-Cart>/classes/`, it will be triggered, too.

You will, however, have to rebuild the cache if you apply changes to the DB structure.

To enable such behavior, you will need to switch to developer mode by setting the variable developer_mode to On in etc/config.php:

```
[performance]
developer_mode = On
```

Of course, your live store must not operate in developer mode, because this mode slows down the performance considerably.

## Backward compatibility
In the new core, decorating and decorated classes are not [MappedSuperclass](http://doctrine-orm.readthedocs.io/projects/doctrine-orm/en/latest/reference/inheritance-mapping.html#mapped-superclasses "What is new in 5.3")'es by default, as it used to be in the previous branches. Doctrine's documentation does not explicitly tell so, but Doctrine takes into account the metadata only of private properties of MappedSuperclasses. This change means that the metadata of private properties of decorating and decorated classes will be disregarded in 5.3, because those classes are not MappedSuperclasses any more. For example, if we have a private property with one-to-many association, the code will fail with an error.

In X-Cart 5.2, you did not have to worry about those issues, but you could come to a pitfall described in [Doctrine documentation](http://doctrine-orm.readthedocs.io/projects/doctrine-orm/en/latest/reference/inheritance-mapping.html#mapped-superclasses "What is new in 5.3"):

{% note info %}
A mapped superclass cannot be an entity, it is not query-able, and persistent relationships defined by a mapped superclass must be unidirectional (with an owning side only). This means that One-To-Many associations are not possible on a mapped superclass at all. Furthermore, Many-To-Many associations are only possible if the mapped superclass is only used in exactly one entity at the moment. For further support of inheritance, the single or joined table inheritance features have to be used.
{% endnote %}

The new approach works around this problem, and it is faster because it does not walk through parent classes, and you could not make a class non-MappedSuperclass earlier. Also, in the old core, you could not make a class non-MappedSuperclass, which makes the new system more flexible. However, you have to be cautious about metadata. Properties with metadata must be defined as protected, not private. Or you need to explicitly define a class as MappedSuperclass by adding the `@MappedSuperclass` directive; for example, if you want to add indexes to the decorator as `@Table(@Index)`. 

- Metadata is parsed now by `Doctrine/Annotations`; thus, the parsing results may differ from the ones you got previously. The syntax of the following annotation is incorrect according to this library:
`LC_Dependencies(“a”, “b”)`
The correct one is as follows:
`LC_Dependencies({“a”, “b”})`

- For backwards compatibility, old-style annotations will still work, but this syntax is deprecated and your code must be changed according to the new syntax.
- Topological sort is implemented by [https://github.com/marcj/topsort.php](https://github.com/marcj/topsort.php "What is new in 5.3")
- If you defined a wrong FQCN repository in metadata in the old code, it would be still work. The new code will no longer accept it and fire an error.

## New annotations to decorate classes
Instead of @LC_Dependencies, you should use the following annotations:

-	@Decorator\Depend, which is the same as @LC_Dependencies;
-	@Decorator\After defines decorator after decorators of the described modules, if these modules are enabled. If the these modules are disabled, this annotation will be ignored;
-	@Decorator\Before defines decorator before decorators of the described modules, if these modules are enabled. If the these modules are disabled, this annotation will be ignored.

Examples:

*	@Decorator\Depend("XC\ProductVariants")
*	@Decorator\After ("XC\MultiVendor")
*	@Decorator\Before("XC\ProductVariants")

## Replace Flexy with Twig
Finally, we upgraded our template engine to [Twig](http://twig.sensiolabs.org/ "What is new in 5.3"). We thoroughly reviewed Smarty 3 and Twig and decided to use the latter, since it is more powerful and flexible. Although it already has a huge community, it continues growing very fast. Twig is very similar to Smarty in terms of syntax, and developers who are familiar with Smarty should be able to switch to Twig in a couple of hours. If you are a developer, you can see it for yourself in [Twig’s documentation](http://twig.sensiolabs.org/documentation "What is new in 5.3").

By using the following resources, you will find how to convert your custom Flexy code to Twig:
[http://xcart.github.io/flexy-to-twig/](http://xcart.github.io/flexy-to-twig/ "What is new in 5.3")

If you just used **ThemeTweaker** or **CustomSkin** to modify the templates, you can convert Flexy modified templates to Twig by using the default convertor on the “Look & Feel” > “Webmaster mode” page after upgrading your store to 5.3.x.

## Native Twig’s syntax was extended
- form / endform tags are parsed together, so you will never forget to close the form;
- `{{ widget }}` function is the same as Flexy's `<widget />`, but most of their calls were converted to simple `{% include %}`, which is faster;
- `{{ widget_list }}` function is the same as Flexy's tag `<list />`;
- `{{ t }}` function is the same as `Translation::translate()`;
- `{{ url }}` function is the same as `AView::buildURL()`;
- `{{ asset }}` function allows paths from skin's root and it returns the URL of the file depending on the skin. Earlier the same routine was called implcitly for _src_ and _background_ attributes and for paths started with _images/_;
- `{{ widget }}` function supports 2 ways to call it:
    - with named arguments:
    `{{ widget('\\XLite\\View\\Abc', fieldName='currency_id', fieldId='currency-id', fieldOnly='1') }}`
    - with hash argument:
    `{{ widget('\\XLite\\View\\Abc', {'data-filter': '1', fieldName: 'currency_id', fieldId: 'currency-id', fieldOnly: '1'}) }}`

A call with hash argument is used when the name of an argument is not alphanumeric; for example, contains a hyphen. Named arguments must be alphanumeric in Twig. `{{ widget_list }}` supports the same two ways of call.
- `AView::getSafeValue()` wraps a string into a special object, which will be output without escaping. This way, you can add HTML code into template and output it without a filter.


## Improved widget-cache
Improved widget cache allowed a huge boost in load speed. The key changes which allowed that are as follows:
- Dynamic widgets (Hole punching)
- Key based expiration (per entity type and per-entity)
- More extensive widget caching

Here is the comparison table:
![Performance comparison]({{site.baseurl}}/attachments/performance.png)

- [X-Cart 5.2 benchmark details](http://glorious-voyage.surge.sh/loadsimulation52-1459780419152/index.html "What is new in 5.3");
- [X-Cart 5.3 behchmark details](http://glorious-voyage.surge.sh/loadsimulation53-1459781135239/index.html "What is new in 5.3").

- `AView::executeCached()` method caches the value returned by the function, the name of which is passed as an argument. It is used when you need to cache a value in addition to the body of the widget. Most often, you need it to cache some data for the `isVisible()` method; for example, the number of elements in the list. The caching rules are the same as the caching rules for the widget: cache on/off and TTL.

- PageQueryCountTest test was added to Performance's suite. It simulates a number of requests to home, category and product pages on a warm-up cache (guest user, empty cart). The simulation is done from random IPs in order to see how cache is shared between users.

- PHP-DI container was added using abstraction [https://github.com/container-interop/container-interop](https://github.com/container-interop/container-interop "What is new in 5.3")

- `symfony/event-dispatcher` libarary was added and is used for tracking start and finish of widget rendering events in the Debug Bar. You can use it for other event as well.

- Changes to the mechanics of widget buffering. Caching widget is being buffered in order to make the output cached. We cache content as well as meta tags and assets. There are two stages:
-- rendering the widget, when we render a widget into DTO (data-transfer object);
-- displaying the rendered widget, when we output the rendered DTO (taken from cache) with assets.

- Dynamic widgets. Widgets implementing the `XLite\Core\View\DynamicWidgetInterface` interface are not cached as well as their parent widgets. Instead, we serialize their parameters, and when a parent widget is taken from cache, dynamic widgets are materialized. It expands the area of effect of cached value, but they still remain dynamic. For instance, such an approach is used for the "added to cart" checkbox. Additionally, dynamic widget can use caching rules that are different from those of the parent widget.

- Product lists are cached with no correlation to cart's content. Each individual product is cached independently from the product list. Logged-in customers use the same cache of the product list (if they have the same membership and shipping zone) except dynamic widgets (e.g. product rating widget).

## Small improvements for better support of PHP Storm
By using PHP Storm, you will get additional hint for  Database::getRepo(‘…’) with more details by typing FQCN inside getRepo

## Database migrations improved
When you install a module that adds new tables or edits the existing ones, the store will not be locked until the 12th step during the building of the class cache. When you disable such a module, the store will not be locked, since the tables and fields will remain in the DB. If you delete a disabled module which only added new tables (did not alter the existing ones), the store will not be locked either, because the locked tables are no longer used. Only if you delete an enabled module, the store will be locked.

## PHP dependency management
You can use [composer](https://getcomposer.org/ "What is new in 5.3") if you get X-Cart from github. Anyway, X-Cart 5 was added to github with the necessary components already pre-installed. 

## Dependency injection and IoC container
X-Cart now supports [PHP-DI](http://php-di.org/ "What is new in 5.3") container, which is used by the following structure: [https://github.com/container-interop/container-interop](https://github.com/container-interop/container-interop "What is new in 5.3")

We recommend to use it for more transparent dependencies, clearer code and cheaper maintenance. Singleton pattern is deprecated in 53x.

## New FormFields and Bulk Edit

### New FormFields
X-Cart 5.3's forms use DTO instead of Entity, and the system control data transferring from Entity to DTO and vice versa. Entity gets data only if it is validated by DTO. Form fields now are described and generated by SimfonyForm. Dependencies are defined by [vueJS](https://vuejs.org/ "What is new in 5.3").

### Bulk edit
Each field is described in a separate class, which can be compound in various order. This way scenarios of their editing are just a list of fields. Bulk editing of other entities is easy, too: you need to describe fields (schemes of display and data handling) and then wrap them into scenarios.

More info is available here: {% link 'http://devs.x-cart.com/en/basics/bulk-editing.html' ref_HnaTNuQc %}

## New templates structure

X-Cart 5.3 has a new structure of the templates. The “default” directory was renamed to “customer”, the “en” directory was removed, and all the mail templates were moved to the “mail” directory:

- skins/default/en/ -> skins/customer/ 
- skins/admin/en/ -> skins/admin/
- skins/admin/ru/ -> skins/admin_ru/
- skins/mail/en/ -> skins/mail/common/
- skins/admin/en/mail -> skins/mail/admin/
- skins/default/en/mail/ -> skins/mail/customer/
- skins/crisp_white/customer/en -> skins/crisp_white/customer

In addition to that, the following minor changes were made in the _skins/customer_ folder:

- The folder _authentication_ was renamed to _authorization_, because its templates are handled by the Authorization class, and we wanted name consistency.
- _checkout_ folder
    - JS files were moved to _checkout/js sub-folder_;
    - CSS files were moved to _checkout/css_;
    - _checkout/check_cc.js_ file was removed;
- _header_ folder was renamed to _meta_;
- _layout_ folder now contains more templates, which were moved from _skins/default/en_. Also, all the templates inside are grouped into three sub-folders: _header_, _content_ and _footer_ except the template _sidebar.tpl_ which is still in the root of the _layout_ directory;
- _recover_password_ directory. All the templates were moved into the _recover_password/parts_ directory;
- _access_denied.js_ file was moved to _js_ folder;
- _account.tpl_ template was removed;
- _authentication.tpl_ was renamed to _authorization.tpl_ and moved to the _authorization_ directory;
- _authentication_popup.tpl_ was renamed to _authorization_popup.tpl_ and moved to the _authorization_ directory;
- _category_description.tpl_ was moved to _layout/content_;
- _center.tpl_ was moved to _layout/content_;
- _center_top.tpl_ was moved to _layout/content_;
- _delete_profile.tpl_ was removed;
- _footer_menu.tpl_ was moved to _layout/footer_;
- _form_field.tpl_ was moved to _form_field_;
- _location.tpl_ was moved to _location_;
- _news.tpl_ was removed;
- _pages_links.tpl_ was removed;
- _powered_by.css_ was moved to _css_;
- _powered_by.tpl_ was moved to _layout/footer_;
- _recover_password.tpl_ was moved to _recover_password_;
- _register_success.tpl_ was removed;
- _shipping_list.tpl_ was moved to _form_field_, because this is a selector which is used in different places;
- _tooltip.tpl_ was moved to _common_;
- _top_continue_shopping.css_ was moved to _css_;
- _top_continue_shopping.tpl_ was moved to _shopping_cart_;

## ItemsList improvements and new features
In X-Cart 5.0, you had to create around 20 files in order to properly create ItemsList. X-Cart 5.2 required you to have at least 5-6 files for that purpose. Now, X-Cart 5.3 can do with just 2 files. Also, you can disable form wrapping and easily connect to SearchPanel. 

SearchPanels were also refactored and now can have different search case providers and switchable data storage. That means that you can build a search form much easier. 

An article about these features will be out soon. Stay tuned!
