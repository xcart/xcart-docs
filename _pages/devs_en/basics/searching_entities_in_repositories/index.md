---
title: Model repositories and DB querying
identifier: ref_L1zWfWvw
updated_at: 2015-01-09 00:00
layout: article_with_sidebar
lang: en
order: 25
categories:
- Developer docs
---

## Introduction

This article aims to teach developers how they can pull data from repositories by certain criteria.

For the sake of example, we will consider pulling product information and will work with `\XLite\Model\Product` models and their repository `\XLite\Model\Repo\Product`. You can work the same way with any other entities: categories, users, orders, etc.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Pulling product by ID](#pulling-product-by-id)
*   [Pulling all products](#pulling-all-products)
*   [Pulling one product by condition](#pulling-one-product-by-condition)
*   [Pulling many products by condition](#pulling-many-products-by-condition)
*   [Pulling products by complex condition](#pulling-products-by-complex-condition)

## Pulling product by ID

Repository method: `find()`

Code sample: 

```php
$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->find($id);

//$product now contains product object
```

## Pulling all products

Repository method: `findAll()`

Code sample: 

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->findAll();

//$products now contains an array of product objects
```

## Pulling one product by condition

Repository method: `findOneBy()`

Code sample:

```php
// $condition defines what products exactly you want to pull.
// This condition defines that we need to pull all enabled products, 
// i.e. they all must have enabled field set as true.

$condition = array('enabled' => 1);

$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->findOneBy($condition);

//$product now contains the very first enabled product

$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->findOneBy(array('product_id' => $id));
// the same as $product = \XLite\Core\Database::getRepo('XLite\Model\Product')->find($id);
```

## Pulling many products by condition

Repository method: `findBy()`

Code:

```php
// $condition defines what products exactly you want to pull.
// This condition defines that we need to pull all enabled products, 
// i.e. they all must have enabled field set as true.

$condition = array('enabled' => 1);

$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->findBy($condition);

//$products now contains array of product objects and all of these products are enabled 
```

## Pulling products by complex condition

If you need more complex queries to the database, please learn how to use {% link "QueryBuilder" ref_FJyeE9lP %} object.