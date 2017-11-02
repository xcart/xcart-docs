---
title: search() method
identifier: ref_ehDn4NIi
updated_at: 2015-04-17 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes another approach of searching entities in the database and then pulling data. We already know two approaches:

1.  {% link "method find()" ref_L1zWfWvw %} for simple queries
2.  {% link "queryBuilder object" ref_FJyeE9lP %} for complex queries

Method **search()** is used primarily in {% link "ItemsLists objects" ref_MRidEzuz %}, because it uses and extends **queryBuilder** object and allows convenient way of adding conditions to a query.

For the sake of example, we will create a mod that will display names of products that have IDs less than 20.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating an external" ref_ogmCiRWZ %} `test.php` script inside X-Cart folder. We put the following code inside this script: 

```php
<?php

//X-Cart initializtion
require_once 'top.inc.php';

// defining condition object
$cnd = new \XLite\Core\CommonCell();
$cnd->myCond = true;

$countOnly = false;

// pulling products from the database based on the $cnd condition
$products = \XLite\Core\Database::getRepo('\XLite\Model\Product')->search($cnd, $countOnly);

// displaying product names
foreach ($products as $key => $product) {
    echo $key . ': ' . $product->getName() . '<br />';
}
```

If we run this code right now, this script will display all products without taking into account IDs condition. It will happen so, because X-Cart does not yet have implementation of **myCond** condition handling. Even though it does not handle such condition, our search does not break and returns results based on other conditions – no in conditions in our case.

We also need some clarifications about `\XLite\Core\CommonCell` object. It is basic transport object that behaves as an array. For instance you can call `foreach()` on it:

```php
foreach ($cnd as $key => $value) {
	echo 'key: ' . $key . ' value: ' . $value;
}
```

However, since it is an object, you can take benefits of it. For instance, add logging to getter and setter classes.

Since `\XLite\Core\CommonCell` object behaves as an array, you can think of `search()` method's first parameter as an array that represents conditions that must be handled. The second parameter of the method is a boolean flag that defines whether objects or number of objects must be returned.

Now it is time to implement handling of our **myCond** condition in the `\XLite\Model\Repo\Product` class. We {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **SearchRepoDemo**. Inside this module, we {% link "decorate" ref_AF6bmvL6 %} the `\XLite\Model\Repo\Product` class, so we create the `<X-Cart>/classes/XLite/Module/Tony/SearchRepoDemo/Model/Repo/Product.php` file with the following content: 

```php
 <?php

namespace XLite\Module\Tony\SearchRepoDemo\Model\Repo;

/**
 * The "product" model repository
 */
abstract class Product extends \XLite\Model\Repo\Product implements \XLite\Base\IDecorator
{
    const P_MY_COND = 'myCond';

    protected function getHandlingSearchParams()
    {
        $params = parent::getHandlingSearchParams();
        $params[] = self::P_MY_COND;
        return $params;
    }

    protected function prepareCndMyCond(\Doctrine\ORM\QueryBuilder $queryBuilder, $value)
    {
        $result = $queryBuilder;
        if ($value) {
            $result
                ->andWhere('p.product_id < :product_id')
                ->setParameter('product_id', 20);
        }

        return $result;
    }
}
```

Implementation of handling a condition consists of two steps:

1.  Adding your condition name into array returned by `getHandlingSearchParams()` method: 

    ```php
        const P_MY_COND = 'myCond';

        protected function getHandlingSearchParams()
        {
            $params = parent::getHandlingSearchParams();

            $params[] = self::P_MY_COND;

            return $params;
        }
    ```

2.  Implementation of `prepareCnd + yourConditionName` method. In our case, our method will be called `prepareCndMyCond()`:

    ```php
        protected function prepareCndMyCond(\Doctrine\ORM\QueryBuilder $queryBuilder, $value)
        {
            $result = $queryBuilder;

            if ($value) {
                $result
                    ->andWhere('p.product_id < :product_id')
                    ->setParameter('product_id', 20);
            }

            return $result;
        }
    ```

    The function name must be in [Camel](http://en.wikipedia.org/wiki/CamelCase) notation, that is why the algorithm for creating the method name is as follows: 

    ```php
    'prepareCnd' . ucfirst($conditionName)
    ```

    As you can see, implementation of `prepareCndMyCond()` method uses the same queryBuilder object we learned about in {% link "previous guide" ref_FJyeE9lP %}. However, since we use `\XLite\Core\CommonCell` object in order to run this small **prepareCnd** methods, it allows us to add small elements to this object – like oue where condition – based on needed conditions, so we will steadily build a complex query while meeting specific requirements incapsulated in our **prepareCnd** methods.

Let us get back to our `test.php` script. Now if we run this code: 

```php
<?php
//X-Cart initializtion
require_once 'top.inc.php';

// defining condition object
$cnd = new \XLite\Core\CommonCell();
$cnd->myCond = true;

$countOnly = false;

// pulling products from the database based on the $cnd condition
$products = \XLite\Core\Database::getRepo('\XLite\Model\Product')->search($cnd, $countOnly);

// displaying product names
foreach ($products as $key => $product) {
    echo $key . ': ' . $product->getName() . '<br />';
}
```

It will return all products with ID less than 20\. If we comment the `$cnd->myCond = true;` part, then all products will be returned.

Imagine that you have dozen of conditions for pulling products. In this case, this approach will be very helpful for you.

_Note: if you need to create search() method for your own entity, use {% link "this guide" ref_hBpBE0vS#creating-repository-class %}_ _for its general implementation._

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-SearchRepoDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-SearchRepoDemo-v5_1_0.tar)