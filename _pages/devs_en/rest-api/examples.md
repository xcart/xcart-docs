---
lang: en
layout: wide_article_with_sidebar
updated_at: '2018-07-27 15:00 +0400'
title: Request examples
identifier: ref_examples_index
disable_spacer: true
rest_api: docs
categories:
  - api
published: true
order: 100
redirect_from:
  - /rest-api/examples/index.html
---
{% toc Table of Contents %}

Given examples work for the <u>Default schema only</u>, and they **do not work** for the Complex schema.

### Searching all products within price range

Direct request: 

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product
&_cnd[price][0]=10
&_cnd[price][1]=20
```

Explanation of this request:

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key&_path=product   //We are using GET method to pull the data
&_cnd[price][0]=10   // We use _cnd param here. "price" is the condition and it is consists of two values: min and max. Here we define "min" part of the range - 10.
&_cnd[price][1]=20   // Second part of the price condition. Here we define "max" part of the range - 20.
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

// preparing product data
$query = array(
    '_cnd'  => array(
        'price' => array(10, 20),
    ),
);

// sending request
$result = $client->get('product', array('query' => $query))->json();
```

Such a request will create a product and then return the same product info in JSON as a result.

### Creating product

Direct request: 

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product/0
&_method=post
&model[sku]=sweatshirt
&model[price]=10.00
&model[amount]=100
&model[translations][0][code]=en
&model[translations][0][name]=sweatshirt
```

Explanation of this request:

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key&_path=product/0
&_method=post           // we use POST method for creating products and we specify _path as product/0, where /0 tells X-Cart that new entity is being created
&model[sku]=sweatshirt  // defining product data
&model[price]=10.00
&model[amount]=100
&model[translations][0][code]=en  // Name is a part of translations model that is why we are using 2 dimensional array as well
&model[translations][0][name]=sweatshirt
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

// preparing product data
$product = array(
    'sku'   => 'sweatshirt',
    'price' => 10.00,
    'amount' => 100,
    'translations' => array (
            array(
                'code' => 'en',
                'name' => 'sweatshirt',
                ),
        ),
    );

// sending request
$result = $client->post('product/0', array('body' => $product))->json();
```

Such a request will create a product and then return the same product info in JSON as a result.

### Creating several products at once

Direct request: 

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product
&_method=post
&model[0][sku]=red-apple
&model[0][price]=5.00
&model[0][amount]=100
&model[0][translations][0][code]=en
&model[0][translations][0][name]=Red%20apple
&model[1][sku]=green-apple
&model[1][price]=5.00
&model[1][amount]=100
&model[1][translations][1][code]=en
&model[1][translations][0][name]=Green%20apple
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

// preparing products data
$products = array(
    array (
        'sku' => 'red-apple',
        'price' => 5.00,
        'amount' => 100,
        'translations' => array(
            array(
                'code' => 'en',
                'name' => 'Red apple',
                ),
            ),
        ),
    array(
        'sku' => 'green-apple',
        'price' =>  5.00,
        'amount' => 100,
        'translations' => array (
            array(
                'code' => 'en',
                'name' => 'Green apple',
                ),
            ),
        ),
    );

// sending request
$result = $client->post('product', array('body' => $products))->json();
```

Note that we make a request to **_path=product** (not _path=product/0) in order to create several products.

Such a request will create two products and then return their info as a result.

### Changing SKU for a product with ID=1

Direct request: 

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product/1
&_method=put
&model[sku]=new-sku
```

We are using the parameter** _**path=product/1**** since we want to update a product with ID=1\. If we wanted to update a product with ID=14, we would use **_path=product/14.**

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey); 
// preparing product data
$product = array(
    'sku' => 'new-sku',
    );

// sending request
$result = $client->put('product/1', array('body' => $product))->json();
```

Such a request will change the sku of the product with ID=1 and then return this product info as a result.

## Changing SKUs for products with ID=1 and ID=3

Direct request:

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product
&_method=put
&model[0][product_id]=1
&model[0][sku]=new-sku-1
&model[1][product_id]=3
&model[0][sku]=new-sku-3
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

$products = array(
    array (
        'product_id' => 1,
        'sku' => 'new-sku-1',
        ),
    array(
        'product_id' => 3,
        'sku' => 'new-sku-3',
        ),
    );

// sending request
$result = $client->put('product', array('body' => $products))->json();
```

### Assigning a product to a category

Direct request:

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=categoryproducts/0
&_method=post
&model[product][product_id]=1
&model[category][category_id]=1
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

$link = array(
    'product' => array (
        "product_id" => 1
    ),
    'category' => array (
        "category_id" => 1
    )
);
// sending request
$result = $client->post('categoryproducts/0', array('body' => $link))->json();
```

### Removing a product with ID=1

Direct request: 

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product/1
&_method=delete
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

// sending request
$result = $client->delete('product/1')->json();
```

