---
lang: en
layout: article_with_sidebar
updated_at: '2015-07-02 00:00'
title: Creating popup widget
identifier: ref_qfTBsVxe
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article describes how to create a pop-up widget in X-Cart. For instance, we want to have a button that shows pop-up window with some information. For the sake of example, we will create a pop-up widget that displays content of the cart.

{% toc Table of Contents %}

## Preparations

We start with {% link "creating a new module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **PopupDemo**. Then, we create `cart.php?target=example_popup_demo` {% link "page in customer zone" ref_0VgqyxB8 %} to show our popup button. For that we create:

1. controller class `\XLite\Module\XCExample\PopupDemo\Controller\Customer\ExamplePopupDemo` with the following content:
	```php
	<?php

	namespace XLite\Module\XCExample\PopupDemo\Controller\Customer;

	class ExamplePopupDemo extends \XLite\Controller\Customer\ACustomer
	{}    
    ```
2. page viewer class `\XLite\Module\XCExample\PopupDemo\View\Page\Customer\ExamplePopupDemo` with the following content:
	```php
	<?php

	namespace XLite\Module\XCExample\PopupDemo\View\Page\Customer;

	/**
	 * @ListChild (list="center")
	 */

	class ExamplePopupDemo extends \XLite\View\AView
	{
    	public static function getAllowedTargets()
	    {
    	    return array_merge(parent::getAllowedTargets(), array('example_popup_demo'));
	    }

    	protected function getDefaultTemplate()
	    {
    	    return 'modules/XCExample/PopupDemo/page/example_popup_demo/body.twig';
	    }
	}    
    ```
3. empty page's template `skins/customer/modules/XCExample/PopupDemo/page/example_popup_demo/body.twig`

## Creating pop-up button

X-Cart has `\XLite\View\Button\APopupButton` class, which is an ancestor of all default pop-up buttons. We are going to extend this class and build our button on top of it, so we create `classes/XLite/Module/XCExample/PopupDemo/View/Button/DemoPopupButton.php` file with the following content:

```php
<?php

namespace XLite\Module\XCExample\PopupDemo\View\Button;

/**
 * Demo popup widget
 */
class DemoPopupButton extends \XLite\View\Button\APopupButton
{
    /**
     * getJSFiles
     *
     * @return array
     */
    public function getJSFiles()
    {
        $list = parent::getJSFiles();
        
        $list[] = 'modules/XCExample/PopupDemo/page/example_popup_demo/popup_button.js';

        return $list;
    }

    /**
     * Return URL parameters to use in AJAX popup
     *
     * @return array
     */
    protected function prepareURLParams()
    {
        return array(
            'target'       => 'example_popup_demo',
            'widget'       => '\XLite\Module\XCExample\PopupDemo\View\DemoWidget',
        );
    }

    /**
     * Return CSS classes
     *
     * @return string
     */
    protected function getClass()
    {
        return parent::getClass() . ' demo-popup';
    }

}
```

By extending default pop-up button class, we define some parameters unique to our widget. Let us walk through each method in order to understand these parameters:

* `getJSFiles()` method defines additional JS script file `modules/XCExample/PopupDemo/page/example_popup_demo/popup_button.js` that will be used by the widget (we will create this script later);
* `prepareURLParams()` method defines what widget will be shown in popup window. 
	- **target** parameter defines target of link of the button. This parameter does not really matter for us, because we will not use it anywhere, but we cannot ommit it.
    - **widget** parameter defines a class that will load inner part of the pop-up widget. We will create it a bit later;
* `getClass()` method defines CSS class of our button. We want to add `demo-popup` class to it in order to distinguish our button from others.

We also create aforementioned JS script `skins/customer/modules/XCExample/PopupDemo/page/example_popup_demo/popup_button.js` file with the following content:

```php
/**
 * Demo popup button controller
 */
function DemoPopupButton()
{
  DemoPopupButton.superclass.constructor.apply(this, arguments);
}

extend(DemoPopupButton, PopupButton);
DemoPopupButton.prototype.pattern = '.demo-popup';
DemoPopupButton.prototype.callback = function(selector)
{
  PopupButton.prototype.callback.apply(this, arguments);
  // You could add some inner widget autoloading here
}

core.autoload(DemoPopupButton);
```

This script describes JavaScript controller for our button and we do not do a lot here, just extending default `PopupButton` class. Let us walk through each line of its code:

1.  `DemoPopupButton()` function is a constructor of our button's controller, so we must call parent constructor here;
2.  `extend(DemoPopupButton, PopupButton);` piece is kind of the same as when we do `extends` in PHP. Essentially `DemoPopupButton` class extends default `PopupButton` one;
3.  `DemoPopupButton.prototype.pattern = '.demo-popup';` line specifies what HTML element, this controller will be tied to. In our case, it will be HTML element with `demo-popup` class;
4.  `DemoPopupButton.prototype.callback` function is called when the popup widget is opened. You can autoload some child widgets here, if needed;
5.  `core.autoload(DemoPopupButton)` function runs controller initialization after document.ready event.

## Creating pop-up widget

As we know from above, we also need a class that will define the inner part of pop-up widget. You can potentially use any viewer class as popup widget, but for the sake of example we will create it from scratch. Our viewer class will be an overview of the customer's cart, similar to mini-cart widget in top right corner of customer area. 

We create our viewer class by creating `classes/XLite/Module/XCExample/PopupDemo/View/DemoWidget.php` file with the following content:

```php
<?php

namespace XLite\Module\XCExample\PopupDemo\View;

class DemoWidget extends \XLite\View\AView
{
    public static function getAllowedTargets()
    {
        return array_merge(parent::getAllowedTargets(), array('example_popup_demo'));
    }

    protected function getDefaultTemplate()
    {
        return 'modules/XCExample/PopupDemo/page/example_popup_demo/demo_widget.twig';
    }

    protected function getCartQuantity()
    {
        return \XLite\Model\Cart::getInstance()->countQuantity();
    }

    protected function getDisplaySubtotal()
    {
        return \XLite\Model\Cart::getInstance()->getDisplaySubtotal();
    }

    protected function getCurrency()
    {
        return \XLite\Model\Cart::getInstance()->getCurrency();
    }

    protected function hasItems()
    {
        return (bool) \XLite\Model\Cart::getInstance()->countItems();
    }

    protected function getItems()
    {
        return array_slice(
            \XLite\Model\Cart::getInstance()->getItems()->toArray(),
            0,
            min(5, \XLite\Model\Cart::getInstance()->countItems())
        );
    }
}
```

Let us have a look at methods in this viewer class (more info about {% link "working with viewer classes" ref_6dMJsZ63 %}):

* `getAllowedTargets()` method defines targets where this viewer class will be displayed. In our case, we will display it only on `cart.php?target=example_popup_demo` page;
* `getDefaultTemplate()` method defines what template is responsible for displaying this widget;
* `getCartQuantity()`, `getDisplaySubtotal()`, `getCurrency()` methods are used to get info about the shopping cart (items quantity, cart's subtotal and current currency) in order to show it in the widget;
* `hasItems()` method is used to check whether cart has any items;
* `getItemsList()` method retrieves first five items from the cart.

Now we need to create a template defined in the `getDefaultTemplate()` method. We create `skins/customer/modules/XCExample/PopupDemo/page/example_popup_demo/demo_widget.twig` file with the following content: 

```twig
<div>
  <p class="title">
    <a href="{{ url('cart') }}">{{ t('X items in bag', {'count': this.getCartQuantity()} ) }}</a>
  </p>

  {% if this.hasItems() %}
  <ul>
    {% for item in this.getItems() %}
    <li>
      <span><a href="{{ item.getURL() }}">{{ item.getName() }}</a></span>
    </li>
    {% endfor %}
  </ul>
  {% endif %}

  <p class="subtotal">
    <strong>{{ t('Subtotal') }}:</strong>
    <span>{{ this.formatPrice(this.getDisplaySubtotal(), this.getCurrency(), 1) }}</span>
  </p>
</div>
```

This template has three parts:
1. Displaying number of items in cart:
	```twig
	  <p class="title">
    	<a href="{{ url('cart') }}">{{ t('X items in bag', {'count': this.getCartQuantity()} ) }}</a>
	  </p>    
    ```
2. Listing all items in cart:
	```twig
	  {% if this.hasItems() %}
	  <ul>
    	{% for item in this.getItems() %}
	    <li>
    	  <span><a href="{{ item.getURL() }}">{{ item.getName() }}</a> x {{ item.getAmount() }}</span>
	    </li>
    	{% endfor %}
	  </ul>
	  {% endif %}    
    ```
3. Showing cart's subtotal:
	```twig
	  <p class="subtotal">
    	<strong>{{ t('Subtotal') }}:</strong>
	    <span>{{ this.formatPrice(this.getDisplaySubtotal(), this.getCurrency(), 1) }}</span>
	  </p>    
    ```
    
## Inserting pop-up button on the page

Now we have our pop-up button (`\XLite\Module\XCExample\PopupDemo\View\Button\DemoPopupButton`) and it is set up to show pop-up widget (`\XLite\Module\XCExample\PopupDemo\View\DemoWidget`) once clicked. To complete the mod, we should just display this button on our page (`cart.php?target=example_popup_demo`).

For that we edit this page's template (`skins/customer/modules/XCExample/PopupDemo/page/example_popup_demo/body.twig`) and define its content as follows:

```twig
{{ widget('\\XLite\\Module\\XCExample\\PopupDemo\\View\\Button\\DemoPopupButton', label='Show cart\'s content') }}
```

The **label** parameter defines the text of the button.

After that, go to `cart.php?target=example_popup_demo` page and you should see the result as follows:

![example-popup-widget-button.png]({{site.baseurl}}/attachments/ref_qfTBsVxe/example-popup-widget-button.png)

When you click the button on the page, you will see a pop-up widget like this:

![pop-up-widget.png]({{site.baseurl}}/attachments/ref_qfTBsVxe/pop-up-widget.png)

## Module example

You can download this module's pack from here: <https://www.dropbox.com/s/vc78vrh56x336im/XCExample-PopupDemo-v5_3_0.tar>