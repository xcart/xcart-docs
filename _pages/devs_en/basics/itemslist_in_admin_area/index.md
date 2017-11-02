---
title: ItemsList in admin area
lang: en
layout: article_with_sidebar
updated_at: 2016-09-29 20:08 +0400
identifier: ref_zsGkqC41
order: 65
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

**ItemsList** is a type of X-Cart widget that displays records about entities in a structured format. Examples of ItemsList widgets are below:

![]({{site.baseurl}}/attachments/8225372/8356178.png)

![]({{site.baseurl}}/attachments/8225372/8356179.png)

This article will explain how to create such ItemsLists. For the sake of example, we will create an ItemsList of products with a price of more than $10, and this list will be sortable by price. 

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start by {% link "creating an empty module" ref_G2mlgckf %} with the developer ID **Tony** and the module ID **ItemsListAdminDemo**. Then we {% link "create a new page" ref_0VgqyxB8 %} `target=items_list_demo` in the admin area. For that we create:

1.  an empty controller class `\XLite\Module\Tony\ItemsListAdminDemo\Controller\Admin\ItemsListDemo`;
2.  a simple page viewer class `\XLite\Module\Tony\ItemsListAdminDemo\View\Page\Admin\ItemsListDemo` with the following content: 

    ```php
    <?php
    // vim: set ts=4 sw=4 sts=4 et:

    namespace XLite\Module\Tony\ItemsListAdminDemo\View\Page\Admin;

    /**
     * Items list demo page view
     *
     * @ListChild (list="admin.center", zone="admin")
     */
    class ItemsListDemo extends \XLite\View\AView
    {
        /**
         * Return list of allowed targets
         *
         * @return array
         */
        public static function getAllowedTargets()
        {
            return array_merge(parent::getAllowedTargets(), array('items_list_demo'));
        }

        /**
         * Return widget default template
         *
         * @return string
         */
        protected function getDefaultTemplate()
        {
            return 'modules/Tony/ItemsListAdminDemo/page/items_list_demo/body.tpl';
        }
    }
    ```

3.  an empty page template `<X-Cart>/skins/admin/en/modules/Tony/ItemsListAdminDemo/page/items_list_demo/body.tpl`.

Now we start creating our **ItemsList** widget. We create the file `<X-Cart>/classes/XLite/Module/Tony/ItemsListAdminDemo/View/ItemsList/ItemsListDemo.php` with the following content: 

```php
<?php

namespace XLite\Module\Tony\ItemsListAdminDemo\View\ItemsList;

class ItemsListDemo extends \XLite\View\ItemsList\Model\Table
{
    const SORT_BY_MODE_PRICE = 'p.price';

    protected function defineRepositoryName()
    {
        return '\XLite\Model\Product';
    }

    protected function defineColumns()
    {
        return array(
            'sku' => array(
                static::COLUMN_NAME     => 'SKU',
                static::COLUMN_ORDERBY  => 100,
            ),
            'name' => array(
                static::COLUMN_NAME     => 'Name',
                static::COLUMN_ORDERBY  => 200,
                static::COLUMN_MAIN     => true,
                static::COLUMN_LINK     => 'product',
            ),
            'price' => array(
                static::COLUMN_NAME     => 'Price',
                static::COLUMN_SORT     => static::SORT_BY_MODE_PRICE,
                static::COLUMN_ORDERBY  => 300,
            ),
        );
    }

    public function __construct(array $params = array())
    {
        $this->sortByModes += array(
            static::SORT_BY_MODE_PRICE  => 'Price',
        );

        parent::__construct($params);
    }

    protected function getSearchCondition()
    {
        $result = parent::getSearchCondition();

        $result->{\XLite\Model\Repo\Product::P_ORDER_BY} = $this->getOrderBy();
        $result->moreThan10 = true;

        return $result;
    }

    protected function getSortByModeDefault()
    {
        return static::SORT_BY_MODE_PRICE;
    }
}
```

Let us have a look at the key parts of this widget implementation:

1.  Every single ItemsList in the admin area extends the `\XLite\View\ItemsList\Model\Table class`, so we are doing the same: 

    ```php
    class ItemsListDemo extends \XLite\View\ItemsList\Model\Table
    ```

2.  We need to point our **ItemsList** to some {% link "model" ref_wmExvPDD %}. It will tell the widget what entities it must display. In our case, this entity is a **product**, so we point our ItemsList to the `\XLite\Model\Product` model class: 

    ```php
        protected function defineRepositoryName()
        {
            return '\XLite\Model\Product';
        }
    ```

3.  The next step is to define what columns must be displayed in our ItemsList. We want to display **SKU**, **Product Name** as a link to the product details page and **Price**. The Price field must support the sorting option. In order to implement this configuration, we define the following `defineColumns()` method: 

    ```php
        protected function defineColumns()
        {
            return array(
                'sku' => array(
                    static::COLUMN_NAME     => 'SKU',
                    static::COLUMN_ORDERBY  => 100,
                ),
                'name' => array(
                    static::COLUMN_NAME     => 'Name',
                    static::COLUMN_ORDERBY  => 200,
                    static::COLUMN_MAIN     => true,
                    static::COLUMN_LINK     => 'product',
                ),
                'price' => array(
                    static::COLUMN_NAME     => 'Price',
                    static::COLUMN_SORT     => static::SORT_BY_MODE_PRICE,
                    static::COLUMN_ORDERBY  => 300,
                ),
            );
        }
    ```

