---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-28 00:01 +0400'
title: Step 2 - applying design changes
identifier: ref_E88KCMDD
version: X-Cart 5.2.16 and earlier
order: 200
categories:
  - Developer docs
  - Demo module
  - Outdated
published: false
---

## Introduction

This article is an introduction to X-Cart design system. It explains general principles of how X-Cart layout is organized. I will combine general explanation with the process of applying real life design task (wrapping **My Account** link into `<span></span>` tags on home page), so you could see both theory and practice in action.

![]({{site.baseurl}}/attachments/8224787/8355857.png)

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Understanding X-Cart layout system](#understanding-x-cart-layout-system)
*   [Finding templates and widgets](#finding-templates-and-widgets)
*   [Hiding templates and widgets](#hiding-templates-and-widgets)
*   [Adding new templates and widgets](#adding-new-templates-and-widgets)
*   [Module example](#module-example)

## Understanding X-Cart layout system

Let us start with basic explanation of how X-Cart starts outputting HTML code to client's browser.

When it is time to output the content, X-Cart starts rendering `<X-Cart>/skins/default/en/body.tpl` template if you are in frontend (`cart.php` end-point) or `<X-Cart>/skins/admin/en/body.tpl` template if you are in admin area (`admin.php` end-point). Have a close look at `<X-Cart>skins/default/en/body.tpl` template:

```php
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN"
  "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{currentLanguage.getCode()}" version="XHTML+RDFa 1.0"
  xmlns:content="http://purl.org/rss/1.0/modules/content/"
  xmlns:dc="http://purl.org/dc/terms/"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:og="http://ogp.me/ns#"
  xmlns:fb="https://www.facebook.com/2008/fbml"
  xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
  xmlns:sioc="http://rdfs.org/sioc/ns#"
  xmlns:sioct="http://rdfs.org/sioc/types#"
  xmlns:skos="http://www.w3.org/2004/02/skos/core#"
  xmlns:xsd="http://www.w3.org/2001/XMLSchema#">
  <widget class="\XLite\View\Header" />
<body {if:getBodyClass()}class="{getBodyClass()}"{end:}>
{displayCommentedData(getCommonJSData()):s}
<list name="body" />
</body>
</html>
```

Now we will walk through each part of this template and see what each piece of code does.

1.  ```php
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN"
      "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{currentLanguage.getCode()}" version="XHTML+RDFa 1.0"
      xmlns:content="http://purl.org/rss/1.0/modules/content/"
      xmlns:dc="http://purl.org/dc/terms/"
      xmlns:foaf="http://xmlns.com/foaf/0.1/"
      xmlns:og="http://ogp.me/ns#"
      xmlns:fb="https://www.facebook.com/2008/fbml"
      xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
      xmlns:sioc="http://rdfs.org/sioc/ns#"
      xmlns:sioct="http://rdfs.org/sioc/types#"
      xmlns:skos="http://www.w3.org/2004/02/skos/core#"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema#">
    ```

    This piece of code is almost purely HTML, so X-Cart will output it as is. However, there is` {currentLanguage.getCode()}` code. This way the store language is dynamically put into the HTML code.

    It calls `getCode()` method out of the result of `getCurrentLanguage()` method. `getCurrentLanguage()` method is called out of the current template scope. In other words X-Cart will search for `getCurrentLanguage()` method in `XLite/View/Controller` and `XLite/Controller/Main` classes, assuming that we are on home page (otherwise the controller class –  `XLite/Controller/Main `– will be different). 

2.  ```php
    <widget class="\XLite\View\Header" />
    ```

    Now X-Cart basically says: "Hey, `\XLite\View\Header` viewer class, you must display your widget here". **Viewer** is a class that meant to output something. The process of its creation will be described later on.

3.  ```php
    <body {if:getBodyClass()}class="{getBodyClass()}"{end:}>
    ```

    This piece of code is also HTML, but with Flexy condition. Template calls `getBodyClass()` method out of the current template scope (`XLite/View/Controller` and `XLite/Controller/Main` classes) and if the result is not empty, it will add **class** property to the `<body>` tag.

4.  ```php
    {displayCommentedData(getCommonJSData()):s}
    ```

    This is a call of X-Cart functions in the current template scope as described above.

5.  ```php
    <list name="body" />
    ```

    This is a call of "body" view list. X-Cart tells: "Hey, **body** view list, you must display all your content here". **View list** is a collection of templates and viewers classes. You can always read this instruction as: "Hey, **body** view list, now you must display all templates and viewer classes assigned to you".

6.  ```php
    </body>
    </html>
    ```

    This is a piece of pure HTML code as well.

7.  Although there is no such code in the `body.tpl` template, but you can directly call another template from the current one, e.g.

    ```php
    <widget template="noscript.tpl" />
    ```

As you can see, there are tools for **static** (pure HTML code) and **dynamic** (Flexy structure, calls of X-Cart functions and widgets, view lists) output generating in X-Cart templates. Additionally, you have an ability to include another templates: view lists, template calls.

X-Cart's template structure is treelike and this article will explain how you can change and/or add vertices (templates and widgets) in this tree. This way you can change current layout.

## Finding templates and widgets

First thing you have to learn is how to find templates or widgets responsible for certain area. Once you understand what template or widget is responsible for certain area, you can either remove this template/widget (hide some part of layout) or add new template/widget (add new part of HTML code). If you want to change existing layout, you may want to remove the existing template/widget and then put your own ones as a replacement.

As a real life example, let us find what template is responsible for display of **My account** link on X-Cart's home page.

1.  Enable **Webmaster Kit** module in your admin area.![]({{site.baseurl}}/attachments/8224787/8355858.png)
2.  Tick the **Profiler enabled** and **Mark templates** options on in its settings.![]({{site.baseurl}}/attachments/8224787/8355859.png)
3.  Click **Enable tracing** and Webmaster Kit will start showing treelike structure of X-Cart templates.
    ![]({{site.baseurl}}/attachments/8224787/8355860.png)
4.  Go to your home page and hover your pointer over the **My account** area. The top path is a path where the template responsible for display of this area is located.![]({{site.baseurl}}/attachments/8224787/8355861.png)

5.  `skins/default/en/layout/header.bar.links.logged.account.tpl` is the template we were looking for. Its content is below: 

    ```php
    {* vim: set ts=2 sw=2 sts=2 et: *}
    {**
     * Account link
     *
     * @author    Qualiteam software Ltd <info@x-cart.com>
     * @copyright Copyright (c) 2011-2014 Qualiteam software Ltd <info@x-cart.com>. All rights reserved
     * @license   http://www.x-cart.com/license-agreement.html X-Cart 5 License Agreement
     * @link      http://www.x-cart.com/
     *
     * @ListChild (list="layout.header.bar.links.logged", weight="200")
     *}

    <li class="account-link-2">
      <a href="{buildURL(#order_list#,##)}" class="register">{t(#My account#)}</a>
      <span class="email">({auth.profile.login})</span>
    </li>
    ```

    Our task is to put the `<a href="{buildURL(#order_list#,##)}" class="register">{t(#My account#)}</a>` code between `<span></span>` tags.

## Hiding templates and widgets

In order to stop display of the content generated by template or widget, you should exclude this template/widget from its view list.

First you need to know what views list contains the certain template/widget. There are two ways how you can find it out:

1.  Look at `@ListChild` directive in the comments of the template/widget code. Record like this `@ListChild (list="layout.header.bar.links.logged", weight="200")` says that the template is assigned to the `layout.header.bar.links.logged` view lists with **200** weight. The bigger the weight, the below it sits.
2.  Run the MySQL query to your database like this: 

    ```php
    SELECT * FROM xc_view_lists WHERE tpl="layout/header.bar.links.logged.account.tpl";
    ```

    where **tpl** parameter must be equal a path to your template.
    If you are looking for view list of the **widget**, the query will be quite similar:  

    ```php
    SELECT * FROM xlite_view_lists WHERE child="XLite\\View\\PoweredBy";
    ```

    but you need to pass name of the class as **child** parameter.

In case of our task – hiding **My account** link from home page –  view list of the `skins/default/en/layout/header.bar.links.logged.account.tpl` template is `layout.header.bar.links.logged`.

In order to remove the template from its view list, you must specify the `runBuildCacheHandler()` method in the `Main.php` file of your module like this:

```php
	public static function runBuildCacheHandler()
    {
        parent::runBuildCacheHandler();

        \XLite\Core\Layout::getInstance()->removeTemplateFromList('layout/header.bar.links.logged.account.tpl', 'layout.header.bar.links.logged');
    }
```

_Note: if you are not sure how to create the module and Main.php file there, please check our {% link "previous guide" ref_G2mlgckf %} out._

As you can see, we are passing first parameter to `removeTemplateFromList()` method as template path and second parameter as **view list name**.

If you want to remove template from all view lists, then you can call it like this:

```php
	public static function runBuildCacheHandler()
    {
        parent::runBuildCacheHandler();

        \XLite\Core\Layout::getInstance()->removeTemplateFromLists('layout/header.bar.links.logged.account.tpl');
    }
```

As you can see, we are calling `removeTemplateFromList**s**()` method instead of `removeTemplateFromList()` one. It has **s** character at the end, so it remove template from **lists.**

Similar approaches are available for removing of widgets instead of templates, e.g.

```php
	public static function runBuildCacheHandler()
    {
        parent::runBuildCacheHandler();

		// removing widget from particular view list
        \XLite\Core\Layout::getInstance()->removeClassFromList('XLite\View\PoweredBy', 'sidebar.footer');

		// removing widget form all view lists
        \XLite\Core\Layout::getInstance()->removeClassFromLists('XLite\View\PoweredBy');
    }
```

Finally, you can call multiple removals of templates/widgets in a single `runBuildCacheHandler()` method like this:

```php
	public static function runBuildCacheHandler()
    {
        parent::runBuildCacheHandler();

		\XLite\Core\Layout::getInstance()->removeTemplateFromLists('product/details/parts/common.add-button.tpl');
        \XLite\Core\Layout::getInstance()->removeClassFromList('XLite\View\PoweredBy', 'sidebar.footer');
        \XLite\Core\Layout::getInstance()->removeClassFromLists('XLite\View\Dashboard');
    }
```

## Adding new templates and widgets

At this point, we have disabled display of old **My account** section on home page and now we need to add our new implementation. Let us assume that we have a module with developer ID **Tony** and module ID **DesignChanges**. Of course, you should use your own developer and module IDs in your module.

Since we need to add HTML code to front-end, we are creating template in the `<X-Cart>/skins/default/en/modules/<Developer-ID>/<Module-ID>/` folder. Key part here is that our template will be in **default** folder, because this folder is meant to contain templates of store-front. If we needed to add some HTML code to admin area's pages, we would need to create template in the `<X-Cart>/skins/admin/en/modules/<Developer-ID>/<Module-ID>/` directory.

Template name can be whatever you like, but must have **.tpl** extension. So, I am creating the template `<X-Cart>/skins/default/en/modules/Tony/DesignChanges/account.tpl` with almost exactly the same content as in default one:

```php
{* vim: set ts=2 sw=2 sts=2 et: *}
{**
 * @ListChild (list="layout.header.bar.links.logged", weight="200")
 *}

<li class="account-link-2">
  <span><strong><a href="{buildURL(#order_list#,##)}" class="register">{t(#My account#)}</a></strong></span>
  <span class="email">({auth.profile.login})</span>
</li>
```

The only differences are:

1.  I have removed license-related comments, although I kept assignment to view list in place. If we omit `@ListChild` directive, then X-Cart will not know where to put HTML code produced by this template. 
2.  I have wrapped **My accoun**t link into `<span></span>` tags as it is the purpose of the whole change. 
3.  I have also added `<strong></strong>` tags just to show the evident change without need to check HTML source code.

Now, we need to re-deploy the store so that X-Cart be able to apply changes to view lists structure and replace default `<X-Cart>/skins/default/en/product/details/parts/common.add-button.tpl` template with our one.

## Module example

You can download the module example described above here: [https://dl.dropboxusercontent.com/u/23858825/Tony-DesignChanges-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-DesignChanges-v5_1_0.tar)

## Attachments:

* [home-page-my-account.png]({{site.baseurl}}/attachments/8224787/8355857.png) (image/png)
* [webmaster-kit-module.png]({{site.baseurl}}/attachments/8224787/8355858.png) (image/png)
* [webmaster-kit-module-settings.png]({{site.baseurl}}/attachments/8224787/8355859.png) (image/png)
* [enable-tracing.png]({{site.baseurl}}/attachments/8224787/8355860.png) (image/png)
* [path-to-template.png]({{site.baseurl}}/attachments/8224787/8355861.png) (image/png)
