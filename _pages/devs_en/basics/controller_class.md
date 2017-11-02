---
title: Controllers
identifier: ref_hkVaxgds
updated_at: 2015-01-13 00:00
layout: article_with_sidebar
lang: en
order: 10
categories:
- Developer docs
- Demo module
---

## Introduction

**Controller** is a class that is responsible for request handling in X-Cart. This article aims to give a basic understanding of how controllers work in X-Cart and how you can use them.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Understanding of Controller classes](#understanding-of-controller-classes)
    *   [handleRequest()](#handlerequest())
*   [Module example](#module-example)
*   [Module pack](#module-pack)

## Understanding of Controller classes

When X-Cart receives a request to one of its end-points – `cart.php` or `admin.ph`p – it starts looking for an appropriate Controller class based on **target** parameter in the request. If target is not specified, it is assumed as **main**.

When X-Cart identifies controller class name based on the target parameter passed, it **upperscases** the first letter of each word separated by underscores and then remove underscores.

*   If **target=main**, then controller class name will be **Main**;
*   If **target=featured_products**, then controller name will become **FeaturedProducts** and so on.

If you make a request to `admin.php`, script X-Cart identifies a controller class name and after that looks for it in the `<X-Cart>/classes/XLite/Controller/Admin/` folder and then in the
`<X-Cart>/classes/XLite/Module/<DEV-ID>/<MODULE-ID>/Controller/Admin/` folders of each module.

If you make a request to `cart.php`, X-Cart identifies a controller class name and then looks for it in the `<X-Cart>/classes/XLite/Controller/Customer/` folder and then in the
`<X-Cart>/classes/XLite/Module/<DEV-ID>/<MODULE-ID>/Controller/Customer/` folders of each module as well.

When, controller class is found, X-Cart calls its `handleRequest()` method – see an implementation of the `processRequest()` method in the `\XLite` class ({% link "more about classnames in X-Cart" ref_FAgFbEx9 %}).

Let us have a look at what exactly `handleRequest()` method does. See its implementation in the `\XLite\Controller\AController` class.

### handleRequest()

Its implementation: 

```php
public functio[n handleRequest()
{
    if (!$this->checkAccess()) {
        $this->markAsAccessDenied();

    } elseif (!$this->isVisible()) {
        $this->display404();

    } elseif ($this->needSecure()) {
        $this->redirectToSecure();

    } else {
        $this->run();
    }

    if ($this->isRedirectNeeded()) {
        $this->doRedirect();
    }
}
```

1.  It checks whether you are allowed to access this resource – `if (!$this->checkAccess())` – whether this page is visible –  `elseif (!$this->isVisible())` – and whether we need a redirect to HTTPS – `elseif ($this->needSecure())` 
2.  If everything is good, then it calls `run()` method, which is implemented as follows: 

    ```php
    protected function run()
    {
        if ($this->getAction() && $this->isValid()) {
            $this->callAction();

        } else {
            $this->doNoAction();

        }

        if (!$this->isValid()) {
            $this->restoreFormId();
        }
    }
    ```

3.  This method looks for **action** parameter in the request and if it is there, it tries to find a method for handling this action. If **action=create**, then it will search for `doActionCreate()` method, i.e. it uppercases the first letter in action parameter and prepend it with **do** prefix.
4.  If no action parameter passed, then X-Cart will call `doNoAction()` method.
5.  That is it with `run()` method and we get back to `handleReques()` method implementation. X-Cart checks the `isRedirectNeeded()` method and performs redirect if needed.

In your modules, you might want to extend `handleRequest()` method itself or just implement `doAction()` methods according to action parameters you are going to pass.

Also, talking about modules, if you want to create a controller for customer area, your controller class should extend the `\XLite\Controller\Customer\ACustomer` class. If you create a controller class for admin area, then it should extend the `\XLite\Controller\Admin\AAdmin` class. More details are in the module example below.

## Module example

Let us try to create some simple module that will show `doAction()` method work in real life.

We will create a mod that will create `cart.php?target=controller_demo` page. It will also create two records in **xc_config** table: one will count number of opening this page with no action, another record will track number of page opening with **action=test** parameter. We will be able to see these option values via direct request to MySQL: 

```php
SELECT * FROM xc_config WHERE category = "Tony\\ControllerDemo";
```

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ControllerDemo**. Then, we create the `<X-Cart>/classes/XLite/Module/Tony/ControllerDemo/install.yaml` file with the following content: 

```php
XLite\Model\Config:
  - name: no_action
    category: Tony\ControllerDemo
    value: 0
  - name: test_action
    category: Tony\ControllerDemo
    value: 0
```

This **install.yaml** file will create **no_action** and **test_action** {% link "settings in the database" ref_qFCH64Dt %}, which will track opening of our page with no action and with action=test.

_Note: do not forget to {% link "push the content of this YAML file" ref_HvrXVNvJ#X-CartSDK-LoadingYAMLfile %}_ _to the database._

Now we need to create the page in customer area that will be available by `cart.php?target=controller_demo` URL. We create the
`<X-Cart>/classes/XLite/Module/Tony/ControllerDemo/Controller/Customer/ControllerDemo.php` file with the following content: 

```php
<?php

namespace XLite\Module\Tony\ControllerDemo\Controller\Customer;

class ControllerDemo extends \XLite\Controller\Customer\ACustomer
{
    protected function doNoAction() 
    {
        $this->increaseCounter('no_action');
    }

    protected function doActionTest() 
    {
        $this->increaseCounter('test_action');
    }    

    protected function increaseCounter($name)
    {
        if (in_array($name, array('no_action', 'test_action'))) {
            \XLite\Core\Database::getRepo('\XLite\Model\Config')->createOption(
                array(
                    'category' => 'Tony\ControllerDemo',
                    'name'     => $name,
                    'value'    => \XLite\Core\Config::getInstance()->Tony->ControllerDemo->{$name} + 1,
                    )
                );
        }
    }
}
```

Here are key points of this class implementation:

1.  Class name represents the converted **target** parameter as **controller_demo**. We just uppercased first letter of each word separated by underscore – **controller_demo** became **Controller_Demo** – and removed underscores, so it became **ControllerDemo**.
2.  Our class extends abstract controller of customer area (`\XLite\Controller\Customer\ACustomer`):

    ```php
    class ControllerDemo extends \XLite\Controller\Customer\ACustomer
    ```

    If we created a controller for admin area, we would extend `\XLite\Controller\Admin\AAdmin` class.

3.  We implemented two methods – `doNoAction()` and `doActionTest()`: 

    ```php
        protected function doNoAction() 
        {
            $this->increaseCounter('no_action');
        }

        protected function doActionTest() 
        {
            $this->increaseCounter('test_action');
        }  
    ```

    As mentioned earlier, `doNoAction()` is run when no action parameter passed in the request and `doActionTest()` method is run when **action=test** is passed in the request.

4.  We also implemented `increaseCounter()` method that actually increment counters in settings based on the option name give: 

    ```php
        protected function increaseCounter($name)
        {
            if (in_array($name, array('no_action', 'test_action'))) {
                \XLite\Core\Database::getRepo('\XLite\Model\Config')->createOption(
                    array(
                        'category' => 'Tony\ControllerDemo',
                        'name'     => $name,
                        'value'    => \XLite\Core\Config::getInstance()->Tony->ControllerDemo->{$name} + 1,
                        )
                    );
            }
        }
    ```

The mod is done now and we need to re-deploy the store and then check the results. You just need to go to your store and open `cart.php?target=controller_demo` and
`cart.php?target=controller_demo&action=test` URLs. After that, make a request to your database and check the counters: 

```php
SELECT * FROM xc_config WHERE category = "Tony\\ControllerDemo";
```

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ControllerDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ControllerDemo-v5_1_0.tar)