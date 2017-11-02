---
title: Webinar 4 - 11 Nov 2014 - Basic principles of CMS integration
identifier: ref_g6nU3zbt
updated_at: 2014-11-11 00:00
layout: article_with_sidebar
lang: en
categories:
- Webinars and video tutorials
---

## Introduction

The aim of this webinar is to show developers how they can work with X-Cart from 3rd party scripts, e.g. CMS.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Initializing X-Cart](#initializing-x-cart)
*   [Displaying widgets outside of X-Cart](#displaying-widgets-outside-of-x-cart)
*   [What if my script is not in X-Cart folder](#what-if-my-script-is-not-in-x-cart-folder)
    *   [Pitfalls](#pitfalls)
    *   [Step 1\. Create an empty module](#step-1-create-an-empty-module)
    *   [Step 2\. Point links to X-Cart installation](#step-2-point-links-to-x-cart-installation)
    *   [Step 3\. Fixing the cookie problem](#step-3-fixing-the-cookie-problem)
    *   [Module pack](#module-pack)
*   [Working with users](#working-with-users)
    *   [Creating user](#creating-user)
    *   [Logging user in](#logging-user-in)
    *   [Logging user off](#logging-user-off)

## Initializing X-Cart

Initializing X-Cart is as easy as including two files into your PHP project. Here is working example – сreate `test.php` file inside your X-Cart folder with the following code:

```php
<?php

require_once 'top.inc.php';
require_once 'top.inc.additional.php';

$product = \XLite\Core\Database::getRepo('XLite\Model\Product')->findOneBy(array('product_id' => 1));

echo $product->getName();
```

1.  This part initializes X-Cart and allows to use its public methods in our test PHP script

    ```php
    require_once 'top.inc.php';
    require_once 'top.inc.additional.php';
    ```

2.  This code pulls a product object and display its name

    ```php
    $product = \XLite\Core\Database::getRepo('XLite\Model\Product')->findOneBy(array('product_id' => 1));

    echo $product->getName();
    ```

    _More information about pulling data from database is {% link "here" ref_L1zWfWvw %}._

The same way you can use absolutely all public methods of X-Cart in your scripts: create and update objects, get data out of these objects.

## Displaying widgets outside of X-Cart

X-Cart allows to show entire widgets in 3rd party scripts in very concise way.

Let us edit the `test.php` script in root directory of X-Cart and define it like this:

```php
<?php
require_once 'top.inc.php';
require_once 'top.inc.additional.php';

$widget = new \XLite\View\TopCategories();

$widget->display();
```

1.  X-Cart initialization remains the same:

    ```php
    require_once 'top.inc.php';
    require_once 'top.inc.additional.php';
    ```

2.  This way we are pulling a widget object and tell them that it must be displayed now: 

    ```php
    $widget = new \XLite\View\TopCategories();

    $widget->display();
    ```

3.  This code will result in the following HTML code: 

    ```php
    <div class="block block-block block-top-categories">
      <div class="head-h2" >Categories</div>  <div class="content"><ul class="menu menu-list catalog-categories catalog-categories-path">
          <li  class="leaf first">
          <a href="cart.php?target=category&amp;category_id=2" >iGoods</a>
        </li>
          <li  class="leaf">
          <a href="cart.php?target=category&amp;category_id=3" >Apparel</a>
        </li>
          <li >
          <a href="cart.php?target=category&amp;category_id=4" >Toys</a>
        </li>
        </ul>
    </div>
    </div>
    ```

4.  The same approach can be used for every other X-Cart viewer class. All {% link "viewer classes" ref_6dMJsZ63 %} are located in `<X-Cart>/classes/XLite/Viewer` folder. Here is working example:

    ```php
    <?php

    require_once 'top.inc.php';
    require_once 'top.inc.additional.php';

    // display of minicart widget
    $minicart = new \XLite\View\Minicart();
    $minicart->display();

    // display of footer menu
    $footerMenu = new \XLite\View\Menu\Customer\Footer();
    $footerMenu->display();
    ```

5.  Finally, you can even render a template with all its children in an external script.

    ```php
    <?php

    require_once 'top.inc.php';
    require_once 'top.inc.additional.php';

    $content = new \XLite\View\Content();
    $content->display('layout/main.header.tpl');
    ```

6.  Using these approaches you can display almost any part of X-Cart interface – from a little <div> to entire page – in your script.

## What if my script is not in X-Cart folder

## Pitfalls

Let us imagine that we want to integrate X-Cart into a blog. The blog is installed on [http://localhost/](http://localhost/) and our X-Cart is in [http://localhost/next/src](http://localhost/next/src). In order to reproduce the situation, I am creating `test.php` file in the web-root of my localhost with the following content:

```php
<?php

require_once 'next/src/top.inc.php';
require_once 'next/src/top.inc.additional.php';

$widget = new \XLite\View\TopCategories();
$widget->display();
```

It works, but there are two problems:

1.  Links do not work, because they lead to `cart.php` script instead of `next/src/cart.php`
2.  X-Cart logs me off once I run test script.

In order to overcome these problems, we will need an integration module in the X-Cart.

## Step 1\. Create an empty module

There is already {% link "an article" ref_G2mlgckf %} describing how you can achieve it. I already have a module with developer ID **Tony** and module ID **CMSIntegration**.

## Step 2\. Point links to X-Cart installation

It can be achieved by decoration of the `\XLite\Core\Converter` class that contains `buildURL()` method. This method is used throughout entire X-Cart code in order to build proper X-Cart URLs.

We are running the {% link "following macro" ref_HvrXVNvJ#X-CartSDK-Decoratingclass %}:

```php
../../next-sdk/devkit/macros/decorate.php --module=Tony\\CMSIntegration --class=classes/XLite/Core/Converter.php
```

and it creates the `Core/Converter.php` file inside my module's folder.

Then, we go to my `test.php` script and define a constant there: 

```php
define('CMS_INTEGRATION', true);
```

We will use it in order to determine whether X-Cart methods are called from our script or through default X-Cart routine.

Now we can implement new version of `buildURL()` method in the `<X-Cart>/classes/XLite/Module/Tony/CMSIntegration/Core/Converter.php` file:

```php
    public static function buildURL($target = '', $action = '', array $params = array(), $interface = null, $forceCleanURL = false, $forceCuFlag = null)
    {
    	$return = parent::buildURL($target, $action, $params, $interface, $forceCleanURL, $forceCuFlag);
        if (defined('CMS_INTEGRATION')) {
        	$return = 'next/src/' . $return; 
        }
        return $return;
    }
```

This implementation is straight-forward, if `CMS_INTEGRATION` constant is defined, then we prepend 'next/src' part to all URLs. Otherwise, we keep URLs as they are.

## Step 3\. Fixing the cookie problem

The root of the problem is if our script is called outside of X-Cart folder, X-Cart cannot find cookie assigned to this folder and it generates new one. The way to fix this problem is to set X-Cart cookie to the folder of our external script – web-root, in our case.

We decorate the `\XLite\Core\Request` class by running this macro:

```php
../../next-sdk/devkit/macros/decorate.php --module=Tony\\CMSIntegration --class=classes/XLite/Core/Request.php
```

Now we go to the `Core/Request.php` file inside the module and implement our version of the `getCookieURL()` method: 

```php
	protected function getCookieURL($secure = false)
	{
		$url = $secure
			? 'http://' .  \XLite::getInstance()->getOptions(array('host_details', 'http_host'))
			: 'https://' . \XLite::getInstance()->getOptions(array('host_details', 'https_host'));

		$return = parse_url($url);

		return $return;
	}	
```

This implementation means that if the method is called from our script, then X-Cart sets cookie to `/` (web-root), otherwise it works as usual.

Now it is time to re-deploy the store and see our changes in action.

## Module pack

The entire mod can be downloaded from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-CMSIntegration-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-CMSIntegration-v5_1_0.tar)

## Working with users

Final point of today's webinar is how to create, log in and log off users through external script. Here are working examples which assume that we are going to put them into `localhost/test.php` script while X-Cart itself is installed in `localhost/next/src`.

## Creating user

The following code will create a user with **bit-bucket@x-cart.com** email and **tester** password:

```php
<?php

require_once 'next/src/top.inc.php';
require_once 'next/src/top.inc.additional.php';

$profile = new \XLite\Model\Profile();

$profile->setLogin('bit-bucket@x-cart.com');
$profile->setPassword(\XLite\Core\Auth::encryptPassword('tester'));
$profile->setForceChangePassword(false);

$profile->update();
```

We create a profile object:

```php
$profile = new \XLite\Model\Profile();
```

Assign mandatory fields to it:

```php
$profile->setLogin('bit-bucket@x-cart.com');
$profile->setPassword(\XLite\Core\Auth::encryptPassword('tester'));
```

We tell this profile that it must not ask for changing password after first login:

```php
$profile->setForceChangePassword(false);
```

Save the results:

```php
$profile->update();
```

If we check an admin area right now, we will see a user with **bit-bucket@x-cart.com** email there.

## Logging user in

Here is a code sample:

```php
<?php

require_once 'next/src/top.inc.php';
require_once 'next/src/top.inc.additional.php';

$profile = \XLite\Core\Auth::getInstance()->login('bit-bucket@x-cart.com', 'tester');

if ($profile !== \XLite\Core\Auth::RESULT_ACCESS_DENIED) {
	echo 'User is logged in';
} else {
	echo 'User could not be logged in';
}
```

This code is logging in a customer with **bit-bucket@x-cart.com** email and **tester** password:

```php
$profile = \XLite\Core\Auth::getInstance()->login('bit-bucket@x-cart.com', 'tester');
```

This piece of code just checks whether logging in went properly or not:

```php
if ($profile !== \XLite\Core\Auth::RESULT_ACCESS_DENIED) {
	echo 'User is logged in';
} else {
	echo 'User could not be logged in';
}
```

## Logging user off

This is code sample of logging the currently logged in user off:

```php
<?php

require_once 'next/src/top.inc.php';
require_once 'next/src/top.inc.additional.php';

\XLite\Core\Auth::getInstance()->logoff();
```

This is as easy as running one line of code:

```php
\XLite\Core\Auth::getInstance()->logoff();
```