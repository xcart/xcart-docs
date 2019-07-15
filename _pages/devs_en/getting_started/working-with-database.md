---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-27 16:42 +0400'
identifier: ref_uAv5ETfx
title: Working with database
order: 140
published: true
---
## Introduction

X-Cart uses ORM [Doctrine 2 framework](http://www.doctrine-project.org/) to work with database. ORM stands for ['Object-relational mapping'](https://en.wikipedia.org/wiki/Object-relational_mapping) and its main purpose is to abstract from how objects are stored in the database and focus on business logic. 

Using Doctrine means that we do not write plain SQL queries and this tutorial illustrates main approaches of working with database.

{% note info %}
To try out the examples below, use {% link "test external script" ref_ogmCiRWZ %}.
{% endnote %}

{% toc Table of Contents %}

## Pulling objects by ID

Imagine we had an application working with MySQL database directly. If we wanted to pull product info, we would do something like this:

```php
$stmt = $db->prepare('SELECT * FROM products WHERE product_id = :id');
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

The same way you can pull any other model from the database. If you want to pull category object (defined in `\XLite\Model\Category` class), then your code would be:

```php
$product = \XLite\Core\Database::getRepo('XLite\Model\Category')->find($categoryId);
```

If you want to pull a model that does not exist in the core, but it is defined in the module, e.g. product variant model defined in `\XLite\Module\XC\ProductVariants\Model\ProductVariant` class, then you would do:

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
1. `findAll()` method is standard method of Doctrine's repositories that simply returns all objects stored in that repository;
2. `createQueryBuilder()` method indicates that we are going to build our own query to pull subset of objects. The details of this query are going to be specified after we create a query builder object (we will talk about it later), but since we do not want to specify any special conditions we simply return the result by calling `getResult()`. In short words, we intend to pull a subset of objects in the repository, but since we do not specify any limitations, all objects are returned.

## Query builder

If we want to use more complex queries, we are going to use query builder object. This object allows us to use SQL constructions, but in object-oriented way.

{% note info %}
The comprehensive guide to query builder can be found in [official Doctrine docs](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/reference/query-builder.html). The aim of this section is to give you quick grasp of how it works.
{% endnote %}

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

The order in which you specify helper functions (`andWhere()` and `setParameter()`) does not matter. This is the same query as above:

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

### Select

When we create query builder as in examples above and call `getResult()`, query builder will return objects as a result. However, we can explicitly specify what fields to fetch.

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->select('p.product_id AS id')
    ->getResult();


foreach ($products as $product) {
    var_dump($product);
    // it displays a list of product IDs
}

$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->addSelect('p.product_id AS id')
    ->getResult();


foreach ($products as $product) {
    var_dump($product);
    // result will be an array where 
    // 1st element is \XLite\Model\Product object 
    // and 2nd element is product ID
}
```

As you can see from example above, there are two ways to specify what particular properties to fetch:
1. `select()` method specifies what fields to fetch and all fields to fetch that have been defined earlier will not be fetched;
2. `addSelect()` method specifies which fields to fecth and put them alongside other properties that were going to be fetched.


### Join

If you want to request data from other object related to the model you have already created query builder for, then you can join this model. It is similar to joining a table in SQL, but since Doctrine operates objects (not tables) we are going to join another model.

1. `innerJoin()` method is used to perform INNER JOIN SQL operation. However, we recommend using X-Cart's wrapper `linkInner()` instead, because it makes sure that the same model is not joined twice in the same query builder. If that happenned, it would fire a fatal error.
2. `leftJoin()` method is used to perform LEFT JOIN SQL operation. We recommend using `linkLeft()` wrapper instead for the same reason.

Let us have a look at some examples:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->select('p.product_id AS id')
    ->linkInner('p.images', 'i')
    ->addSelect('i.path AS path')
    ->andWhere('p.product_id > :product_id')
    ->andWhere('p.product_id < (:product_id + 4)')
    ->setParameter('product_id', 29)
    ->getResult();
    
foreach ($products as $product) {
    var_dump($product);
}
```

This request pulls product ID and product images assigned to this product. Since all products in X-Cart demo has images, it will pull images for products with ID 30, 31 and 32. If you go to product with ID 32, remove all its images and then run this request, only images for products with ID 30 and 31 will be fetched. However, if we run this request (we use `linkLeft()` instead of `linkInner()`):

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')
    ->createQueryBuilder('p')
    ->select('p.product_id AS id')
    ->linkLeft('p.images', 'i')
    ->addSelect('i.path AS path')
    ->andWhere('p.product_id > :product_id')
    ->andWhere('p.product_id < (:product_id + 4)')
    ->setParameter('product_id', 29)
    ->getResult();
    
    foreach ($products as $product) {
        var_dump($product);
	}    
```

there will be lines for product with ID 32, but they will have `null` in 'path' element.

### Group By

Query builder allows grouping results (the same as `GROUP BY` operator in SQL). This example breaks down sales by product:

```php
$return = \XLite\Core\Database::getRepo('\XLite\Model\OrderItem')->createQueryBuilder('oi')
    ->select(
        'IDENTITY(oi.object) AS id',
        'SUM(oi.amount) AS amount', 
        'SUM(oi.total) AS sales', 
        'oi.name AS name'
    )
    ->linkInner('oi.order', 'o')
    ->groupBy('oi.object')
    ->orderBy('sales', 'DESC')
    ->getResult();

var_dump($return);
```

We pull info from `\XLite\Model\OrderItem` repository, because each record in this repository is an actual product sold.

Here are a few moments we have not seen before:
1. We use `IDENTITY()` operator of Doctrine's in `select()` method. It returns an ID of a given object. The reason to use `IDENTITY()` operator instead of explicitly calling `oi.object.product_id` is that we may not know which field contains ID of an entity for a particular model. That is why calling `IDENTITY()` is more general way of getting entity's ID.
2. We use `SUM()` operator to aggregate values the same as we would do in SQL. [Learn more about Aggregate Fields in Doctrine docs](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/cookbook/aggregate-fields.html).

### Order By

Query builder also allows sorting the result (the same as `ORDER BY` in SQL). This example will sort the result of sales breakdown mentioned above from highest sales to lowest.

```php
$return = \XLite\Core\Database::getRepo('\XLite\Model\OrderItem')->createQueryBuilder('oi')
    ->select(
        'IDENTITY(oi.object) AS id',
        'SUM(oi.amount) AS amount', 
        'SUM(oi.total) AS sales', 
        'oi.name AS name'
    )
    ->linkInner('oi.order', 'o')
    ->andWhere('o INSTANCE OF \XLite\Model\Order')
    ->groupBy('oi.object')
    ->orderBy('sales', 'DESC')
    ->getResult();

var_dump($return);
```

We only added `orderBy('sales', 'DESC')` to the query builder and it sorted the results in descending order. If we wanted to go from lowest sales to highest, we would use `orderBy('sales', 'ASC')`. `orderBy()` method allows not only aliases ('sales' as we are using), but also property names, e.g. `oi.item_id`.

## Method search()

Besides working with QueryBuilder directly, X-Cart allows to de-composite queries to logical pieces, so that those pieces can be combined as needed.

Let us imagine a situation, we need to pull all products that are more expensive than $20. We can do it as follows:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->createQueryBuilder('p')
            ->andWhere('p.price > :price')
            ->setParameter('price', 20);
```

Then, we want to pull products that have more than 5 items in stock and we surely can do that as follows:

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->createQueryBuilder('p')
            ->andWhere('p.amount > :amount')
            ->setParameter('amount', 5);
```

If after that we want to pull products that are more expensive than $20 and have more than 5 items in stock, what are we going to do? Will we need to repeat ourselves and do something like this?

```php
$products = \XLite\Core\Database::getRepo('XLite\Model\Product')->createQueryBuilder('p')
            ->andWhere('p.price > :price')
            ->setParameter('price', 20);
            ->andWhere('p.amount > :amount')
            ->setParameter('amount', 5);
```

There is better approach.

To illustrate this approach, let us {% link "create a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **SearchRepoDemo**. Inside this module let us {% link "decorate" ref_AF6bmvL6 %} `\XLite\Model\Repo\Product` class. We create `classes/XLite/Module/XCExample/SearchRepoDemo/Model/Repo/Product.php` file with the following content:

```php
<?php

namespace XLite\Module\XCExample\SearchRepoDemo\Model\Repo;

abstract class Product extends \XLite\Model\Repo\Product implements \XLite\Base\IDecorator
{
}
```

Here is a new method of pulling entities. Let us suppose we want to pull product more expensive than $20. We would write it as follows:

```php
// defining condition object
$cnd = new \XLite\Core\CommonCell();
$cnd->moreExpensiveThan20 = true;

// pulling products from the database based on the $cnd condition
$products = \XLite\Core\Database::getRepo('\XLite\Model\Product')->search($cnd);

echo '<ul>';
// displaying product names
foreach ($products as $product) {
    echo '<li>' . $product->getName() . ': ' . $product->getPrice() . ' - ' . $product->getAmount() . '</li>';
}
echo '</ul>';
```

`\XLite\Core\CommonCell` object is essentially a wrapper around regular PHP array. It is an object and you can access its properties as `$cnd->property`, but it also acts as array in a sense, that you can cycle its properties. 

So, we create such empty object and define its property `moreExpensiveThan20` as `true`. Then, we fetch repository object (`\XLite\Core\Database::getRepo('\XLite\Model\Product')`) and call its `search()` method with common cell object as an argument. This search method will return the products we need.

X-Cart will take this common cell object, cycle through its properties and apply handlers of those properties (X-Cart treats them as flags) to the routine of pulling products. 

However, we need a handler of the `moreExpensiveThan20` flag to make our code working. For that we edit the created earlier `classes/XLite/Module/XCExample/SearchRepoDemo/Model/Repo/Product.php` file and add the following method there:

```php
    protected function prepareCndMoreExpensiveThan20(\Doctrine\ORM\QueryBuilder $queryBuilder, $value)
    {
        $result = $queryBuilder;

        if ($value) {
            $result
                ->andWhere('p.price > :price')
                ->setParameter('price', 20);
        }

        return $result;
    }
```

We must name this method as `prepareCnd<NAME-OF-OUR-FLAG>`, so we call it `prepareCndMoreExpensiveThan20`. 

The first parameter of such method is QueryBuilder object and the method must return QueryBuilder object as well. This QueryBuilder object will be eventually used to pull entities from the database.

The second parameter of the method is value of our property. In our case, it is `true`. So, if our property is `true`, we add this piece to the QueryBuilder object:

```php
$qb
  ->andWhere('p.price > :price')
  ->setParameter('price', 20);
```

Once we added this method, let us check the results. Our script will display list of products with prices greater than $20.

Following the above example, let us create a test script that would return products that have more than 5 items in stock. Our test script would look as follows:

```php
// defining condition object
$cnd = new \XLite\Core\CommonCell();
$cnd->moreThan = 5;

// pulling products from the database based on the $cnd condition
$products = \XLite\Core\Database::getRepo('\XLite\Model\Product')->search($cnd);

echo '<ul>';
// displaying product names
foreach ($products as $product) {
    echo '<li>' . $product->getName() . ': ' . $product->getPrice() . ' - ' . $product->getAmount() . '</li>';
}
echo '</ul>';
```

The only difference from the first script is that our property in `$cnd` object is `moreThan` instead of `moreExpensiveThan20`. However, we need to add handler of this property to product repository class as well. So, we edit `\XLite\Module\XCExample\SearchRepoDemo\Model\Repo\Product` class and add the following method there:

```php
    protected function prepareCndMoreThan(\Doctrine\ORM\QueryBuilder $queryBuilder, $value)
    {
        $result = $queryBuilder;

        if ($value > 0) {
            $result
                ->andWhere('p.amount > :amount')
                ->setParameter('amount', $value);
        }

        return $result;
    }
```

This time we actually use `$value` parameter in QueryBuilder object.

Again, if we run the test script, we will see the list of products that have more than 5 items in stock.

What if we want to pull list of products that cost more than $20 and have more than 5 items in stock? In this case, our test script would look as follows:

```php
// defining condition object
$cnd = new \XLite\Core\CommonCell();
$cnd->moreExpensiveThan20 = true;
$cnd->moreThan = 5;

// pulling products from the database based on the $cnd condition
$products = \XLite\Core\Database::getRepo('\XLite\Model\Product')->search($cnd);

echo '<ul>';
// displaying product names
foreach ($products as $product) {
    echo '<li>' . $product->getName() . ': ' . $product->getPrice() . ' - ' . $product->getAmount() . '</li>';
}
echo '</ul>';
```

It is pretty much the same as those two above, but it has two properties in `$cnd` object:

```php
// defining condition object
$cnd = new \XLite\Core\CommonCell();
$cnd->moreExpensiveThan20 = true;
$cnd->moreThan = 5;
```

Since we already invested time creating handlers for those properties, this piece of code will just work now without additional code.

In that sense `search()` method is pretty handy, when you have a bunch of conditions that need to be combined in different variations.

{% note info %}
The module we created can be downloaded from here: <https://www.dropbox.com/s/8bxtoclqtorkdy6/XCExample-SearchRepoDemo-v5_3_0.tar>
{% endnote %}
