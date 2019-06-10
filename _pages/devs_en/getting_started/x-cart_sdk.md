---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-05 11:46 +0400'
title: X-Cart SDK
identifier: ref_HvrXVNvJ
order: 150
categories:
  - Developer docs
version: X-Cart 5.0 - 5.2
published: true
---

## Introduction

{% note warning %}
This SDK is deprecated since X-Cart 5.3.4. {% link "X-Cart command line tool" ref_eg4htFFH %} is the direct replacement with the similar features.
{% endnote %}

X-Cart SDK is a collection of macros that ease X-Cart 5 development. This article explains how to obtain X-Cart SDK and how to use its macros.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Obtaining X-Cart SDK](#obtaining-x-cart-sdk)
    *   [Notes](#notes)
*   [Macros](#macros)
    *   [Creating module](#creating-module)
    *   [Creating page](#creating-page)
    *   [Decorating class](#decorating-class)
    *   [Loading YAML file](#loading-yaml-file)
    *   [Making demo dump for performance tests](#making-demo-dump-for-performance-tests)

## Obtaining X-Cart SDK

1.  Download X-Cart SDK from [https://github.com/xcart/next-sdk](https://github.com/xcart/next-sdk) repository. If you are not familiar with GIT, you can simply download it as **.zip** archive.
    ![]({{site.baseurl}}/attachments/7864338/7995398.png)
2.  Unpack it to the directory near to X-Cart's one. For instance, if your X-Cart lives in `~/www/xcart/` folder, then put your SDK's folder as `~/www/next-sdk/`.
3.  Run macros from the X-Cart's folder, e.g. 

    ```php
    ./../next-sdk/devkit/macros/create-module.php --module=Test\\Test
    ```

    Note: this macro call will create module with developer ID **Test** and module ID **Test**.

### Notes

1.  If you are using Mac and PHP is run as a part of MAMP, you may need to run the script as 

    ```php
    /Applications/MAMP/bin/php/php5.4.10/bin/php ./../next-sdk/devkit/macros/load-yaml.php path/to/yaml/file/install.yaml
    ```

    i.e. you need to explicitly call MAMP's PHP binary instead of relying on default PHP binary.

## Macros

The most actual information about how to run macro can be found by calling it with `--help` parameter, e.g.

```php
./../next-sdk/devkit/macros/create-module.php --help
```

Let us take a closer look at macros available.

### Creating module

Call this macro as:

```php
./../next-sdk/devkit/macros/create-module.php --module=DeveloperID\\ModuleID
```

`--module` parameter must be passed and contain module's developer and module IDs separated by `\\` characters.

Aside from that, you can specify the following parameters:

1.  `--hasSettings` that will automatically mark this module as having settings (you will need to specify these settings additionally later on)
2.  `--version=5.1 `in case you want to explicitly specify module's major version

### Creating page

Call this macro as: 

```php
./../next-sdk/devkit/macros/create-page.php --module=Tony\\PageDemo --target=tony --interface=admin
```

Mandatory parameters:

1.  `--module` parameter defines what class will have the page you are creating;
2.  `--target` parameter defines what target this page will be accessed by;
3.  `--interface` parameter defines whether you create admin or customer page;

You can also specify `--menu` parameter in order to automatically insert new page to some menu in admin area.

The result of this macro call will be creation of the controller class, viewer class and template file. If `--menu` parameter is passed, then one more viewer class will be created in order to insert a link to this page into a menu.

In case of example macro call, the following files will be created:

*   `<X-Cart>/classes/XLite/Module/Tony/PageDemo/Controller/Admin/Tony.php`
*   `<X-Cart>/classes/XLite/Module/Tony/PageDemo/View/Page/Admin/Tony.php`
*   `<X-Cart>/skins/admin/en/modules/Tony/PageDemo/page/tony/body.tpl`

### Decorating class

Call this macro as:

```php
./../next-sdk/devkit/macros/decorate.php --module=DeveloperID\\ModuleID --class=classes/XLite/Path/To/File.php
```

`--class` parameter must be passed and it defines what class is going to be decorated in the module passed in the `--module` parameter. You should specify a path to a file starting with `classes/` directory.

`--module` parameter must be passed and contain module's developer and module IDs separated by `\\` characters. This parameter will define what module will contain decorated class defined in the `--class` parameter.

Example 

```php
./../next-sdk/devkit/macros/decorate.php --module=Tony\\DecoratorDemo --class=classes/XLite/View/Minicart.php
```

After running this command, the macro will create `<X-Cart>/classes/XLite/Module/Tony/DecoratorDemo/View/Minicart.php` file that will define a class that decorates the `\XLite\View\Minicart` one.

### Loading YAML file

You can use this macro in case you need to load YAML file without uninstalling/installing back your module.

Call this macro as:

```php
./../next-sdk/devkit/macros/load-yaml.php path/to/yaml/file/install.yaml
```

Your YAML file must be located at the `path/to/yaml/file/install.yaml` path you pass to macro.

There is an {% link "alternative way to load YAML file" ref_8BPAwaEG %}, if you prefer not to use X-Cart SDK.

### Making demo dump for performance tests

In case you want to test your module or whole X-Cart's performance and you want to fill your database with dummy data, you can use this script. 

Call this macro as follows:

```php
./../next-sdk/devkit/macros/generate-dump-etalon.php
```

You can specify following parameters:

*   `--categories` defines how many categories will be specified per category tree level. Default value: 10;
*   `--depth` defines the depth of category tree. Default value: 1\. If `--depth=1` and `--categories=10`, then the macro will create 10 root categories. If `--depth=2` and `--categories=20`, then the macro will create 20 root categories and each of them will contain 20 subcategories resulted in 400 categories, and so on;
*   `--categoryImage` if this option is specified, then each category will have its own image;
*   `--featuredProducts` specifies how many featured products will be in each category including home page. Default value: 20;
*   `--products` defines number of products per category. Default value: 20;
*   `--attributes` defines number of attributes per product. Default value: 0;
*   `--options` specifies number of product options per product. Default value: 0;
*   `--optionValues` specifies number of option values per product option. Default value: 0\. If you have a product with following options: **color** (White, Grey, Black), **size** (S, M, L), then you can replicate this configuration by specifying `--option=2 --optionValues=3`;
*   `--productImages` defines number of product images per product. Default value: 1;
*   `--wholesalePrices` defines number of wholesale prices per product. Default value: 0;
*   `--orders` defines number of orders in a test dump. Default value: 1000;
*   `--orderItems` defines number of products per order. Default value: 0.

Example of a macro call that will create **10 root categories** with **10 subcategories** for each root category (resulted in 100 categories). Each category will have an **image** and **30 featured products**. Each category will contain **100 products** (resulted in 10 000 products). Each product will have **8 attributes**, **5 of them allows selection** (product option) with **3 choices** (resulted in 80 000 attributes and 150 000 option choices). Each product will have **3 product images** and **4 wholesale prices**. Besides that the demo dump will contain **5000 orders** with **3 products per order**.

```php
./../next-sdk/devkit/macros/generate-dump-etalon.php --categories=10 --depth=2 --categoryImage -featuredProducts=30 --products=100 --attributes=8 --options=5 --optionValues=3 --productImages=3 --wholesalePrices=4 --orders=5000 --orderItems=3
```

_Note: you do not specify user number explicitly. You will have the same number of users as number of orders._

## Attachments:

* [git-download-zip.png]({{site.baseurl}}/attachments/7864338/7995398.png) (image/png)
