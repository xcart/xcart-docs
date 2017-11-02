---
title: How to find out what page is currently running
identifier: ref_SmN15f4r
updated_at: 2014-12-22 00:00
layout: article_with_sidebar
lang: en
categories:
- Developer docs
- Demo module
---

## Introduction

This article teaches X-Cart developers how to determine what page is currently opened. For the sake of example, we will create a simple mod that will show different messages depending on whether **home**, **category** or **checkout** page is opened. If any other page is opened, then no message will be shown.

This article assumes that you know {% link "how to work with viewer classes" ref_6dMJsZ63 %} in X-Cart.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

To get started we {% link "create an empty module" ref_G2mlgckf %} with developer ID **Tony** and module ID **ControllerDetectionDemo**. Then, we create a new view class inside this module. We create the
`<X-Cart>/classes/XLite/Module/Tony/ControllerDetectionDemo/View/OurWidget.php` class with the following content:

```php
<?php

namespace XLite\Module\Tony\ControllerDetectionDemo\View;

/**
 * @ListChild (list="body", weight="1", zone="customer")
 */

class OurWidget extends \XLite\View\AView
{
	public function getDefaultTemplate() 
	{
		return 'modules/Tony/ControllerDetectionDemo/text.tpl';
	}

	public static function getAllowedTargets() 
	{
		$list = parent::getAllowedTargets();

		$list[] = 'checkout'; // checkout page
		$list[] = 'main'; // home page
		$list[] = 'category'; // category page

		return $list;
	}

	public function getOurText()
	{
		$return = 'no text';

		if (\XLite::getController() instanceof \XLite\Controller\Customer\Checkout) {
			$return = 'This is checkout page';
		} elseif (\XLite::getController() instanceof \XLite\Controller\Customer\Main) {
			$return = 'This is home page';
		} elseif (\XLite::getController() instanceof \XLite\Controller\Customer\Category) {
			$return = 'This is a category page';
		}

		return $return;
	}
}
```

Let us have a closer look at this class implementation:

1.  `@ListChild` directive says that our widget will be displayed right after `</head>` tag: 

    ```php
    /**
     * @ListChild (list="body", weight="1", zone="customer")
     */
    ```

2.  `getDefaultTemplate()` method defines that our viewer class will use `<X-Cart>/skins/customer/modules/Tony/ControllerDetectionDemo/text.twig` (`<X-Cart>/skins/default/en/modules/Tony/ControllerDetectionDemo/text.tpl` in X-Cart 5.2.x) template in order to output the result:

    <div class="ui top attached tabular menu">
        <a class='item' data-tab='tab-1'>5.2.x and earlier</a>
        <a class='item active' data-tab='tab-2'>5.3.x</a>
    </div>
    <div data-tab="tab-1" class="ui bottom attached tab segment" markdown="1">
    ```php
	public function getDefaultTemplate() 
	{
		return 'modules/Tony/ControllerDetectionDemo/text.tpl';
	}
    ```
    </div>
    <div data-tab="tab-2" class="ui bottom attached active tab segment" markdown="1">
    ```php
    public function getDefaultTemplate() 
    {
        return 'modules/Tony/ControllerDetectionDemo/text.twig';
    }
    ```
    </div>

3.  `getAllowedTargets()` method tells X-Cart that this widget must be displayed on home, category and checkout pages only:

    ```php
    	public static function getAllowedTargets() 
    	{
    		$list = parent::getAllowedTargets();

    		$list[] = 'checkout'; // checkout page
    		$list[] = 'main'; // home page
    		$list[] = 'category'; // category page

    		return $list;
    	}
    ```

4.  `getOurText()` method defines the message that will be shown to a customer: 

    ```php
    	public function getOurText()
    	{
    		$return = 'no text';

    		if (\XLite::getController() instanceof \XLite\Controller\Customer\Checkout) {
    			$return = 'This is checkout page';
    		} elseif (\XLite::getController() instanceof \XLite\Controller\Customer\Main) {
    			$return = 'This is home page';
    		} elseif (\XLite::getController() instanceof \XLite\Controller\Customer\Category) {
    			$return = 'This is a category page';
    		}

    		return $return;
    	}
    ```

    As you can see, we analyze the **controller** that is fetched by calling `\XLite::getController()` method.

Now, it is time to create a template defined in the `getDefaultTemplate()` method. We create the `<X-Cart>/skins/customer/modules/Tony/ControllerDetectionDemo/text.twig` (`<X-Cart>/skins/default/en/modules/Tony/ControllerDetectionDemo/text.tpl` in X-Cart 5.2) template with the following content: 

<div class="ui top attached tabular menu">
    <a class='item' data-tab='tab-3'>5.2.x and earlier</a>
    <a class='item active' data-tab='tab-4'>5.3.x</a>
</div>
<div data-tab="tab-3" class="ui bottom attached tab segment" markdown="1">
```php
<div>{getOurText()}</div>
```
</div>
<div data-tab="tab-4" class="ui bottom attached active tab segment" markdown="1">
```php
<div>{{ this.getOurText() }}</div>
```
</div>

We call our `getOurText()` method that will analyze current controller class and define a message for a customer.

_Note: we could have also checked the current page by analyzing **target** parameter of `{% link "\XLite\Core\Request" ref_pvZ8nad3 %}` object._

Now, we need to re-deploy the store and check the results in customer store-front. You should see messages similar to:![]({{site.baseurl}}/attachments/524292/8356147.png)

## Module pack

You can download this module pack from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-ControllerDetectionDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-ControllerDetectionDemo-v5_1_0.tar)
