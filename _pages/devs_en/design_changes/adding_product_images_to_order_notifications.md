---
title: Adding product images to order notifications
identifier: ref_Qn8aa4z4
updated_at: 2015-01-21 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This guide explains how you can add product images to order notifications. It also gives an overview of invoice structure in terms of templates.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [How it is going to work](#how-it-is-going-to-work)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## How it is going to work

Before we get started we have to understand what templates {% link "render an invoice page" ref_E88KCMDD %}. The responsible {% link "viewer class" ref_6dMJsZ63 %} for invoice display is `\XLite\View\Invoice` ({% link "more info about classnames in X-Cart" ref_FAgFbEx9 %}) and as we can see in its code, it starts rendering the invoice from the `order/invoice/body.tpl` template (see `getDefaultTemplate()` method of the class) depending on the area:

*   **Customer area**: if you are on the **Thank you** page after successful checkout, then the invoice will be displayed by the `<X-Cart>/skins/<u>default</u>/en/**order/invoice/body.tpl**` template;
*   **Admin area**: if you are viewing an invoice in **Invoice** section of the order details page, then the invoice will be displayed by the `<X-Cart>/skins/<u>admin</u>/en/**order/invoice/body.tpl**` template;
*   **Mail**: the invoice sent via email is defined by the `<X-Cart>/skins/<u>mail</u>/en/**order/invoice/body.tpl**` template.

The structure of these three templates are the same, but they are put into three different directories, because an invoice must be displayed in three different interfaces: **admin**, **customer** and **mail**. 

`order/invoice/body.tpl` template is very basic and it just displays content of `invoice.base` view list. This view list includes the `order/invoice/parts/items/items.tpl` template that defines the entire product table.

_Note: the structure of templates in this view list can be seen via Webmaster Kit module._

Here is a code of the `order/invoice/parts/items/items.tpl` template: 

```php
{* vim: set ts=2 sw=2 sts=2 et: *}

{**
 * @ListChild (list="invoice.base", weight="30")
 *}

<table cellspacing="0" class="items">
  <tr><list name="invoice.items.head" /></tr>
  {foreach:order.getItems(),index,item}
  <tr><list name="invoice.item" item="{item}" /></tr>
  {end:}
  <tr FOREACH="getViewList(#invoice.items#),w">{w.display()}</tr>
</table>
```

If we want to add a new element into header of this table, then we must put our template into the `invoice.items.head` view list. If we want to put a new element into product lines of the table, then we must insert our template into the `invoice.item` view list. Note that the `order/invoice/parts/items/items.tpl` template passes `{item}` parameter into display of the `invoice.item` view list, which means that we will be able to access `\XLite\Model\OrderItem` object in the template inserted into this view list. It will be handy, because we need to access its image URL.

## Implementation

We start with creating an empty module with module ID **Tony** and developer ID **InvoiceChangeDemo**.

As a first step, we are going to add product images to invoices in admin area. This way we will understand the approach and then we will be able to easily re-apply changes to other X-Cart view interfaces: customer and mail.

We create the `<X-Cart>/skins/admin/en/modules/Tony/InvoiceChangeDemo/invoice-parts` folder with two files in it.

1.  `head.tpl` template with the following content: 

    ```php
    {* vim: set ts=2 sw=2 sts=2 et: *}

    {**
     * @ListChild (list="invoice.items.head", weight="5")
     *}
    <th class="item">Image</th>
    ```

    This code inserts an **Image** cell into product table on invoice page and since its weight is **5**, this cell will be displayed at beginning of the header row.

2.  `image.tpl` template with the following content: 

    ```php
    {* vim: set ts=2 sw=2 sts=2 et: *}

    {**
     * @ListChild (list="invoice.item", weight="5")
     *}

    <td class="item"><widget class="\XLite\View\Image" image="{item.getImage()}" maxWidth="80" maxHeight="80" /></td>
    ```

    This code inserts an image wrapped into `<td></td>` element. This image is inserted via `\XLite\View\Image` widget as this widget performs {% link "on-fly resizing routine" ref_5XhuExQ3 %} according to `maxWidth` and `maxHeight` params. Again, since we insert this template with weight as **5**, it will be displayed at beginning of table's row.

Now we can re-deploy the store and check preliminary results in admin area. A new **Invoice** section should look as follows: ![]({{site.baseurl}}/attachments/8225446/8356205.png)

but your product tables in customer area and in mail notifications are still old.

In order to apply this change to invoices in customer area, just copy the content of the `<X-Cart>/skins/admin/en/modules/Tony/InvoiceChangeDemo/` folder to 
`<X-Cart>/skins/default/en/modules/Tony/InvoiceChangeDemo/` directory. Templates in it will be picked up by view lists automatically.

In order to apply this change to invoices sent via email, create a `<X-Cart>/skins/mail/en/modules/Tony/InvoiceChangeDemo/invoice-parts/` directory with two files in it:

1.  `head.tpl` template with the following content: 

    ```php
    {* vim: set ts=2 sw=2 sts=2 et: *}

    {**
     * @ListChild (list="invoice.items.head", weight="5")
     *}

    <th style="border-width:1px;border-collapse: collapse;border-spacing: 0px;border-style: solid;border-color: #c4c4c4;text-align: left;background: #f9f9f9 none;font-weight: normal;padding: 12px 22px;white-space: nowrap;color: #000000;font-size: 16px;">Image</th>
    ```

    The idea behind this template is the same as `head.tpl` template explained above, but we apply inline styles, because **GMail** does not support external CSS files.

2.  `image.tpl` template with the following content: 

    ```php
    {* vim: set ts=2 sw=2 sts=2 et: *}

    {**
     * @ListChild (list="invoice.item", weight="5")
     *}

    <td style="text-align: center;vertical-align: top;border-width:1px;border-collapse: collapse;border-spacing: 0px;border-style: solid;border-color: #c4c4c4;padding: 10px 20px;vertical-align: top;"><img src="{item.getImageURL()}" width="80" height="80" /></td>
    ```

    The idea is the same, but we also apply inline CSS styles and the code for image display is a bit different: 

    ```php
    <img src="{item.getImageURL()}" width="80" height="80" />
    ```

    We have to specify full image URL here, because otherwise the mailer installed on your server will not be able to pick up an image during email sending.

The mod is ready now. You need to re-deploy the store and check the results in customer area:
![]({{site.baseurl}}/attachments/8225446/8356206.png)

and in your mailbox.

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-InvoiceChangeDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-InvoiceChangeDemo-v5_1_0.tar)

## Attachments:

* [admin-invoice.png]({{site.baseurl}}/attachments/8225446/8356205.png) (image/png)
* [customer-invoice.png]({{site.baseurl}}/attachments/8225446/8356206.png) (image/png)