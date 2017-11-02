---
title: Skin module definition
lang: en
layout: article_with_sidebar
updated_at: 2016-08-22 00:00
identifier: ref_skinmodule
order: 30
keywords:
- custom skin
- main.php
---

## Introduction

This guide describes how you can create Skin module definition for X-Cart 5. Before reading this guide, please read {% link 'the general article' ref_G2mlgckf %} about X-Cart modules creation. Installed skins can be seen in Admin area at **Look & Feel** page:
    
![]({{site.baseurl}}/attachments/ref_skinmodule/lookandfeel.png)

Skin module differs from other modules by having a specific Main.php file (module definition) and some other features.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Main.php definition](#mainphp-definition)
    *   [Skin paths](#skin-paths)
    *   [Color schemes](#color-schemes)
*   [Thumbnails and store logo](#thumbnails-and-store-logo)

## Main.php definition

First of all, a skin module class must inherit `\Xlite\Module\AModuleSkin`, not `\XLite\Module\AModule` class, so the Main.php file looks like this:

```php
<?php
namespace XLite\Module\Example\CustomSkin;

abstract class Main extends \XLite\Module\AModuleSkin
{
    ... code here ...
}

```

Secondly, it should specify available layout types by defining `getLayoutTypes()` function.

```php
public static function getLayoutTypes()
{
    return array(
        static::LAYOUT_TWO_COLUMNS_LEFT,
        static::LAYOUT_TWO_COLUMNS_RIGHT,
        static::LAYOUT_THREE_COLUMNS,
        static::LAYOUT_ONE_COLUMN,
    );
```

By default, all layout types are specified as available, but you can omit some of them if they don't suit your skin. If `getLayoutTypes()` function returns an empty array, X-Cart will assume LAYOUT_TWO_COLUMNS_LEFT layout.

Also, you should know that only one skin can be active at the time and you cannot use `getDependencies()` method in the Main.php. To be compatible with 5.2.5 - 5.2.16 versions of the X-Cart, you should add the following code to the Main.php:

```php
/**
 * Get minor core version which is required for the module activation
 *
 * @return string
 */
public static function getMinorRequiredCoreVersion()
{
    return '5'; // Or higher, if your skin uses more recent API. 
}
```

Remember to delete this function when adapting your skin for 5.3.x versions.

### Skin paths

By default, every skin is based on the core X-Cart skin, placed in the `<X-Cart>/skins/customer/` folder. In order to modify any of the original files (mostly templates), you have to define `getSkins()` function:

```php
/**
 * The following pathes are defined as substitutional skins.
 *
 * @return array
 */
public static function getSkins()
{
    return [
        \XLite::CUSTOMER_INTERFACE => ['crisp_white' . LC_DS . 'customer'],
    ];
}
```

This function defines folders to lookup any files that will substitute the default ones. The function must return an array, containing key-value records where key is the interface code (in most situations it will be `\XLite::CUSTOMER_INTERFACE`) and the value is the array with folder paths inside `<X-Cart>/skins/` directory.

Any files, placed in the mentioned folder, will be used instead of the original files. Read more about skin file substitution {% link 'here' ref_skin_substitution %}.

Also, you can put new files there to use in skin-specific views; they won't replace anything, just become available to reference inside View classes.

### Color schemes

A single skin can contain multiple color schemes within. To specify all available color schemes, skin should define `getLayoutColors()` function, which returns an array where the key is a colour scheme ID, and the value is the name of scheme:

```php
const COLOR_SCHEME_GREEN = 'green';
const COLOR_SCHEME_BLACK = 'black';
public static function getLayoutColors()
{
    return array(
        static::COLOR_SCHEME_GREEN => \XLite\Core\Translation::lbl('Green grass'),
        static::COLOR_SCHEME_BLACK => \XLite\Core\Translation::lbl('Black stone'),
    );
}
```

You can get the current colour scheme with `\XLite\Core\Layout::getInstance()->getLayoutColor()` function:

```
$currentLayoutType = \XLite\Core\Layout::getInstance()->getLayoutColor();
```

## Thumbnails and store logo

To add thumbnails, showcasing your skin on **Look & Feel** page, you should create `skins/admin/modules/<AuthorName>/<ModuleName>/preview_list.jpg` image. This image will be displayed in the skins listing at the **Look & Feel** page.

Image size should be 392px X 510px (W X H).

You might also want to define image for the top setting box, where the layout switcher are. If your skin configures either color schemes or layout types, or maybe both, you can provide multiple images. To provide thumbnails for all skin variants, you should combine file names like this (specified in the order of specificity):

*   preview_[color_scheme_id]_[layout_type].jpg
*   preview_[color_scheme_id].jpg
*   preview_[layout_type_id].jpg4. 
*   preview.jpg

Image size should be 725px X 612px (W X H).

Also, you can replace default storefront logo with another one, provided by skin. To do that, put a new logo to `<skin_folder>/images/logo.png` or `<skin_folder>/images/logo_<color_scheme_id>.png`.



