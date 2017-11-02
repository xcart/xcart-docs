---
title: File structure of header
lang: en
layout: article_with_sidebar
updated_at: 2017-10-13 01:22 +0400
identifier: ref_xG0ZIbxu
order: 100
---

## Introduction

To avoid any misunderstanding, by header section of X-Cart customer area, we assume the section shown below:
![header.png]({{site.baseurl}}/attachments/ref_xG0ZIbxu/header.png)

and the section highlighted below is 'Top menu':
![top-menu.png]({{site.baseurl}}/attachments/ref_xG0ZIbxu/top-menu.png)

In this article we are going to cover what templates, viewer classes and view lists render these sections, so you would know {% link "what files to extend in order to apply your design" ref_fCqWygpc %}.

## Table of Contents

- [Introduction](#introduction)
- [Table of Contents](#table-of-contents)
- [Header structure](#header-structure)
- [Top menu structure](#top-menu-structure)

## Header structure

The main template that is responsible for rendering header area is `<X-Cart>/skins/customer/layout/header/main.header.twig`.

This template registered in main view list 'layout.main' in customer area with 200 weight. It means that if you want to put any elements above or below it, you can register it inside this view list with another weight.

The content of `<X-Cart>/skins/customer/layout/header/main.header.twig` template is mainly a call for other view lists:

```html
{##
 # Header
 #
 # @ListChild (list="layout.main", weight="200")
 #}
<div id="header-area">
  <div class="desktop-header">
    {{ widget_list('layout.header') }}
  </div>

  {{ widget_list('layout.header.mobile') }}
</div>
```

Header displayed on desktop devices are defined by templates registered in 'layout.header' view list, while header for mobile devices is defined by ones in 'layout.header.mobile' view list.

This article focuses of desktop header, so let us have a look at what we have in 'layout.header' view list. This list contains following templates:

1. `<X-Cart>/skins/customer/layout/header/header.logo.twig` that renders the store's logo;
2. `<X-Cart>/skins/customer/layout/header/header.right.twig` that renders basket section in top right;
3. `<X-Cart>/skins/customer/layout/header/header.bar.twig` that renders the middle section in the header (my account, search box, log in / log out, etc).

`<X-Cart>/skins/customer/layout/header/header.right.twig` includes a call for 'layout.header.right' view lists that consists of only one view class `\XLite\View\Minicart`. To keep it simple, let us provide a full tree of templates and view lists that is used by this class:

- `<X-Cart>/skins/customer/mini_cart/horizontal/body.twig` (controlled by `\XLite\View\Minicart`)
	- 'minicart.horizontal.children' view list
		- `<X-Cart>/skins/customer/mini_cart/horizontal/parts/mobile.icon.twig` renders basket icon
		- `<X-Cart>/skins/customer/mini_cart/horizontal/parts/link.twig` renders how many products are in the cart
		- `<X-Cart>/skins/customer/mini_cart/horizontal/parts/items.twig` renders the section that appears once you click on basket icon
	- 'minicart.horizontal.base' empty view list

`<X-Cart>/skins/customer/layout/header/header.bar.twig` template calls for content of 'layout.header.bar' view list and here is the structure of templates in this view list:

- `customer/layout/header/header.bar.links.logged.twig` template
	- 'layout.header.bar.links.logged' view list
    	- `customer/layout/header/header.bar.links.logged.account.twig` defines 'My account' link
        - `customer/layout/header/header.bar.links.logged.logout.twig` defines 'Log out' link
        - `customer/language_selector/body.twig` defines language selector
- `customer/modules/XC/Geolocation/location_popup/button.twig` template that renders selector for choosing your location if you have Geolocation module installed
- `customer/layout/header/header.bar.search.twig` template that renders quick search form

## Top menu structure

Top menu's main template is `customer/layout/header/top_menu.twig`, however it defines only wrapper divs around actual top menu and calls for 'header.menu' view list. This view list consists of only `XLite\View\Menu\Customer\Top` viewer class.

If you have Simple CMS module enabled, it overrides default `XLite\View\Menu\Customer\Top` class and uses `customer/modules/CDev/SimpleCMS/primary_menu_items.twig` template. Default `XLite\View\Menu\Customer\Top` class uses `customer/layout/header/main_menu_items.twig` template.

These two templates do actual work of rendering menu items depending on what menu items defined in admin area.
    