### Removing all products

Direct request: 

```php
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=rest-api-key
&_path=product
&_method=delete
```

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);

// sending request
$result = $client->delete('product')->json();
```

### Adding attribute to the product

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeUrl, $restApiKey);
$productId = 5;

$attribute = array(
    array(
        'position'  => 0,
        'visible' => true,
        'type'  => 'S',
        'translations' => array(
            array(
                'code' => 'en',
                'name' => 'Colour'
            )
        ),
        'attribute_options' => array(
            array(
                'translations' => array(
                    array(
                        'code' => 'en',
                        'name' => 'Blue'
                    )
                )
            ),
            array(
                'translations' => array(
                    array(
                        'code' => 'en',
                        'name' => 'Black'
                    )
                )
            ),
            array(
                'translations' => array(
                    array(
                        'code' => 'en',
                        'name' => 'Red'
                    )
                )
            )
        )
    )
);

$result = $client->post('attribute', array('body' => $attribute))->json();

$attributeId = $result[0]['id'];
$attributeInfo = $client->get('attribute/' . $attributeId)->json();

$options = $attributeInfo['attribute_options'];

$attributeValueSelect = array();

foreach($options as $option) {
    $attributeValueSelect[] = array(
        'product' => array(
            'product_id' => $productId
        ),
        'attribute' => array(
            'id' => $attributeId
        ),
        'attribute_option' => array(
            'id' => $option['id']
        )
    );
}

$result = $client
    ->post('attributevalue-attributevalueselect', array('body' => $attributeValueSelect))
    ->json();
```

### Adding attribute to the product

With REST API Client:

```php
$client = \RESTAPIClient::factory($storeURL, $RESTAPIKey);
$productId = 5;

// create variants for product #5
$variants = array(              
    array(
        'product' => array(
            'product_id' => $productId      
        ),
        'price' => 0.0000,
        'weight' => 0.0000,
        'amount' => 0,
        'sku' => 'TEST_VAR0',
        'defaultValue' => 0,
        // this is the record id in the xc_product_variant_attribute_value_select table
        'attributeValueS' => array(     
            array(
                'id' => 284
            )
        )
    ),
    array(
        'product' => array(
            'product_id' => $productId
        ),
        'price' => 0.0000,
        'weight' => 0.0000,
        'amount' => 0,
        'sku' => 'TEST_VAR1',
        'defaultValue' => 0,
        'attributeValueS' => array(
            array(
                'id' => 285
            )
        )
    ),
    array(
        'product' => array(
            'product_id' => $productId
        ),
        'price' => 0.0000,
        'weight' => 0.0000,
        'amount' => 0,
        'sku' => 'TEST_VAR2',
        'defaultValue' => 0,
        'attributeValueS' => array(
            array(
                'id' => 286
            )
        )
    )
);

$result = $client->post('xc-productvariants-productvariant', array('body' => $variants))->json();

// this is the linkage of the xc_product_variants table and xc_attributes table
$variantAttributes = array(             
    'variantsAttributes' => array(
         array(
            'id' => 59,
            'product' => array(
                'product_id' => $productId
            )
        )
    )
);

$result = $client->put('product/' . $productId, array('body' => $variantAttributes))->json();
```

### Getting all product variants
If you know the specific product variant ID that needs to be updated, you can update the variant data directly. In the below example, we change "amount" to 10 for variant ID = 143

```
http://<MY-XCART-PATH>/admin.php?target=RESTAPI&_key=WRITEAPIKEY
&_path=xc-productvariants-productvariant
```

### Updating a product variant
If you know the specific product variant ID that needs to be updated, you can update the variant data directly. In the below example, we change "amount" to 10 for variant ID = 143

```
http://<MY-XCART-PATH>/admin.php?target=RESTAPI&_key=WRITEAPIKEY
&_path=xc-productvariants-productvariant
&_method=put
&model[0][id]=143
&model[0][amount]=10
```

The same way you can define other parameters of the product variant, such as price, weight, defaultPrice, defaultAmount (these two are flags that define that price and/or amount must be inherited from the main product price and amount), weight, etc.

### Creating a shipping zone

