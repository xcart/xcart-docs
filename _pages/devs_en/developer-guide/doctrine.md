---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-21 13:55 +0400'
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

## Pulling a collection of objects

If we want to pull all products we would call:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->findAll();
foreach ($products as $product) {
    echo $product->getName();
}
```

The same result can be achieved like this:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->createQueryBuilder()->getResult();

foreach ($products as $product) {
    echo $product->getName();
}
```

The difference between these two approaches is as follows:
1. `findAll()` method is standard method of Doctrine's repositories that simply returns all objects of that repository;
2. `createQueryBuilder()` method indicates that we are going to build our own query to pull subset of objects. The details of this query are going to be specified after we create a query builder object (we will talk about it later), but since we do not want to specify any special conditions we simply return the result by calling `getResult()`.

## Query builder

NOTE: the comprehensive guide to query builder can be found in [official Doctrine docs](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/reference/query-builder.html). The aim of this section is to give you quick grasp of how it works.

If we want to use more complex queries, we are going to use query builder object. This object allows us to use SQL constructions, but in object-oriented way.

If you want to use a condition, we are going to use `andWhere()` method. This is an example of pulling all products which cost less than $50:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->andWhere('p.price < :price')
    ->setParameter('price', 50)
    ->getResult();
```

There are a few key moments in this construction:
- We create query builder as `createQueryBuilder('p')`. In other words we create it with alias 'p', which means that we are going to refer to the entity (`\XLite\Model\Product` in our case) as 'p' inside the query.
- We call `andWhere('p.price < :price')` and it has the same effect as if we would call `SELECT * FROM xcart_products as p WHERE p.price < :price;`. However, since each condition is represented by individual `andWhere()` method, it allows you to combine such conditions pretty flexibly (we will talk about it later). 
- `:price` construction is a placeholder for parameter in the query and we need to bind an actual value for this parameter. That is why we call `setParameter('price', 50)`.

Of course, you can use multiple conditions in a single query:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->andWhere('p.price < :price')
    ->andWhere('p.enabled = :enabled')
    ->andWhere('p.weight < :weight')
    ->setParameter('price', 50)
    ->setParameter('enabled', true)
    ->setParameter('weight', 1)
    ->getResult();
```

The order in which you specify helper functions (`andWhere()` and `setParameter()`) does not matter. This is the same query:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->andWhere('p.price < :price')
    ->setParameter('price', 50)
    ->andWhere('p.enabled = :enabled')
    ->setParameter('enabled', true)
    ->andWhere('p.weight < :weight')
    ->setParameter('weight', 1)
    ->getResult();
```

## Join


