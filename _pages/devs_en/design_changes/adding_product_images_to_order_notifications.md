---
title: Adding product images to order notifications
identifier: ref_Qn8aa4z4
updated_at: '2015-01-21 00:00'
layout: article_with_sidebar
lang: en
categories:
  - Developer docs
  - Demo module
published: true
---

## Introduction

This guide explains how you can add product images to order notifications. It also gives an overview of invoice structure in terms of templates.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Structure of invoice page](#structure-of-invoice-page)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Structure of invoice page

Before we get started we have to understand what templates {% link "render an invoice page" ref_E88KCMDD %}. The responsible {% link "viewer class" ref_6dMJsZ63 %} for invoice display is `\XLite\View\Invoice` ({% link "more info about classnames in X-Cart" ref_FAgFbEx9 %}) and as we can see in its code, it starts rendering the invoice from the `order/invoice/body.twig` template (see `getDefaultTemplate()` method of the class). Depending on the area, this template can be different:

*   **Customer area**: if you are on the **Thank you** page after successful checkout, then the invoice will be displayed by the skins/_customer_/**order/invoice/body.twig** template;
*   **Admin area and Email notificaitons**: if you are viewing an invoice in **Invoice** section of the order details page or invoice is sent by email, then this page will be displayed by the skins/_common_/**order/invoice/body.twig** template.

The structure of these two templates are the same, but they are put into two different directories in order to allow quick ability to alter only version used in customer store-front. 

`order/invoice/body.twig` template is very basic and it just displays the content of `invoice.base` view list. This view list includes the `order/invoice/parts/items/items.twig` template that defines the entire product table and other templates inside the `order/invoice/parts` folder.

{% note %}The structure of templates in this view list can be seen via [Template editor](https://devs.x-cart.com/getting_started/how-to-apply-design-changes.html#seeing-structure-of-specific-page "Adding product images to order notifications").{% endnote %}

Here is a code of the `order/invoice/parts/items/items.twig` template: 

```twig
{##
 # Invoice items
 #
 # @ListChild (list="invoice.base", weight="50")
 #}
<table cellspacing="0" class="items">
  <tr>{{ widget_list('invoice.items.head') }}</tr>
  {% for index, item in this.getOrderItems() %}
  <tr>{{ widget_list('invoice.item', item=item) }}</tr>
  {% endfor %}
  {% for w in this.getViewList('invoice.items') %}
    <tr>{{ w.display() }}</tr>
  {% endfor %}
</table>
```

If we want to add a new element into header of this table, then we must put our template into the `invoice.items.head` view list. If we want to put a new element into product lines of the table, then we must insert our template into the `invoice.item` view list. Note that the `order/invoice/parts/items/items.tpl` template passes `{item}` parameter into display of the `invoice.item` view list, which means that we will be able to access `\XLite\Model\OrderItem` object in the template inserted into this view list. It will be handy, because we need to access its image URL.

## Implementation

We start with {% link "Creating module" ref_G2mlgckf %} with module ID **XCExample** and developer ID **InvoiceChangeDemo**.

We create the `skins/common/modules/XCExample/InvoiceChangeDemo/invoice/parts/` folder with two files in it.

1. `head.twig` template with the following content: 

    ```twig
	{##
	 # @ListChild (list="invoice.items.head", weight="5")
	 #}

	<th class="item">Image</th>
    ```

    This code inserts an **Image** cell into header of product table and since its weight is **5**, this cell will be displayed at beginning of the header row.

2. `image.twig` template with the following content: 

    ```twig
	{##
	 # @ListChild (list="invoice.item", weight="5")
	 #}

	<td class="item">
	{{ widget('XLite\\View\\Image', image=item.getImage(), maxWidth=80, maxHeight=80 }}
	</td>
    ```

	This code inserts an image wrapped into `<td></td>` element. This image is inserted via `\XLite\View\Image` widget as this widget performs {% link "on-fly resizing routine" ref_5XhuExQ3 %} according to `maxWidth` and `maxHeight` params. Again, since we insert this template with weight **5**, it will be displayed at beginning of table's row.

If we re-deploy the store (in order to allow X-Cart assign templates into view list) and place a test order, the Thank You page will look as follows:
![]({{site.baseurl}}/attachments/8225446/8356205.png)

The invoice section of order page in admin area will look the same, but email notifications will not display product images, at least in GMail. X-Cart has built-in mechanism of attaching images to emails, but to run it, an image must be specified with relative URL (e.g. `images/product/my-image.png`), not with full URL (e.g. `http://example.com/xcart/images/product/my-image.png`).

So, we are going to define special versions of `head.twig` and `image.twig` templates for email notifications. 

First step is just to copy folder `skins/common/modules/Tony/InvoiceChangeDemo/` to `skins/mail/common/modules/Tony/InvoiceChangeDemo/` one. Then we define content of `skins/mail/common/modules/Tony/InvoiceChangeDemo/invoice/parts/head.twig` as follows:

```twig
{##
 # @ListChild (list="invoice.items.head", weight="5")
 #}

<th style="border-width:1px;border-collapse: collapse;border-spacing: 0px;border-style: solid;border-color: #c4c4c4;text-align: left;background: #f9f9f9 none;font-weight: normal;padding: 12px 22px;white-space: nowrap;color: #000000;font-size: 16px;">Image-mail</th>
```

We define inline CSS styles in order to allow GMail to accept them.

We also define content of `skins/mail/common/modules/Tony/InvoiceChangeDemo/invoice/parts/image.twig` template as follows:

```twig
{##
 # @ListChild (list="invoice.item", weight="5")
 #}

<td style="text-align: center;vertical-align: top;border-width:1px;border-collapse: collapse;border-spacing: 0px;border-style: solid;border-color: #c4c4c4;padding: 10px 20px;vertical-align: top;">
<img src="{{ this.item.getImage().getRelativePath() }}" width="80" height="80" />
</td>
```

We define inline CSS styles here as well, but we also pull image's path by using `getRelativePath()` method which does not exist in default X-Cart. We have to define this method ourselves. For that we {% link "decorate" ref_AF6bmvL6 %} `\XLite\Model\Image\Product\Image` class.

Create the `XLite\Module\XCExample\InvoiceChangeDemo\Model\Image\Product\Image` class with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\InvoiceChangeDemo\Model\Image\Product;

/**
 * Product image
 */
abstract class Image extends \XLite\Model\Image\Product\Image implements \XLite\Base\IDecorator
{
	public function getRelativePath()
	{
		return  LC_IMAGES_URL . '/' . $this->getRepository()->getStorageName() . '/' . 
				rawurlencode($this->getPath());
	}
}
```

The module is ready now. You need to re-deploy the store and check the results in customer area:
![]({{site.baseurl}}/attachments/8225446/8356206.png)

and in your mailbox.

## Module pack

You can download this module example from here: <https://www.dropbox.com/s/xp0pyjj0mspujs1/XCExample-InvoiceChangeDemo-v5_3_0.tar>

## Attachments:

* [admin-invoice.png]({{site.baseurl}}/attachments/8225446/8356205.png) (image/png)
* [customer-invoice.png]({{site.baseurl}}/attachments/8225446/8356206.png) (image/png)
