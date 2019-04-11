---
lang: en
layout: wide_article_with_sidebar
updated_at: '2018-07-27 15:00 +0400'
title: REST API Documentation
identifier: ref_rest_api_doc
rest_api: docs
order: 100
icon: plug
disable_spacer: true
categories:
  - home
redirect_from:
  - /basics/rest_api_documentation.html
description: >-
  If you want to exchange data with X-Cart through an external script, REST API
  is the way to go.
published: true
---

{% include grid_menu_api.html %}

If you want to exchange data with X-Cart through an external script, [REST API](http://en.wikipedia.org/wiki/Representational_state_transfer) is the way to go. This article explains how you can use X-Cart's REST API.

{% note warning %}
Please note that X-Cart models and their API change over time, so some example requests might not be compatible with your X-Cart store. 

Current latest version is [{{site.swagger_pages.latest_api}}]({{ '/rest-api/v' | append: site.swagger_pages.latest_api | prepend: site.baseurl }}).
{% endnote %}

{% toc Table of Contents %}

## Installing and configuring REST API

In order to be able to access X-Cart's data externally, you have to [install](http://kb.x-cart.com/en/modules/managing_modules/index.html) the **REST API** module.
After the module has been installed, you need to set it up.

1.  Go to the **Settings** section for the REST API module: 
    ![]({{site.baseurl}}/attachments/3768321/8356021.png)
2.  On the setting page specify one of the following:
    *   **API key (read/write)** - a key allowing an external application to have full access to X-Cart data (reading and writing);
    *   **API key (only read)** - a key allowing an external application to only read data.
        ![]({{site.baseurl}}/attachments/3768321/8718906.png)
        For instance, we set **read/write key** as _"key-to-do-everything"_ and **read key** as _"key-for-reading"_.

        {% note danger %}
        REST API allows to operate with absolutely all the data of your store. External scripts will be able to fetch, edit and remove absolutely any data. That is why you should not give REST API keys to people and companies you do not trust. Also, make a point of providing read-only keys rather than read/write ones.
        {% endnote %}

3.  In order to test REST API functionality, we are trying to open the following page: 
    `http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=key-to-do-everything&_path=product/1`
    (Be sure to replace the `<MY-XCART-PATH>` portion with the actual path to where your X-Cart is installed and the "key-to-do-everything" portion with your actual REST API key).

4.  If product with ID = 1 exists in your database, you will get a result similar to the following:

    [JSON Product schema]({{site.baseurl}}/attachments/code/product_schema.json){:target="_blank"} (this is product information in JSON format).

## How do I work with data using REST API?

Once your REST API module is installed, you can start receiving data from X-Cart. REST API allows to pull a particular entity identified by ID, e.g. pulling a product with ID=1 

```php
http://<MY-XCART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key&_path=product/1
```

or entities of a certain type, e.g. pulling all products 

```php
http://<MY-XCART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key&_path=product
```

As you can see, in first case we passed the path as `_path=product/1` (where 1 is the ID of a product we want to fetch) and in the second case we passed it as `_path=product` (because we want to pull the info of all products).

### Request parameters

Each REST API request must contain three parameters:

1.  `target`=RESTAPI;
2.  `_key`=`<your rest api key>`;
3.  `_path` param that identifies what entity you are pulling. This parameter is combined of an `entity name` and an optional `entity ID` separated by the `/` character. Should contain `/0` (e.g. product/0) when used to create an entity with **POST** method.

In addition to that, you can pass the** _method** parameter that will define what you are going to do within this request. Here are the possible values:

1.  **GET**, if you want to pull data (it is the default value, no need to pass it). Pass an optional entity ID to get a specific entity.
2.  **POST**, if you want to create an entity. Requires to pass ID = 0 in the `_path` parameter. You must also pass the **model** param that will define the changes you are going to apply to the entity.
3.  **PUT**, if you want to change an entity. Requires to pass the entity ID in the `_path` parameter. You must also pass the **model** param that will define the entity you are creating.
4.  **DELETE**, if you want to remove an entity. If no entity ID is specified in the `_path` parameter, this deletes all the entities of the specified type.

There is also an optional `_cnd` param which sets the search condition and allows you to filter retrievable entities (it is suitable only for **GET** method).

This way you can make a POST request by making an actual HTTP POST request to _admin.php?target=RESTAPI_ or by making an HTTP GET request and specifying `_method=POST` param in this request. An alternative to the `_method` parameter is the **X-HTTP-METHOD-Override** HTTP header.

### Condition (_cnd) param explained

If want to filter entities you are pulling by a certain condition (using **GET** method), you should specify `_cnd` param in your query. This parameter should be an array of conditions. Conditions are key-value pairs, where key is the name of the condition and there are one or more values, depending on the certain condition.

For example, product "`orderBy`" condition can be set through this query: `_cnd[orderBy][0]=p.price&_cnd[orderBy][1]=asc`. It consists of two values, sort condition and sort direction and this query will order you products by their price in ascending matter.

Another example is the product "`inventory`" condition, which filters product by their stock status. Possible statuses are "all" (every product, no filtration), "low" (low amount), "out" (out of stock) and "in" (in stock). If we need to find all products which are out of stock, we set query param like this: `_cnd[inventory]=out`. The whole request now looks like this: 

```
http://<MY-XCART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key&_path=product&_cnd[inventory]=out
```

To find out which conditions you can apply to various model, you should find the corresponding Model/Repo/<entity>.php script in your X-Cart distributive (See [How to work with different entities in the Default schema?](#how-to-work-with-different-entities-in-the-default-schema?) to get more information about different entites). We can't provide you a full list here because there are lots of types of entities, many of them are added by addons, and there are lots of conditions for each entity.

### Limiting the output (Pagination)

Condition (_cnd) parameter is also very helpful if you are looking for a way to paginate your entites and receive the data in portions instead of retrieving the entire list.

You can set the offset (starting item) and the limit through this query: `_cnd[limit][0]=xxx&_cnd[limit][1]=xxx`. The first element is the offset and the second is the limit. Use integer values here to perform a successful query.

For example, you can retrieve all products inside 0 - 100 range using this request:

```
http://<MY-XCART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key&_path=product&_cnd[limit][0]=0&_cnd[limit][1]=100
```

### Model data and types

For methods that require the model param, you should prepare an array of data and pass it as a query param (when HTTP GET request is used) or as a body of your request (when HTTP POST or PUT request is used) in **JSON** format.

Model as a query param looks like this (this is a _product_ entity):

```php
&model[sku]=sweatshirt                      // defining product data
&model[price]=10.00
&model[amount]=100              
&model[translations][0][code]=en            // Name is a part of translations model that is why we are using 2 dimensional array as well
&model[translations][0][name]=sweatshirt
```

Model as a JSON object looks like this (a _category_ entity is used as an example):

```php
{
  "parent": {                   // ManyToOne relation
    "category_id": 1                // integer field
  },
  "enabled": true,              // boolean field
  "pos": 1,                         // integer field
  "depth": 0,
  "translations": [             // OneToMany relation
    {                           // translation entity
      "code": "en",             // string field
      "name": "Cloths",
      "description": "You can find shirts and sweatshirts here"
    }
  ]
}
```

As you can see, non-required fields can be omitted, and there are different types of data here: **integers**, **booleans**, **strings**, and **decimals**. For a reference of which type is used for a model field, you should refer to your X-Cart model classes. Some fields can represent a relation to other models. There are 3 types of relationship between entities: **OneToMany**, **ManyToOne**, and **ManyToMany**.

The **OneToMany** relationship is used when the entity is linked to many (0+) entities of another type (e.g. one Category is related to many child Categories). You should pass an array of objects of certain type here. 

**Category children example (OneToMany)**

```php
// QUERY
...
&model[children][0][category_id]=2
&model[children][0][category_id]=3

// JSON
{
    ...
    "children": [
        {
            "category_id": 2
        },
        {
            "category_id": 3
        }
    ]
    ...
}
```

The **ManyToOne** relationship is used when the entity and, possibly, other entities of such type are linked to one entity (e.g. many Orders are related to one particular Profile). You should pass an object with a set of fields used as an identifier for an entity (for example, entity ID).

The **ManyToMany** relationship is a combination of the two aforemented relations and is used when many entities of one type are related to many entities of another type (e.g. one Product can relate to several Categories, and one Category can group several Products). You prepare your data in the same manner as in ManyToOne relationship (because ManyToMany type is basically made of two linked ManyToOne relationships from both sides).

**Category parent example (ManyToOne, ManyToMany)**

```php
// QUERY
...
&model[parent][category_id]=1

// JSON
{
    ...
    "parent": {
        "category_id": 1
    },
    ...
}
```

### Security protection

In order to prevent unallowed access to your store via REST API, you must specify a security key (`_key` param) in all your requests. The value for this parameter is set up in the module preferences. REST API module does not require user to be logged into the admin interface. If the key is not set up or empty, any request will not be run. The security key must always be specified in the module preferences and in the request itself

### Output options

Depending on the **Accept** HTTP header, the module will output data in **JSON** (default value) or in XML (in this case the **Accept** header must be specified as **application/xml**). Output always comes with the following HTTP headers:

*   Content-Type

*   Content-Length

*   Content-MD5

*   ETag

*   Last-Modified

*   Accept-Ranges

REST API can return HTTP response code 304 (Not Modified) if the request comes with the header If-Modified-Since or If-None-Match, and the data has not been updated since, meaning that the ETag and Last-Modified headers for it have remained the same.

**Range** HTTP header is supported by the module. It allows to pull only part of the data.

Output is always in the **UTF-8** charset.

More examples of how to pull, edit, change and remove entites will come later in this article.

## Working with REST API using a PHP client

If you do not want to bother making requests via pure cURL and then parse results manually, you can use our REST API Client, which is built upon [Guzzle lib](http://guzzle.readthedocs.org/en/latest/), in order to ease the process. In order to prepare your environment, you should do the following:

1.  [Install Guzzle](https://github.com/guzzle/guzzle#installing-guzzle) via Composer to the folder where your script working with REST API is located. Please note that you'll need **Guzzle 5.0.x** for a client to work, **not** the 6.0 version. That is because Guzzle [switched to PSR-7](https://github.com/guzzle/guzzle/releases/tag/6.0.0) for HTTP message and our REST API Client is not compatible with that. You might need to call 

    ```php
    php composer.phar require guzzlehttp/guzzle:5.0.3
    ```

    instead of

    ```php
    composer require guzzlehttp/guzzle:5.0.3
    ```

    during Guzzle installation.

2.  Download the latest version of the **RESTAPIClient.php** script from [https://github.com/xcart/next-sdk/tree/master/lib/RESTAPI](https://github.com/xcart/next-sdk/tree/master/lib/RESTAPI) and put it into the same folder where Guzzle lib is installed.
3.  Create your script (for example, _test.php_) with the following content: 

    ```php
    <?php

    error_reporting(-1);
    set_time_limit(3000);

    // init REST API
    require_once 'vendor/autoload.php';
    require_once 'RESTAPIClient.php';

    // a path of your admin.php end-point
    $storeUrl = 'http://localhost/next/src/admin.php';
    $restApiKey = 'rest-api-key';

    $client = \RESTAPIClient::factory($storeUrl, $restApiKey);
    $product = $client->get('product/1')->json();

    var_dump($product);
    ```

    In this script, we first initialize REST API libs, then we create a `$client` object that will work with X-Cart REST API, pull product info and var_dump the returned data to a screen.

## What data I can pull?

X-Cart REST API supports two data schemes:

1.  **Default format** - This is a format that exactly matches the way data is stored in the database. This format allows to pull absolutely every single data entity from X-Cart.
2.  **Complex schema** - This is a format that was designed to serve typical business cases for REST API integrations. This format supports only **product**, **user** and **order** entities.

You can reasonably ask what format you should choose. The best answer is to show you an example. For instance, you need to pull product info such as **sku**, **name**, **description**, **price** and **quantity** for all your products. Using the default format it would look as follows: 

```php
<?php

// init REST API
require_once 'vendor/autoload.php';
require_once 'RESTAPIClient.php';

// a path of your admin.php end-point
$storeUrl = 'http://localhost/next/src/admin.php';
$restApiKey = 'rest-api-key';

$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

$products = $client->get('product')->json();

foreach ($products as $product) {

    $extendedProductInfo = $client->get('product/' . $product['product_id'])->json();

    echo 'SKU: ' . $product['sku'] . PHP_EOL;
    echo 'Title: ' . $extendedProductInfo['translations'][0]['name'] . PHP_EOL;
    echo 'Description: ' . $extendedProductInfo['translations'][0]['description'] . PHP_EOL;
    echo 'Quantity: ' . $extendedProductInfo['amount'] . PHP_EOL;
    echo 'Price: ' . $product['price'] . PHP_EOL;
}
```

As you can see, you have to make multiple requests in order to pull the needed product info (name, description, quantity) if you use the **Default** format.

As has been said earlier, the **Complex** schema serves the typical integration use-cases; that is why in order to pull the same product info you would need to make only one request as follows:

```php
<?php

// init REST API
require_once 'vendor/autoload.php';
require_once 'RESTAPIClient.php';

// a path of your admin.php end-point
$storeUrl = 'http://localhost/next/src/admin.php';
$restApiKey = 'your-rest-api-key';

$client = \RESTAPIClient::factory($storeUrl, $restApiKey, 'complex');

$products = $client->get('product')->json();

foreach ($products as $product) {

    echo 'SKU: ' . $product['sku'] . PHP_EOL;
    echo 'Title: ' . $product['translations']['en']['name'] . PHP_EOL;
    echo 'Description: ' . $product['translations']['en']['description'] . PHP_EOL;
    echo 'Quantity: ' . $product['quantity'] . PHP_EOL;
    echo 'Price: ' . $product['price'] . PHP_EOL;
}
```

Answering the question what format is for you, we would say that if you need general info about products, orders and users, then choose the **Complex** schema, if you need some specific info or you need to pull info about other entities (categories, payment methods, etc), then use the **Default** schema.

### Custom schema examples

If you feel that the existing schemes don't suit your needs, you can always build a module - extension for RESTAPI - and introduce a schema that does exactly what you need. This requires an expertise in X-Cart coding from you. Such appliance is not a subject for this article, but we can provide you with an example module: [Tony-RESTExtension-v5_2_0.tar]({{site.baseurl}}/attachments/3768321/8718940.tar).

Also, if you are developing under X-Cart 5.3 and later versions: we have an updated example module here: [XCExample-RESTAPI-v5_3_0.tar]({{site.baseurl}}/attachments/modules/XCExample-RESTAPI-v5_3_0.tar) (application/x-tar)

### Default schema

If you want to use the **Default** schema, you should instantiate the REST API client as follows: 

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey, 'default');

// or simply

$client = \RESTAPIClient::factory($storeUrl, $restApiKey);
```

If you want to create the REST API client with the **Complex** schema, then do it as follows: 

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey, 'complex');
```

### Data available in the Complex schema

#### Product entity

*   **sku** - string;

*   **productId** - integer;

*   **name** - string, translated to browser locale if translation is available;

*   **description** - string, translated to browser locale if translation is available;

*   **shortDescription** - string, translated to browser locale if translation is available;

*   **price** - decimal, rounded to 2 digits;

*   **weight** - decimal, rounded to 2 digits;

*   **quantity** - integer;

*   **releaseDate** - datetime in W3C format;

*   **images** - array of strings with image paths;

*   **URL** - string;

*   **enabled** - boolean;

*   **freeShipping** - boolean, whether or not product has free shipping applicable;

*   **categories** - array of strings with category names;

*   **memberships** - array;

*   **translations** - array of translation entities (key is a language code, e.g. **en**, value is an array of **name**, **description** and **shortDescription** of that language)

#### Profile entity

*   **profileId** - integer;

*   **login** - string;

*   **email** - string;

*   **password** - string, SHA-512 hash of password;

*   **addresses** - array of address entities (each entity contains strings of address parts, such as country, state, city)

*   **addedDate** - datetime in W3C format;

*   **membership** - string;

*   **roles** - array;

*   **firstname** - string, taken from default billing address; 

*   **lastname** - string, taken from default billing address.

#### Order entity

*   **orderId** - integer;

*   **orderNumber** - string;

*   **total** - decimal, rounded to 2 digits;

*   **subtotal** - decimal, rounded to 2 digits;

*   **taxAmount** - decimal, rounded to 2 digits;

*   **shippingCost** - decimal, rounded to 2 digits;

*   **paymentFee** - decimal, rounded to 2 digits;

*   **discountValue** - decimal, rounded to 2 digits;

*   **currency** - string of ISO-4217 code;

*   **items** - array of product entities;

*   **shippingStatus** - string, status code;

*   **paymentStatus** - string, status code;

*   **orderDate** - datetime in W3C format;

*   **updateDate** - datetime in W3C format;

*   **trackingNumber** - string; 

*   **customerNotes** - string;

*   **adminNotes** - string;

*   **coupon** - string;

*   **customerInfo** - profile entity (array);

*   **billingInfo** - address entity (array);

*   **shippingInfo** - address entity (array);

*   **paymentMethod** - string;

*   **shippingMethod** - string;

## How to work with different entities in the Default schema?

What entity you are working with via REST API is entirely defined by the `_path` parameter in request. Basically, you are working with X-Cart models, which is described in the `<X-Cart>/classes/XLite/Model/` folder. You can also work with models of the modules. They are described in the `<X-Cart>/classes/XLite/<DEVELOPER-ID>/<MODULE-ID>/Model/` folder, where <DEVELOPER-ID> and <MODULE-ID> are module identifiers.

In order to work with orders via REST API, you specify `_path=order`, because the order model is described in the `\XLite\Model\Order` class (see the [article about class names]({{site.baseurl}}/en/misc/x-cart_classes_structure_and_namespaces.html)). If you want to work with users via REST API, you specify `_path=profile`. The general principle is to find a class that describes the entity you need and then create the `_path` parameter based on the classname of this entity.

### Building _path for core models

The rules are as follows:

1.  The **\XLite\Model\** prefix is excluded;
2.  The rest of path is **lowercased**;
3.  **Back-slashes** (\) become **dashes** (-).

Example 1: building _path for \XLite\Model\Product model:

1.  Excluding \XLite\Model\ prefix: **\XLite\Model\Product **becomes** Product**
2.  Lowercasing the rest: **Product** becomes **product**
3.  Replacing back-slashes with dashes: **product** becomes **product** (no changes in fact, since there are no back-slashes)

Result: **\XLite\Model\Product** is converted to **product**

Example 2: building _path for \XLite\Model\Payment\Transaction model:

*   Excluding \XLite\Model\ prefix: **\XLite\Model\Payment\Transaction** becomes **Payment\Transaction**
*   Lowercasing the rest: **Payment\Transaction** becomes **payment\transaction**
*   Replacing back-slashes with dashes: **payment\transaction** becomes **payment-transaction**

Result: **\XLite\Model\Payment\Transaction **is converted to** payment-transaction**

### Building _path for module models

1.  The **\XLite\Module\** and **Model\** parts are excluded;
2.  The rest of path is **lowercased**;
3.  **Back-slashes** become **dashes**.

Example 1: building _path for \XLite\Module\CDev\SalesTax\Model\Tax model

*   Excluding \XLite\Module\ and Model\ parts: **\XLite\Module\CDev\SalesTax\Model\Tax** becomes **CDev\SalesTax\Tax**
*   Lowercasing the rest: **CDev\SalesTax\Tax** becomes **cdev\salestax\tax**
*   Replacing back-slashes with dashes: **cdev\salestax\tax** becomes **cdev-salestax-tax**

Result: **\XLite\Module\CDev\SalesTax\Model\Tax** is converted to **cdev-salestax-tax**

Example 2: building _path for \XLite\Module\CDev\SalesTax\Model\Tax\Rate model

*   Excluding \XLite\Module\ and Model\ parts: **\XLite\Module\CDev\SalesTax\Model\Tax\Rate** becomes **CDev\SalesTax\Tax\Rate**
*   Lowercasing the rest: **CDev\SalesTax\Tax\Rate** becomes **cdev\salestax\tax\rate**
*   Replacing back-slashes with dashes: **cdev\salestax\tax\rate** becomes **cdev-salestax-tax-rate**
*   Result: **\XLite\Module\CDev\SalesTax\Model\Tax\Rate** is converted to **cdev-salestax-tax-rate**

## Attachments:

* [Tony-RESTExtension-v5_2_0.tar]({{site.baseurl}}/attachments/3768321/8718940.tar) (application/x-tar)
* [XCExample-RESTAPI-v5_3_0.tar]({{site.baseurl}}/attachments/modules/XCExample-RESTAPI-v5_3_0.tar) (application/x-tar)
* [Example JSON Product schema]({{site.baseurl}}/attachments/code/product_schema.json)
