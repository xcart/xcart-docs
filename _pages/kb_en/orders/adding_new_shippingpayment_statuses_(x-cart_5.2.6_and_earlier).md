---
lang: en
layout: article_with_sidebar
updated_at: '2016-09-30 12:52 +0400'
identifier: ref_NzhAvNte
title: Adding new shipping/payment statuses (X-Cart 5.2.6 and earlier)
version: X-Cart 5.2.6 and earlier
categories:
  - Developer docs
published: true
order: 120
---

## Introduction

This article shows developers how they can create new shipping and payment statuses for orders. The process is as easy as running 3 MySQL queries.

The solution provided in this article should be used for X-Cart versions 5.2.6 and earlier. Starting with X-Cart version 5.2.7, a special module is available allowing you to manage X-Cart order statuses directly from the store's Admin area. For details, see the {% link "Managing X-Cart order statuses (X-Cart 5.2.7 and later)" ref_7FIU2sxJ %} section of this manual.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Creating payment status](#creating-payment-status)
*   [Creating shipping status](#creating-shipping-status)
*   [Translating order statuses](#translating-order-statuses)

## Creating payment status

**Step 1**. Run the following MySQL query to X-Cart database:

```php
INSERT INTO xc_order_payment_statuses (code, position) VALUES ("YOUR-CODE", "80");
```

**YOUR-CODE** value defines the identifier of new payment status for X-Cart. Usually, it is 1 or 2 letters value, like **A** or **PP**, but can be up to 4 symbols long. "**80**" defines the location of new payment status in the list. The higher the value, the lower the new payment status in the list.

**Step 2**. Run this MySQL query:

```php
SELECT id FROM xc_order_payment_statuses WHERE code="YOUR-CODE";
```

This way we are getting an ID of this newly created payment status.

**Step 3**. Run the following MySQL query:

```php
INSERT INTO xc_order_payment_status_translations (id, name, customerName, code) VALUES ("ID-RECEIVED-IN-STEP-2", "Admin name", "Customer name", "en");
```

This query adds language labels to be displayed for our new payment status. **ID-RECEIVED-IN-STEP-2** piece should be replaced with the ID we received in step 2, **Admin name** is a name of payment status in admin area, **Customer name** is a name of payment status for customer, **en** defines the code of the language we defined labels for.

After that, check your store for new payment status. It should be there.

## Creating shipping status

The process is pretty much the same as for payment statuses, but we make requests to `xc_order_shipping_statuses` and `xc_order_shipping_status_translations` tables instead of `xc_order_payment_statuses`, `xc_order_payment_status_translations` ones.

**Step 1**. Run the following MySQL query:

```php
INSERT INTO xc_order_shipping_statuses (code, position) VALUES ("YOUR-CODE", "70");
```

**YOUR-CODE** value defines the identifier of new shipping status for X-Cart. Usually, it is 1, 2 or 3 character value, like **N** or **WND**, but can be up to 4 symbols long. "**70**" defines the location of new shipping status in the list. The higher the value, the lower the new shipping status in the list.

**Step 2**. Run this MySQL query:

```php
SELECT id FROM xc_order_shipping_statuses WHERE code="YOUR-CODE";
```

This way we are getting an ID of this newly created shipping status.

**Step 3**. Run the following MySQL query:

```php
INSERT INTO xc_order_shipping_status_translations (id, name, customerName, code) VALUES ("ID-RECEIVED-IN-STEP-2", "Admin shipping name", "Customer shipping name", "en");
```

This query adds language labels to be displayed for our new shipping status. **ID-RECEIVED-IN-STEP-2** part should be replaced with the ID we received in step 2, **Admin shipping name** is a name of new shipping status in admin area, **Customer shipping name** is a name of the shipping status for customers, **en** defines the code of the language we defined labels for.

After that, check your store for new shipping status.

## Translating order statuses

If you need to translate payment or shipping statuses to another language, then you need to repeat step 3 from the instructions above with another** code** param.

If you translate shipping status, the run the following MySQL query: 

```php
INSERT INTO xc_order_shipping_status_translations (id, name, customerName, code) VALUES ("SHIPPING-STATUS-ID", "Admin shipping name in your language", "Customer shipping name in your language", "YOUR-LANGUAGE-CODE");
```

**YOUR-LANGUAGE-CODE** must be replaced with your language code – e.g. **en** is English language code – and **SHIPPING-STATUS-ID** must be an ID of shipping status taken from the `xc_order_shipping_statuses` table.

If you need to translate payment status, you should do the same, but you will work with `xc_order_payment_status_translations` and `xc_order_payment_statuses` tables.

_Related pages:_

*   {% link "Managing X-Cart order statuses (X-Cart 5.2.7 and later)" ref_7FIU2sxJ %}