4.  The key of an array's element must be one of Model properties so that X-Cart can pick up value automatically. The value must be an **array()** that describes the column. The SKU column is very simple, we just define its column name as **SKU** and its orderby as **100**.
5.  The Name column is a bit more complex. It also has `COLUMN_NAME` and `COLUMN_ORDERBY`, but it additionally has the `COLUMN_MAIN = true` param, which defines that this column must be the widest among the ones in the ItemsList. It also has the `COLUMN_LINK` parameter that defines a link where you can see product details. As you can see, we just define target parameter as **product**, and X-Cart will build a proper URL for a particular product itself, so it would become `admin.php?target=product&product_id=ID`.
6.  The Price column is a bit more complex as well. Although it has the same `COLUMN_NAME` and `COLUMN_ORDERBY` parameters, it supports sorting as defined by the `COLUMN_SORT` param. Aside from specifying this param in the column, we must also create a constant called `SORT_BY_MODE_PRICE` as it refers to it:

    ```php
    const SORT_BY_MODE_PRICE = 'p.price';
    ```

    The value of this constant will be passed into the `getOrderBy()` method of ItemsList class (see the implementation of the `\XLite\View\ItemsList\AItemsList` class), and then it will be used in the `getSearchCondition()` method (we will have a look at it a bit later in this article).
    Also, we must add this sorting option to the `sortByModes()` method, so we extend the `__construct()` method: 

    ```php
        public function __construct(array $params = array())
        {
            $this->sortByModes += array(
                static::SORT_BY_MODE_PRICE  => 'Price',
            );
            parent::__construct($params);
        }
    ```

7.  Finally, we need to implement the `getSearchCondition()` method in our ItemsList: 

    ```php
        protected function getSearchCondition()
        {
            $result = parent::getSearchCondition();

            $result->{\XLite\Model\Repo\Product::P_ORDER_BY} = $this->getOrderBy();
            $result->moreThan10 = true;

            return $result;
        }
    ```

    We need to extend it in order to allow {% link "search() method" ref_ehDn4NIi %} in the `\XLite\Model\Repo\Product` repository class to work properly.

8.  First, we let it know that sorting must be done according to user's selected condition: 

    ```php
    $result->{\XLite\Model\Repo\Product::P_ORDER_BY} = $this->getOrderBy();
    ```

    Here we use the `getOrderBy()` method mentioned earlier.

9.  Then, we also add our condition of displaying products, which is it must display only products that are more expensive than $10: 

    ```php
    $result->moreThan10 = true;
    ```

10.  Finally, we need to add the `getSortByModeDefault()` method that will define the sorting option when it has not been chosen yet: 

    ```php
        protected function getSortByModeDefault()
        {
            return static::SORT_BY_MODE_PRICE;
        }
    ```

Everything is good except for that the `search()` method of the `\XLite\Model\Repo\Product` class cannot yet handle our **moreThan10** condition. In order to fix that, we need to decorate the `\XLite\Model\Repo\Product` class. We create the file `<X-Cart>/classes/XLite/Module/Tony/ItemsListAdminDemo/Model/Repo/Product.php` with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\Tony\ItemsListAdminDemo\Model\Repo;

/**
 * The "product" model repository
 */
abstract class Product extends \XLite\Model\Repo\Product implements \XLite\Base\IDecorator
{
    const P_MORE_THAN_10 = 'moreThan10';

    protected function getHandlingSearchParams()
    {
        $params = parent::getHandlingSearchParams();

        $params[] = self::P_MORE_THAN_10;

        return $params;
    }

    protected function prepareCndMoreThan10(\Doctrine\ORM\QueryBuilder $queryBuilder, $value)
    {
        $result = $queryBuilder;

        if ($value) {
            $result
                ->andWhere('p.price > :price')
                ->setParameter('price', 10.00);
        }

        return $result;
    }
}
```

{% note info %}
Note: if you need more info about `search()` method implementation, please have a look here: {% link "search() method" ref_ehDn4NIi %}.
{% endnote %}

Finally, we need to display our ItemsList widget on the page, so we go to the `<X-Cart>/skins/admin/en/modules/``Tony/ItemsListAdminDemo/page/items_list_demo/body.tpl` template and define its content as follows: 

```php
<widget class="XLite\Module\Tony\ItemsListAdminDemo\View\ItemsList\ItemsListDemo" />
```

That is it. Now we need to re-deploy the store and you will see our **ItemsList** that supports sorting by Price on the `admin.php?target=items_list_demo` page.

![]({{site.baseurl}}/attachments/8225372/8356180.png)

## Module pack

You can download this module's example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ItemsListAdminDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ItemsListAdminDemo-v5_1_0.tar)
