---
title: Skin file substitution
lang: en
layout: article_with_sidebar
updated_at: 2016-10-24 00:00
identifier: ref_skin_substitution
order: 32
keywords:
- custom skin
- template substitution
---

## Introduction

File substitution system enables you to easily extend themes and minimize the maintenance efforts. It allows you to replace the default interface files (such as templates, styles, images) at runtime based on current enabled skin module and locale conditions.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Substitution algorithm](#substitution-algorithm)
*   [Fallback scheme](#fallback-scheme)
*   [Example usage](#example-usage)

## Substitution algorithm 

When X-Cart view system has to render a template or include a style, or somehow reference a file inside `<X-Cart>/skins` folder, it will go through a certain algorithm to choose the best file given certain circumstances. Practically it will take a set of folder paths in the certain order and search for the file by given path inside those folders. 

This system is based on the fallback scheme, which guarantees that if a view file is not found in the current skin, the system searches in the default skin and common files.

## Fallback scheme

The fallback scheme is the following:

1.  Theme tweaker: `<X-Cart>/skins/theme_tweaker/<interface>`.

2.  Current enabled skin paths: `<X-Cart>/skins/<skin_path>/<interface>`. This path has to be defined by skin (read more about {% link 'definition format' ref_skinmodule#skin-paths %}). 

3.  Default skin path: `<X-Cart>/skins/<interface>`. 

4.  Common files, which are used regardless of interface: `<X-Cart>/skins/common`.

{% note info %}
Here `<interface>` stands for current displayed interface key, combined with locale code. 

For example, when X-Cart renders a widget for a Russian-speaking customer, `<interface>` will be: `customer_ru`. 

The locale code also fallbacks to the default language - **English**. If file is not found by other language code or English is the enabled one, `<interface>` will be simply `customer`.

Such fallback can particularly help you when you have to display one image in different languages. You simply define page layout and style in default `customer` interface path and provide only the translated image inside `customer_<lang>` folder.

Also, you can read more about available interfaces at {% link 'Templates and interface' ref_templates#view-interfaces %} page
{% endnote %}

The special case here is the `mail` interface - its folder can contain any other interface. When X-Cart renders mail message for a customer, it will look inside `mail/<interface>` folder for a message template.

So if you need to customize a certain template or file, you put an overriding one with the same name in the `<X-Cart>/skins/<skin_path>/<interface>/<path_to_file>` directory, where `<path_to_file>` is the path to the original template.

## Example usage

For example, the task is to add a message to the customer invoice below the logo and invoice number. 

![]({{site.baseurl}}/attachments/ref_skin_substitution/before.png)

The red zone can be modified through `<X-Cart>/skins/common/order/invoice/parts/bottom.twig` file. But it is the core file and you don't want to break the upgrade. Also, the task is to add the message to customer invoice **only**.

Using file substitution system, you create either `skins/theme_tweaker/customer/order/invoice/parts/bottom.twig` with modified content, or go through the whole skin defining process and after that create `skins/new_skin/customer/order/invoice/parts/bottom.twig` file (let's just assume that skin registers its path as `new_skin/customer`).

{% note info %}
If you need to modify this template for a mailed invoice, you have to use `skins/new_skin/mail/common/order/invoice/parts/bottom.twig` (in case of separate skin module). Also, starting from 5.3.2 version, you can create `skins/theme_tweaker/mail/common/order/invoice/parts/bottom.twig` with modified content.
{% endnote %}

One way or another, the result is:

![]({{site.baseurl}}/attachments/ref_skin_substitution/after.png)

