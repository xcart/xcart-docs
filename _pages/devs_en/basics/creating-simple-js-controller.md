---
title: Creating simple JS controller
lang: en
layout: article_with_sidebar
updated_at: 2017-08-22 21:29 +0400
identifier: ref_6SCZVZcv
order: 100
---

## Introduction

This article describes how to create JS controller in X-Cart 5. In other words, how to create a piece of JavaScript code that pulls some info from X-Cart and a listener code that is ready to return this info.

In short words, JS code is whatever you want it to be, while listener code is a regular X-Cart controller that knows when it processes an AJAX request.

## Creating sidebar menu
To illustrate the concept let us create a module that creates a box in left hand-side menu that displays a random product and you can click a button to show different yet random product.

Our module has developer ID **XCExample** and module ID **JsControllerDemo**. We start with {% link "creating a simple sidebar menu" ref_Z0IrS8PW %}.

Create manifest of the module (`classes/XLite/Module/XCExample/JsControllerDemo/Main.php` file) with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:
 
namespace XLite\Module\XCExample\JsControllerDemo;
 
/**
 * Main module
 */
abstract class Main extends \XLite\Module\AModule
{
    /**
     * Author name
     *
     * @return string
     */
    public static function getAuthorName()
    {
        return 'XCExample';
    }
 
    /**
     * Module name
     *
     * @return string
     */
    public static function getModuleName()
    {
        return 'Js controller demo';
    }
 
    /**
     * Module description
     *
     * @return string
     */
    public static function getDescription()
    {
        return '';
    }
 
    /**
     * Get module major version
     *
     * @return string
     */
    public static function getMajorVersion()
    {
        return '5.3';
    }
 
    /**
     * Module version
     *
     * @return string
     */
    public static function getMinorVersion()
    {
        return '0';
    }
}
```

Create viewer class for displaying sidebar menu (`classes/XLite/Module/XCExample/JsControllerDemo/View/SideBarBox.php` file) with the following content:
	
```php
<?php
 
namespace XLite\Module\XCExample\JsControllerDemo\View;
 
/**
 * @ListChild (list="sidebar.single", zone="customer", weight="500")
 * @ListChild (list="sidebar.first", zone="customer", weight="500")
 */
 
class SideBarBox extends \XLite\View\SideBarBox
{
    protected function getHead()
    {
        return 'Random Product';
    }
 
    protected function getDir()
    {
        return 'modules/XCExample/JsControllerDemo/sidebarbox';
    }
 
    public function getJSFiles()
    {
        $list = parent::getJSFiles();
        $list[] = 'modules/XCExample/JsControllerDemo/js/controller.js';
 
        return $list;
    }
 
    protected function getBlockClasses()
    {
        return parent::getBlockClasses() . ' block-random-product';
    }
}
```
    
You may notice two differences compared to the aforementioned article about sidebar menu:
- We have method `getJSFiles()` that defines a file of our JS controller;
- We have method `getBlockClasses()` that defines that `<div>` of our sidebar menu will also have `block-random-product` class. This is needed because this way we can use this CSS class as jQuery selector in our JS controller.

Create template for displaying content of this sidebar menu (`skins/customer/modules/XCExample/JsControllerDemo/sidebarbox/body.twig`) and leave this file blank for now.
Create empty JS file (`skins/customer/modules/XCExample/JsControllerDemo/js/controller.js`) for our JS controller.

If you refresh any category page after you have done all that, you will see a sidebar menu with empty body like this:
![random-product.png]({{site.baseurl}}/attachments/ref_6SCZVZcv/random-product.png)

## Creating PHP controller

Now let us create a PHP code that returns info about random product whenever called. It will be just a regular X-Cart controller.

We create `classes/XLite/Module/XCExample/Controller/Customer/RandomProduct.php` file with the following content:

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:
 
namespace XLite\Module\XCExample\JsControllerDemo\Controller\Customer;
 
/**
 * Abstract controller for Customer interface
 */
class RandomProduct extends \XLite\Controller\Customer\ACustomer
{
    public function doNoAction()
    {
        $product = static::fetchRandomProduct();
 
        $return = array(
            'name'  => $product->getName(),
            'id'    => $product->getProductId(),
            'img'   => $product->getImage()->getFrontURL(),
            );
 
        $return = json_encode($return);
 
        header('Content-Type: application/json; charset=UTF-8');
        header('Content-Length: ' . strlen($return));
        header('ETag: ' . md5($return));
 
        print ($return);
    }
 
    static function fetchRandomProduct()
    {
        $productIds = \XLite\Core\Database::getRepo('XLite\Model\Product')->createQueryBuilder('p')
            ->select('p.product_id AS id')
            ->getArrayResult();
 
        $index = rand(0, count($productIds) - 1);
 
        return \XLite\Core\Database::getRepo('XLite\Model\Product')->find($productIds[$index]['id']);
    }
}
```

The `fetchRandomProduct()` method pulls random product from the database. We made the method static, so we could call it from other classes and we will need it later on.
The `doNoAction()` method is the actual method that will be evoked once X-Cart knows that `cart.php?target=random_product page` is requested. It pulls a random product and outputs info about it in JSON format.

