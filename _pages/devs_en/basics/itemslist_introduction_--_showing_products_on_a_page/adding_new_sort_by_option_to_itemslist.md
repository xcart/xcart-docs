---
title: Adding new sort option to ItemsList
identifier: ref_Dwd0HwPQ
updated_at: 2015-03-18 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This article aims to teach X-Cart developers how they can add a sorting option to their {% link "ItemsLists" ref_MRidEzuz %}.

For the sake of example we will add **Sort by date** option to all product ItemsLists as shown on the snapshot below:

![]({{site.baseurl}}/attachments/8749095/8716414.png)

Similar option already exists in [Product Advisor](http://market.x-cart.com/addons/product-advisor.html) module, so you need to disable it in order to get our module working properly.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with {% link "creating a module" ref_G2mlgckf %} with developer ID **Tony** and module ID **SortingByDate**. In this module we are going to {% link "decorate" ref_AF6bmvL6 %} the `\XLite\View\ItemsList\Product\Customer\ACustomer` class, so we create the
`<X-Cart>/classes/XLite/Module/Tony/SortingByDate/View/ItemsList/Product/Customer/ACustomer.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\SortingByDate\View\ItemsList\Product\Customer;

/**
 * ACustomer
 */
abstract class ACustomer extends \XLite\View\ItemsList\Product\Customer\ACustomer implements \XLite\Base\IDecorator
{
}
```

Adding of new sorting option is as easy as changing the `__construct()` method in this class:

```php
public function __construct(array $params = array())
{
    parent::__construct($params);

    $this->sortByModes = array(
        'p.arrivalDate' => 'Sort by date',
    ) + $this->sortByModes;
}
```

As you can see, we call parent's constructor and then adding one more record to the `$this->sortByModes` array: 

```php
$this->sortByModes = array(
    'p.arrivalDate' => 'Sort by date',
) + $this->sortByModes;
```

*   This new record's key is a field that will be used by {% link "queryBuilder" ref_FJyeE9lP %} object for sorting results. In our case we are going to sort by date and key is `p.arrivalDate`.
*   The value of new record is a name of sorting option, which will be displayed to a customer. In our case it is **Sort by date**.

That is it. Now we can re-deploy the store and check the results in store-front. It will look as follows:![]({{site.baseurl}}/attachments/8749095/8716415.png)

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-SortingByDate-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-SortingByDate-v5_1_0.tar)
