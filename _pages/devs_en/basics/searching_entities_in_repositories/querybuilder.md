---
title: QueryBuilder
identifier: ref_FJyeE9lP
updated_at: 2015-04-17 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Example
- Outdated
---

## Introduction

This article is an introduction of **QueryBuilder** object – a special object that is used in order to pull info about {% link "Models" ref_wmExvPDD %} from the database.

X-Cart uses [Doctrine 2](http://www.doctrine-project.org/) framework in order to work with database. Since this is [ORM](http://en.wikipedia.org/wiki/Object-relational_mapping) framework, it greatly eases developer's life. You do not have to worry about tables' structure or related objects.

For instance, you have a product object that has a link to category objects. You pull product object from the database and category objects will be lazy pulled as well, when you use them from product object context.

Saving data into database is also very easy, because you just call `\XLite\Core\Database::getEM()->flush()` and all entities will be saved with their relations and currently state of objects.

The drawback is that you have to learn new syntax – **DQL** – and new approach of working with data. More info about DQL syntax can be found in [Doctrine 2 docs](http://doctrine-orm.readthedocs.org/en/latest/reference/dql-doctrine-query-language.html). This article will give a brief overview of how to use DQL and **[QueryBuilder](https://doctrine-orm.readthedocs.org/en/latest/reference/query-builder.html)** object.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Example](#example)

## Example

Imagine, you need to pull products that are enabled and they are not out of stock. Enabled flag is stored in the `xc_products` table (**enabled** field), number of products in stock is stored in the `xc_inventory` table (**amount** field). Pure MySQL code would be as follows: 

```php
SELECT * FROM xc_products INNER JOIN xc_inventory ON xc_inventory.amount > 0 OR xc_inventory.enabled = 0 WHERE xc_products.enabled = 1 GROUP BY xc_products.product_id;
```

This way we would pull only product and inventory info without any other linked objects, but it would be quite what we need anyway.

In DQL syntax the same request would look as follows: 

```php
\XLite\Core\Database::getRepo('\XLite\Model\Product')->createQueryBuilder('p')
	->innerJoin('p.inventory', 'i')
	->andWhere('i.amount > 0 OR i.enabled = 0')
	->andWhere('p.enabled = 1')
	->getResult();
```

Let us have a closer look at commands:

1.  We start with an initiation of query builder object:

    ```php
    \XLite\Core\Database::getRepo('\XLite\Model\Product')->createQueryBuilder('p')
    ```

    Basically this part is similar to

    ```php
    SELECT * FROM xc_products
    ```

    code in MySQL query.

2.  We tell that **Inventory** model will be used in the query and we refer to Inventory table as **i**: 

    ```php
    ->innerJoin('p.inventory', 'i')
    ```

     This part is similar to

    ```php
    INNER JOIN xc_inventory
    ```

    code in pure MySQL query.

3.  We tell that only products whose amount is **greater than 0** or whose inventory is **disabled** must be returned:

    ```php
    ->andWhere('i.amount > 0 OR i.enabled = 0')
    ```

    As you can notice, we use **amount** and **enabled** fields of `xc_inventory` table here. This part is equal to

    ```php
    ON xc_inventory.amount > 0 OR xc_inventory.enabled = 0
    ```

    code in MySQL query.

4.  We tell that only products that are **enabled** must be in result:

    ```php
    ->andWhere('p.enabled = 1')
    ```

    It is equal to

    ```php
    WHERE xc_products.enabled = 1
    ```

    code in MySQL query.

5.  Once we generated **queryBuilder** object, we need to run its query to the database and get results: 

    ```php
    ->getResult()
    ```

    Important part is that the result will be an array of `\XLite\Model\Product` objects – since we generated queryBuilder based of `\XLite\Model\Product` repository.

Let us try to run this code. We {% link "create an external script" ref_ogmCiRWZ %} `test.php` in X-Cart's root and put the following content there: 

```php
<?php

//X-Cart initializtion
require_once 'top.inc.php';

// our queryBuilder object
$result = \XLite\Core\Database::getRepo('\XLite\Model\Product')->createQueryBuilder('p')
    ->innerJoin('p.inventory', 'i')
    ->andWhere('i.amount > 0 OR i.enabled = 0')
    ->andWhere('p.enabled = 1')
    ->getResult();

// walking through each product and display its name
foreach ($result as $product) {
    echo $product->getName() . '<br />';
}
```

This script should pull all in stock products and then display its names in a column.