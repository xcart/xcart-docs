---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-30 15:07 +0400'
identifier: ref_uAv5ETfx
title: ''
order: 100
published: false
---
X-Cart uses ORM [Doctrine 2 framework](http://www.doctrine-project.org/) to work with database. ORM stands for ['Object-relational mapping'](https://en.wikipedia.org/wiki/Object-relational_mapping) and its main purpose is to abstract from how objects are stored in the database and focus on business logic. 

Using Doctrine means that we do not write plain SQL queries and this tutorial illustrates main approaches of working with database.

## Pulling objects by ID

Imagine we had an application working with MySQL database directly. If we wanted to pull product info, we would do something like this:

```php
stmt = $db->prepare('SELECT * FROM products WHERE product_id = :id');
$stmt->bindValue(':id', 40);
$stmt->execute();
$product = $stmt->fetchAll(PDO::FETCH_ASSOC);
```

If we wanted to also pull info about categories this product is assigned to, our query would be something like:

```php
$stmt = $db->prepare('SELECT * FROM xlite_categories as c
    LEFT JOIN xlite_category_products AS cp ON cp.category_id = c.category_id
    LEFT JOIN xlite_products AS p ON cp.product_id = p.product_id
    WHERE p.product_id = :id and t.code = :code');
$stmt->bindValue(':id', 40);
$stmt->execute();
$categoryInfo = $stmt->fetchAll(PDO::FETCH_ASSOC);
```

In X-Cart (or rather in Doctrine), we can pull a product by ID as easy as follows:

```php
$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->find(40);
```

This `$product` object already contains all linked info such as categories it is assigned to, its attribute objects and so on.

The same way you can pull any other model from the database. If you want to pull category object (defined in \XLite\Model\Category class), then it your code would be:

```php
$product = \XLite\Core\Database::getRepo('XLite\Model\Category')->find($categoryId);
```

If you want to pull a model that does not exist in the core, but it is defined in the module, e.g. product variant model defined in \XLite\Module\XC\ProductVariants\Model\ProductVariant class, then you would do:

```php
$product = \XLite\Core\Database::getRepo('XLite\Module\XC\ProductVariants\Model\ProductVariant')->find($productVariantId);
```