Direct request:

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY
&_path=zone
&_method=post
&model[0][zone_name]=ZONE
&model[0][zone_elements][0][element_value]=US
&model[0][zone_elements][0][element_type]=C
&model[0][zone_elements][1][element_value]=US_NY
&model[0][zone_elements][1][element_type]=S
&model[0][zone_elements][2][element_value]=10001
&model[0][zone_elements][2][element_type]=Z
```

Example result: 

```
array (size=5)
 'target' => string 'RESTAPI' (length=7)
  '_key' => string 'KEY' (length=3)
  '_path' => string 'zone' (length=4)
  '_method' => string 'post' (length=4)
  'model' => 
    array (size=1)
      0 => 
        array (size=2)
          'zone_name' => string 'ZONE' (length=4)
          'zone_elements' => 
            array (size=3)
              0 => 
                array (size=2)
                  'element_value' => string 'US' (length=2)
                  'element_type' => string 'C' (length=1)
              1 => 
                array (size=2)
                  'element_value' => string 'US_NY' (length=5)
                  'element_type' => string 'S' (length=1)
              2 => 
                array (size=2)
                  'element_value' => string '10001' (length=5)
                  'element_type' => string 'Z' (length=1)
```

### Getting shipping zones info 

Direct request:

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY&_path=zone
```

### Creating a shipping method

Direct request:

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY
&_path=shipping-method
&_method=post
&model[0][translations][0][name]=SHIPPING
&model[0][processor]=offline
&model[0][tableType]=S
&model[0][added]=1
&model[0][enabled]=1
```

Example result: 

```
array (size=5)
 'target' => string 'RESTAPI' (length=7)
  '_key' => string 'KEY' (length=3)
  '_path' => string 'shipping-method' (length=15)
  '_method' => string 'post' (length=4)
  'model' => 
    array (size=1)
      0 => 
        array (size=5)
          'translations' => 
            array (size=1)
              0 => 
                array (size=1)
                  'name' => string 'SHIPPING' (length=8)
          'processor' => string 'offline' (length=7)
          'tableType' => string 'S' (length=1)
          'added' => string '1' (length=1)
          'enabled' => string '1' (length=1)
```

### Getting shipping methods info

Direct request:

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY&_path=shipping-method
```

### Creating a shipping rate

Direct request:

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY
&_path=shipping-markup
&_method=post
&model[0][zone][zone_id]=9
&model[0][shipping_method][method_id]=135
&model[0][markup_per_weight]=7
```

Example result: 

```
array (size=5)
  'target' => string 'RESTAPI' (length=7)
  '_key' => string 'KEY' (length=3)
  '_path' => string 'shipping-markup' (length=15)
  '_method' => string 'post' (length=4)
  'model' => 
    array (size=1)
      0 => 
        array (size=3)
          'zone' => 
            array (size=1)
              'zone_id' => string '9' (length=1)
          'shipping_method' => 
            array (size=1)
              'method_id' => string '135' (length=3)
          'markup_per_weight' => string '7' (length=1)
```

### Updating an existing shipping rate

Direct request:

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY
&_path=shipping-markup
&_method=put
&model[0][markup_id]=9
&model[0][markup_per_weight]=77
```

Example result: 

```
array (size=5)
  'target' => string 'RESTAPI' (length=7)
  '_key' => string 'KEY' (length=3)
  '_path' => string 'shipping-markup' (length=15)
  '_method' => string 'put' (length=3)
  'model' => 
    array (size=1)
      0 => 
        array (size=2)
          'markup_id' => string '9' (length=1)
          'markup_per_weight' => string '77' (length=2)
```

### Changing the shipping status for an order

```
http://<X-CART-PATH>/admin.php?target=RESTAPI&_key=KEY
&_path=order/5
&_method=put
&model[shippingStatus][id]=2
```

The above sample link allows you to update Order #5 and set its shipping status to "Processing" (ID=2)

NOTE: Below is the list of shipping statuses and their ID numbers:

*   New = 1
*   Processing = 2
*   Shipped = 3
*   Delivered = 4
*   Will Not Deliver = 5
*   Returned =  6

Example result excerpt (note the shipping status field):

```json
{
    "order_id": 5,
    "shipping_id": 90,
    "shipping_method_name": "Courier",
    "payment_method_name": "",
    "tracking": "",
    "date": 1452604702,
    "lastRenewDate": 1476943206,
    "notes": "",
    "adminNotes": "",
    "orderNumber": "5",
    "recent": false,
    "total": 352.81,
    "subtotal": 351.31,
    "pbOrder": null,
    "messages": [],
    "profile": {
        ...profile data
    },
    "orig_profile": {
        ...profile data
    },
    "paymentStatus": {
        "id": 4,
        "code": "P",
        "position": 40
    },
    "shippingStatus": {
        "id": 5,
        "code": "WND",
        "position": 50
    },
    "details": [],
    "trackingNumbers": [],
    "events": [
        ...
    ],
    "items": [
        ...
    ],
    "surcharges": [
        ...
    ],
    "payment_transactions": [
        ...
    ],
    "currency": {
        ...
    }
}
```