If we open cart.php?target=random_product page right now, it will output something like this:

```
{"name":"DOTA 2 Sniper Plush","id":14,"img":"http:\/\/localhost\/next\/src\/images\/product\/hrpk_dota_sniper_plush.jpeg"}
```

If we refresh this page, the details of another product will be shown.

## Displaying info about random product
Now let us display info about some random product in our sidebar menu and then add JS code that will show different product when we click a button.

First let us create a method in `SideBarBox` class that returns info about random product:

```php
    protected function getRandomProduct()
    {
        if (is_null(static::$product)) {
            static::$product = \XLite\Module\XCExample\JsControllerDemo\Controller\Customer\RandomProduct::fetchRandomProduct();
        }

        return static::$product;
    }
```

As you can see, we use the same method `fetchRandomProduct()` as we defined earlier in the controller. We also need to create static variable `$produc`t in this class, because once we pull a random product, we want to always work with this product (not another random one) when we call `getRandomProduct()` method.

The final version of SideBarBox class is as follows:

```php
<?php
 
namespace XLite\Module\XCExample\JsControllerDemo\View;
 
/**
 * @ListChild (list="sidebar.single", zone="customer", weight="500")
 * @ListChild (list="sidebar.first", zone="customer", weight="500")
 */
 
class SideBarBox extends \XLite\View\SideBarBox
{
    protected static $product = null;
 
    protected function getHead()
    {
        return 'Random Product';
    }
 
    protected function getDir()
    {
        return 'modules/XCExample/JsControllerDemo/sidebarbox';
    }
 
    public function getJSFiles()
    {
        $list = parent::getJSFiles();
        $list[] = 'modules/XCExample/JsControllerDemo/js/controller.js';
 
        return $list;
    }
 
    protected function getBlockClasses()
    {
        return parent::getBlockClasses() . ' block-random-product';
    }
 
    protected function getRandomProduct()
    {
        if (is_null(static::$product)) {
            static::$product = \XLite\Module\XCExample\JsControllerDemo\Controller\Customer\RandomProduct::fetchRandomProduct();
        }
 
        return static::$product;
    }
}
```

After that we define the content of the `skins/customer/modules/XCExample/JsControllerDemo/sidebarbox/body.twig` template as follows:

```html
<div class="image">
    {{ widget('\\XLite\\View\\Image', image=this.getRandomProduct().getImage(), maxWidth=200, alt=this.getRandomProduct().getName()) }}
</div>
 
<div class="link">
    <a href="cart.php?target=product&product_id={{this.getRandomProduct().getProductId()}}">{{ this.getRandomProduct().getName() }}</a>
</div>
 
<div class="button">
    <button name="generate-random-product" id="generate-random-product">Surprise me!</button>
</div>
```

The code is pretty straight-forward. We define that there will be a product image, a product name as a link to the product and a button to refresh the block.

If you open any category page right now, you will see a good looking sidebar menu with a random product (and if you refresh the page, a new product will appear), but **Surprise me!** button does not do anything. Let us fix that.

## Calling for PHP controller in JS code
Now we only need to create JS code that will call for our PHP controller described earlier and once it gets info, refresh the block.

Let us edit the `skins/customer/modules/XCExample/JsControllerDemo/js/controller.js` file and define its content as follows:

```js
/* vim: set ts=2 sw=2 sts=2 et: */
 
jQuery('#generate-random-product').click(function(){
  core.get(
    URLHandler.buildURL({
      target: 'random_product',
    })
  ).done(function (data) {
    jQuery('.block-random-product div.image img').attr('src', data.img);
    jQuery('.block-random-product div.link').html(
        '<a href="?target=product&product_id' + data.id + '">'
        + data.name + '</a>'
    );
  })
});
```

We call `core.get()` in order to request `cart.php?target=random_product` page and once the response is received, it updates the Random Product sidebar menu.

## Checking whether it is an AJAX request
Although it is not necessarily in our particular module, but your task may require checking whether request is made through AJAX or just a client opened the page directly. In this case, you can call `$this->isAJAX()` method in controller class.
Let us change the `doNoAction()` method in our controller class and make it as follows:

```php
    public function doNoAction()
    {
        if ($this->isAJAX()) {
            $product = static::fetchRandomProduct();
 
            $return = array(
                'name'  => $product->getName(),
                'id'    => $product->getProductId(),
                'img'   => $product->getImage()->getFrontURL(),
            );
 
            $return = json_encode($return);
 
            header('Content-Type: application/json; charset=UTF-8');
            header('Content-Length: ' . strlen($return));
            header('ETag: ' . md5($return));
 
            print ($return);
        }
 
        die();
    }
```

As you can see, we return info about a random product only if the request is made through JS. You can see that clicking **Surprise me!** button still refreshes the sidebar menu, while if you go to `cart.php?target=random_product` page directly, it returns an empty screen.

## Module pack
You can download the entire module described in this article from here:
[https://www.dropbox.com/s/u3ovulxn3rpwyrl/XCExample-JsControllerDemo-v5_3_0.tar](https://www.dropbox.com/s/u3ovulxn3rpwyrl/XCExample-JsControllerDemo-v5_3_0.tar?dl=0)
