---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-08 14:28 +0400'
identifier: ref_NzhAvNte
title: Adding New Fulfilment/Payment Statuses (X-Cart 5.2.6 and Earlier)
version: X-Cart 5.2.6 and earlier
categories:
  - Developer docs
published: true
order: 50
---
## Introduction

This article shows developers how they can create new shipping and payment statuses for orders. The process is as easy as running three MySQL queries.

The solution provided in this article should be used for X-Cart versions 5.2.6 and earlier. Starting with X-Cart version 5.2.7, a special addon is available allowing you to manage X-Cart order statuses directly from the store's Admin area. For details, see the section {% link "Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)" ref_7FIU2sxJ %} of this manual.

## Table of Contents

*   [Creating Payment Statuses](#creating-payment-statuses)
*   [Creating Shipping Statuses](#creating-shipping-statuses)
*   [Translating Order Statuses](#translating-order-statuses)

## Creating Payment Statuses

To create a payment status, follow the steps below:

**Step 1**. Run the following MySQL query to X-Cart database:

```php
INSERT INTO xc_order_payment_statuses (code, position) VALUES ("YOUR-CODE", "80");
```

**YOUR-CODE** value defines the identifier of the new payment status for X-Cart. Usually, it is a 1- or 2-letter value, like **A** or **PP**, but can be up to 4 characters long. "**80**" defines the location of the new payment status in the list. The higher the value, the lower the new payment status will be on the list.

**Step 2**. Run this MySQL query:

```php
SELECT id FROM xc_order_payment_statuses WHERE code="YOUR-CODE";
```

This way we are getting an ID of this newly created payment status.

**Step 3**. Run the following MySQL query:

```php
INSERT INTO xc_order_payment_status_translations (id, name, customerName, code) VALUES ("ID-RECEIVED-IN-STEP-2", "Admin name", "Customer name", "en");
```

This query adds some language labels to be displayed for our new payment status. The **ID-RECEIVED-IN-STEP-2** piece should be replaced with the ID we received at step 2. **Admin name** is the name of the payment status in the Admin area, **Customer name** is the name of the payment status for customers, **en** is the code of the language for which we have defined the labels.

After that, check your store for the new payment status. It should be there.

## Creating Shipping Statuses

The process of shipping status creation is pretty much the same as for payment statuses, but we make requests to the tables `xc_order_shipping_statuses` and `xc_order_shipping_status_translations` instead of the tables `xc_order_payment_statuses` and `xc_order_payment_status_translations`.

**Step 1**. Run the following MySQL query:

```php
INSERT INTO xc_order_shipping_statuses (code, position) VALUES ("YOUR-CODE", "70");
```

The **YOUR-CODE** value defines the identifier of the new shipping status for X-Cart. Usually, it is a 1-, 2- or 3- character value, like **N** or **WND**, but can be up to 4 characters long. "**70**" defines the location of the new shipping status on the list. The higher the value, the lower the new shipping status will be on the list.

**Step 2**. Run this MySQL query:

```php
SELECT id FROM xc_order_shipping_statuses WHERE code="YOUR-CODE";
```

This way we are getting an ID of this newly created shipping status.

**Step 3**. Run the following MySQL query:

```php
INSERT INTO xc_order_shipping_status_translations (id, name, customerName, code) VALUES ("ID-RECEIVED-IN-STEP-2", "Admin shipping name", "Customer shipping name", "en");
```

This query adds some language labels to be displayed for our new shipping status. The **ID-RECEIVED-IN-STEP-2** part should be replaced with the ID we received at step 2. **Admin shipping name** is the name of the new shipping status in the Admin area. **Customer shipping name** is the name of the shipping status for customers. **en** is the code of the language for which we have defined the labels.

After that, check your store for new shipping status.

## Translating Order Statuses

If you need to translate payment or shipping statuses to another language, you will need to repeat step 3 from the instructions above with another **code** param.

If you are translating a shipping status, run the following MySQL query: 

```php
INSERT INTO xc_order_shipping_status_translations (id, name, customerName, code) VALUES ("SHIPPING-STATUS-ID", "Admin shipping name in your language", "Customer shipping name in your language", "YOUR-LANGUAGE-CODE");
```

**YOUR-LANGUAGE-CODE** must be replaced with your language code – e.g. **en** is English language code – and **SHIPPING-STATUS-ID** must be an ID of the shipping status taken from the `xc_order_shipping_statuses` table.

If you need to translate a payment status, you should do the same, but you will have to work with the tables `xc_order_payment_status_translations` and `xc_order_payment_statuses` in this case.

_Related pages:_

*   {% link "Managing X-Cart Order Statuses (X-Cart 5.2.7 and Later)" ref_7FIU2sxJ %}
