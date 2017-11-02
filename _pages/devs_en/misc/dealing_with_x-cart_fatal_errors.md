---
title: Dealing with X-Cart fatal errors
identifier: ref_nI5Nu52p
updated_at: 2014-09-23 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
---

## Introduction

This article helps merchants who faced a fatal error from X-Cart.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [General flow of dealing with fatal errors](#general-flow-of-dealing-with-fatal-errors)
*   [PHP syntax error](#php-syntax-error)
*   [Problem with database connection](#problem-with-database-connection)
*   [Problem with Doctrine entities relationship](#problem-with-doctrine-entities-relationship)
*   [Cannot redeclare class](#cannot-redeclare-class)

## General flow of dealing with fatal errors

If you received a fatal error while rebuilding cache the first thing to do is to **restore your store from the recent backup**. Ask your hosting team to help you with this task. If your hosting does not create backups on regular basis, probably it is a good idea to [change hosting provider](http://www.x-cart.com/hosting.html) at least for such an important purpose as e-commerce business.

After that you will get back to properly working store and can start working towards fixing the problem.

If you received one of the typical fatal errors below, you can try to fix them yourself.

If it is something that is not described in this article, you can try to fix it yourself if you have enough tech knowledge, ask for free help on [forums](http://forum.x-cart.com/) or contact our support service for [commercial help](http://www.x-cart.com/contact-us.html). Of course, the problem might be a bug in default software and in this case, please report it to [our bug-tracker](http://bt.x-cart.com/).

If you request a help on forums or send us a message, please specify as much info about problem as possible and attach recent log files from `<X-Cart>/var/log/` folder. Likely logs have important information about problem happened and will speed up the problem resolution.

## PHP syntax error

Typical PHP syntax error looks like this:

```php
Parse error: syntax error, unexpected 'typo' (T_STRING), expecting function (T_FUNCTION) in /Applications/MAMP/htdocs/next/src/classes/XLite/Module/CDev/AmazonS3Images/Main.php on line 97
```

In this case you should check the file mentioned in the error message (e.g. `/Applications/MAMP/htdocs/next/src/classes/XLite/Module/CDev/AmazonS3Images/Main.php`) at the line 97 (as mentioned in the error message) and find the code that causes this problem.

This type of problem usually happens in user modules, so you can fix the problem yourself. If it happens in 3rd party modules, please notify developers about it. If it happens with default X-Cart modules, please report the problem to our [bug-tracker](https://bt.x-cart.com).

## Problem with database connection

Check {% link "this guide" http://kb.x-cart.com/en/general_setup/installation_guide.html#problems-with-connection-to-database %} in order to find how you can fix this problem.

## Problem with Doctrine entities relationship

Such typical error message looks like this:

```php
A new entity was found through the relationship 'XLite\Model\Attribute#product' that was not configured to cascade persist operations for entity: XLite\Model\Product@0000000043bd29bd000000000dc64c73\. To solve this issue: Either explicitly call EntityManager#persist() on this unknown entity or configure cascade persist this association in the mapping for example @ManyToOne(..,cascade={"persist"}). If you cannot find out which entity causes the problem implement 'XLite\Model\Product#__toString()' to get a clue.
```

This problem is most likely caused by the fact that the store data (products, categories, etc) was migrated to X-Cart incorrectly and some entities are not linked properly. In this particular cases, the database contains some product attributes that linked to a product and this product does not exist. You need to find such attributes and delete them in order to let your store work properly.

You can find problem entities by running the following MySQL query:

```php
SELECT * from xc_attributes LEFT JOIN xc_products ON xc_products.product_id = xc_attributes.product__id WHERE xc_products.product_id IS NULL;
```

## Cannot redeclare class

Such error can happen during code re-deploying or in developer mode (if you are using X-Cart 5.3). The typical error message is:

```php
PHP Fatal error:  Cannot redeclare class XLite\\Module\\CDev\\Coupons\\Model\\Coupon in ../src/var/run.340f83948cd2b259de51085c0d071f10/classes/XLite/Module/CDev/Coupons/Model/Coupon_bckp.php on line 1122
```
The most obvious cause is that your files have duplicate classes. Try searching through files for the mentioned classname with `grep` or similar utilites. 

As you can see from example error message, the error happened because of backup files alongside with the original ones. Any such files are forbidden to have `*.php` extension and **non-PSR0** basename. When making backups, the best practice is to append `.bkp` or some other suffix to file extension instead of modifying its basename.

The solution is to move elsewhere or delete such files.

{% note info %}
If you feel that you do not have enough tech knowledge to solve the problem yourself, please contact developers who migrated your data or our [support service](http://www.x-cart.com/contact-us.html).
{% endnote %}