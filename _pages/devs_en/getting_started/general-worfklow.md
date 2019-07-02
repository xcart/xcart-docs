---
lang: en
layout: article_with_sidebar
updated_at: '2019-07-01 16:21 +0400'
identifier: ref_3PbebC0P
title: General X-Cart workflow
order: 200
published: false
---
## Introduction

This article illustrates how X-Cart's core generally works. How it accepts the request, what is happening next and how the entire page is displayed to the client.

{% toc Table of Contents %}

## X-Cart's workflow

Let us start with a moment when a client submits a request to X-Cart. It can be either GET or POST request, it does not matter. Based on the `target` parameter in this request, X-Cart finds out the responsible {% link "controller" ref_hkVaxgds %} and runs `handleRequest()` and `doAction` methods of this controller.

These methods essentially performs all needed preparations and X-Cart starts rendering the page. X-Cart starts rendering a page in admin area from the `<XC>/skins/admin/body.twig` template and one in customer area from the `<XC>/skins/customer/body.twig` one.

The templates have {% link "tree-like structure" ref_E88KCMDD#how-x-cart-renders-pages %} and parent template includes calls for child templates or collection of templates ({% link "called 'view lists'" ref_E88KCMDD#registering-template-in-view-list %}), which in turn may call their own child templates and collections and so on.

Probably, the most common task here is to identify the template that is responsible for displaying central area of the page. You can do that either by using [Template Editor](https://kb.x-cart.com/look_and_feel/theme_tweaker/template_editor.html) feature (for customer area) or [Webmaster Kit module](https://market.x-cart.com/addons/webmaster-kit.html) (works for every area, but less user-friendly).

Below are examples of identifying main templates via Template Editor.

Page `cart.php?target=wishlist`:
![wishlist.png]({{site.baseurl}}/attachments/ref_3PbebC0P/wishlist.png)

Page `cart.php?target=sale_products`:
![sale.png]({{site.baseurl}}/attachments/ref_3PbebC0P/sale.png)

The general rule is to find the `customer/layout/content/center_top.twig` template and then find the template responsible for the main area among its children.

However, using Template Editor or Webmaster Kit allows you to find the responsible template for ANY area of X-Cart (not only central one) just by hovering the pointer over it.

While X-Cart is rendering the page, it may require some data. In this case, {% link "viewer classes" ref_E88KCMDD#registering-viewer-class-in-view-list %} that supply data for templates will be responsible for pulling this data. They may make requests to 3rd party servers to get this data (e.g. online shipping calculators) or, most commonly, get the data from {% link "the database" ref_uAv5ETfx %}. Either way, this data is usually wrapped into {% link "model objects" ref_wmExvPDD %} for the encapsulation.

This leads us to the most general idea of X-Cart workflow: controllers take the request and prepare its data, then viewers start rendering the page and if they require additional data, they request it from the database layer, which will pack the data into models.

This is how X-Cart generally works and if we want to change any piece of this workflow we apply {% link "decorator pattern" ref_AF6bmvL6 %}. E.g. you want to change how controller handles the data, you decorate the controller; you want to add new properties to the product object, you decorate the product model's class and add these fields into model, then you change needed templates to display new properties where you want.