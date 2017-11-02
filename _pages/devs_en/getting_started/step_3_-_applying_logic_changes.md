---
title: Step 3 - applying logic changes
identifier: ref_AF6bmvL6
updated_at: 2015-01-13 00:00
layout: article_with_sidebar
lang: en
order: 300
categories:
- Developer docs
- Demo module
---

## Introduction

This is the third article in **Getting Started** section and it aims to teach X-Cart developers how to change the store's logic. We will start with an overview of how X-Cart works in general and then explain how you can change this default workflow.

This article also contains the working example of changing X-Cart's logic.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [General types of objects in X-Cart](#general-types-of-objects-in-x-cart)
*   [General X-Cart workflow](#general-x-cart-workflow)
*   [Applying changes to X-Cart store](#applying-changes-to-x-cart-store)
*   [Module example](#module-example)
*   [Other approaches to changing the default X-Cart logic](#other-approaches-to-changing-the-default-x-cart-logic)

## General types of objects in X-Cart

Before we start explaining general workflow of X-Cart, we must say that X-Cart uses **object-oriented paradigm**, which means that code is objects-based + code widely utilizes **inheritance** as well as uses polymorphism and encapsulation. We also can call X-Cart as **MVC** (Model - View - Controller) framework, because of three main class types in X-Cart:

1.  {% link "**Model** class" ref_wmExvPDD %} is a class that describes some entity. Products, orders, users, payment gateways, etc are all model objects. All model classes are defined in files of the `<X-Cart>/classes/XLite/Model/` folder.
2.  {% link "**Viewer** class" ref_6dMJsZ63 %} is a class that handles the output of HTML code to the client. For example, in order to display an order page there is a bulk of viewer classes that takes info from order model, then processes it and finally outputs to the client. All viewer classes are defined in files of the `<X-Cart>/classes/XLite/View/` directory.
3.  **Controller** class aims to make a preparation of data and application before viewer class starts the output of content. All controller classes are described in files of the `<X-Cart>/classes/XLite/Controller/` folder.

## General X-Cart workflow

Web-client can access X-Cart via two end-points: `admin.php` for admin interface and `cart.php` for customer store-front. Once X-Cart receives requests at these end-points, it runs the application as follows:

1.  End-point script (`admin.php` or `cart.php`) instantiates the `\XLite` object (defined in the `<X-Cart>/classes/XLite.php` file) and then runs its `processRequest()` method. Before running this method, it includes `top.inc.php` files from X-Cart root folder and initializes the application.
    _Note: the application is run from the `<X-Cart>/var/run/classes/` directory, not from `<X-Cart>/classes/` one. It means that if you need to debug your code, you should do it in the `<X-Cart>/var/run/` folder. If you change code in the `<X-Cart>/classes/` directory, changes will only take place after store re-deployment (**System settings** > **Re-deploy the store** link in your admin area)._

2.  `processRequest()` method identifies what controller class must be run based on the **target** parameter passed in the HTTP request. If you request `admin.php?target=product` path, then the responsible controller will be `<X-Cart>/classes/XLite/Controller/Admin/Product.php`. If you request `cart.php?target=checkout_success`, then controller class will be `<X-Cart>/classes/XLite/Controller/Customer/CheckoutSuccess.php`. In other words, it converts **target** parameter from HTTP request to **camel** notation and then looks for such class in the `Customer/` or `Admin/` sub-directory of the `<X-Cart>/classes/XLite/Controller/` folder depending on called end-point. If target is not passed, it is assumed that target is main.

3.  Once controller class is found, X-Cart calls `handleRequest()` and `processRequest()` methods of this controller class.

4.  `processRequest()` method of controller class initializes the display process. It calls `display()` method of the `\XLite\View\Controller` class (defined in the `<X-Cart>/classes/XLite/View/Controller.php` file) and it calls the `display()` method of its parent – `\XLite\View\AView` class – which actually starts the output.

5.  During output generating X-Cart will require some data, e.g. product, order, user, etc info and templates will request such data like this `{getSomeData()}` in their code. Such call means that X-Cart will start searching for `getSomeData()` method in the current viewer class or in the current controller class.

    {% note info %}
    Note: while controller class is always the same for one particular page rendering, viewer class may change from one template to another. X-Cart will start generating content and \XLite\View\Controller class will manage the process at the beginning. Then, some view list may include a widget handled by other viewer class, e.g. \XLite\View\Order and it will mean that the current viewer class will switch from \XLite\View\Controller to \XLite\View\Order. If you call the {getAnotherData()} method from the template handled by \XLite\View\Order class, X-Cart will search for getAnotherData() method in the \XLite\View\Order class and the current controller classes.
    {% endnote %}

6.  As you can understand, X-Cart starts the output quite quickly and then **"lazy"** pulls data on demand.

7.  During such lazy requests of data, X-Cart can create multiple model objects and run complex logic routines defined throughout X-Cart code.

## Applying changes to X-Cart store

As understood from the previous paragraph, X-Cart's code execution process is **treelike** and vertices of this tree are **methods** of certain classes/objects. In order to change X-Cart's behaviour we have to be able to change the tree by adding new vertices or changing existing ones. Changing any method of X-Cart's core (as well as methods of other modules) can be achieved via using [decorator pattern](http://en.wikipedia.org/wiki/Decorator_pattern).

It means, that we can tell X-Cart to use our own implementation of certain method of certain class instead of default one. We can also tell X-Cart to extend default properties of class with our own ones and, say, add more fields to product object.

Let me show you how the real-life working example for better understanding. Assume we want to hide the quicklook magnifier icon from all product lists. This icon is marked on the snapshot below:

![]({{site.baseurl}}/attachments/8224804/8355865.png)Using the approach described in {% link "Step 2 - applying design changes" ref_E88KCMDD %} article, we can find that this icon is defined by the `<X-Cart>/skins/default/en/items_list/product/parts/common.quicklook-button.tpl` template. Its code is below: 

```php
{* vim: set ts=2 sw=2 sts=2 et: *}
{**
 * Overlapping box
 *
 * @author    Qualiteam software Ltd <info@x-cart.com>
 * @copyright Copyright (c) 2011-2014 Qualiteam software Ltd <info@x-cart.com>. All rights reserved
 * @license   http://www.x-cart.com/license-agreement.html X-Cart 5 License Agreement
 * @link      http://www.x-cart.com/
 *
 * @ListChild (list="itemsList.product.grid.customer.info", weight="999")
 * @ListChild (list="itemsList.product.list.customer.quicklook", weight="999")
 * @ListChild (list="productBlock.info", weight="999")
 *}
<div IF="isQuickLookEnabled()" class="quicklook">
  <a
    href="{buildURL(#product#,##,_ARRAY_(#product_id#^product.product_id,#category_id#^categoryId))}"
    class="quicklook-link quicklook-link-{product.product_id} quicklook-link-category-{categoryId}">
    <div class="quicklook-view">&nbsp;</div>
  </a>
</div>
```

As you can see, the code is straight-forward: if `isQuickLookEnabled()` method returns true, then this icon is displayed. Of course, we can hide this icon by **overriding** the template as it was described previously in step 2 article, but we can also hide it by **decorating the viewer class** of this template – this class is `\XLite\View\ItemsList\Product\Customer` – and changing the `isQuickLookEnabled()` method to always return false.

Here is how we can achieve it:

1.  {% link "Create an empty module" ref_G2mlgckf %}. I am creating it with developer ID as **Tony** and module ID as **DecoratorDemo**. Of course, you can use your own IDs.
2.  Create the `<Your-Module-Directory>/VIew/ItemsList/Product/Customer/ACustomer.php` file inside your module with the following content: 

    ```php
    <?php
    namespace XLite\Module\Tony\DecoratorDemo\View\ItemsList\Product\Customer;
    abstract class ACustomer extends \XLite\View\ItemsList\Product\Customer\ACustomer implements \XLite\Base\IDecorator
    {
        protected function isQuickLookEnabled()
        {
            return false;
        }
    }
    ```

    Of course, if you are using your own IDs, you must change the namespace.

3.  Let me walk through each line of this code and explain what it does.
4.  ```php
    namespace XLite\Module\Tony\DecoratorDemo\View\ItemsList\Product\Customer;
    ```

    This is just a definition of the class' **namespace**.

5.  ```php
    abstract class ACustomer extends \XLite\View\ItemsList\Product\Customer\ACustomer implements \XLite\Base\IDecorator
    ```

    Here we specifiy that our class decorates the `\XLite\View\ItemsList\Product\Customer\ACustomer` one of default X-Cart. It means that X-Cart will use the implementation of the `isQuickLookEnabled()` method defined in our class instead of implementation of the `isQuickLookEnabled()` method defined in the `\XLite\View\ItemsList\Product\Customer\ACustomer` class. However, X-Cart will keep using other methods of `\XLite\View\ItemsList\Product\Customer\ACustomer` class as they were defined, unless these methods were decorated as well (by other modules, for example).
    _Note: decorating class must always be abstract, no matter what class it decorates._

6.  ```php
    protected function isQuickLookEnabled()
    {
        return false;
    }
    ```

    Our implementation of the `isQuickLookEnabled()` method. Quite often, you want to keep existing functionality and just extend it with your own routines. In this case, you can decorate certain methods like this: 

    ```php
    protected function isQuickLookEnabled()
    {
    	myMethod();
        return parent::isQuickLookEnabled();
    }
    ```

    In other words, you may want to call **parent** class in order to keep existing functionality in place.
    _Note: again the signature of the method (accessibility and argument types and number) must remain the same during decoration._

7.  Final step is to **re-deploy the store** and check the results in store-front.

## Module example

Module described above can be downloaded from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-DecoratorDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-DecoratorDemo-v5_1_0.tar)

## Other approaches to changing the default X-Cart logic

Decoration approach is widely-used in X-Cart modules and here are few other moments that you must know about:

1.  You can decorate class' **properties** the same way you do with methods. For example, this code will decorate `\XLite\Model\Product` object and add `$myProperty` field to each product.

    ```php
    <?php
    namespace XLite\Module\Tony\DecoratorChanges\Model;
    class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
    {
        /**
         * @Column (type="string", length=32, nullable=true)
         */
        protected $myProperty;
    }
    ```

    Of course, this code assumes that this code is placed in the `<X-Cart>/classes/Module/Tony/DecoratorChanges/Model/Product.php` file. Otherwise, you should change namespace accordingly.

2.  In some cases, you do not need to decorate any class in order to add some functionality. For instance, if you need to add **payment gateway**, you just create the implementation of your payment method by inheritance of the `\XLite\Model\Payment\Base\Processor` class and then register it in the system by creating `.yaml` file. After that, X-Cart will know that there is new payment method in the system.

## Attachments:

* [quicklook-icon.png]({{site.baseurl}}/attachments/8224804/8355866.png) (image/png)
* [quicklook-icon.png]({{site.baseurl}}/attachments/8224804/8355865.png) (image/png)