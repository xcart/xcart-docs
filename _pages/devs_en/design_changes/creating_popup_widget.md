---
title: Creating popup widget
identifier: ref_qfTBsVxe
updated_at: 2015-07-02 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes how developers can create a popup widget in X-Cart. For instance, we want our custom page in customer area to have a button that shows popup window with some information. This guide explains how to achieve this task. We'll be trying to create a simple overview of shopping cart:

![]({{site.baseurl}}/attachments/8750139/8718767.png)

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Some necessary preparations](#some-necessary-preparations)
*   [Implementation](#implementation)
    *   [Creating popup button](#creating-popup-button)
    *   [Defining popup widget](#defining-popup-widget)
    *   [Inserting popup widget button on the page](#inserting-popup-widget-button-on-the-page)
*   [Module example](#module-example)

## Some necessary preparations

First of all, you should have your custom module. We are {% link "creating a new module" ref_G2mlgckf %} with developer ID **Tony** and module ID **PopupDemo**.
Secondly, we'll create a {% link "custom page" ref_0VgqyxB8 %} to have our popup button. This page will be available at `cart.php?target=tony_custom` address.

## Implementation

Through this course we will define our custom button, which will be used to open popup window, popup content itself (let's call it a **widget**) and some miscellaneous scripts to make button and window operate together.

### Creating popup button

X-Cart has `\XLite\View\Button\APopupButton` class, which defines popup button. In order to use it, you should extend it with your custom button class (this thing is thoroughly explained in {% link "Working with viewer classes" ref_6dMJsZ63 %}). To do this, we are creating a file `<X-Cart>/classes/XLite/Module/Tony/PopupDemo/View/Button/DemoPopupButton.php` with the following content:

```php
<?php
namespace XLite\Module\Tony\PopupDemo\View\Button;
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
        $list[] = 'modules/Tony/PopupDemo/page/tony_custom/popup_button.js';
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
            'target'       => 'tony_custom',
            'widget'       => '\XLite\Module\Tony\PopupDemo\View\DemoWidget',
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

By extending, we set some parameters, which will be used to get access to our popup widget. Let's walk through each method in order to understand these parameters:

*   `public function getJSFiles()` - defines additional js-script file `modules/Tony/PopupDemo/page/tony_custom/popup_button.js,` used by this popup widget (we will create it later);

*   `protected function prepareURLParams()` - defines which widget will be shown in popup window; **target** parameter defines target of link, whereas **widget** parameter specifies appropriate viewer class to load.

*   `protected function getClass()` - simply sets css class to differ that button from others.

Apart from viewer class we should create an additional script in `<X-Cart>/modules/Tony/PopupDemo/page/tony_custom/popup_button.js` file with the following content:

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

This script describes JavaScript controller for our button and we aren't doing much work here, just extending the X-Cart `PopupButton`. Let's walk through each line of its code:

1.  `function DemoPopupButton()` - this function is a constructor and we must call parent constructor here. Also, we could've added some preprocessing here, if needed;

2.  `extend(DemoPopupButton, PopupButton)` -by calling **extend** core function, we are extending parent **PopupButton** class to get its features;

3.  `DemoPopupButton.prototype.pattern `is used to differ aforesaid button from others while working with microhandlers;

4.  `DemoPopupButton.prototype.callback `is called when the popup widget is opened; you can autoload some child widgets here, if needed;

5.  `core.autoload(DemoPopupButton) `runs controller initialization after document.ready event.

### Defining popup widget

Another viewer class that we should create is the popup widget. This class will define the content of our popup window. Please note that you can use potentially any viewer class as popup widget, but for instance we will create it from scratch. Our viewer class will be a mini-overview of a current cart, similar to **Minicart** core widget, done by writing the following code in <`X-Cart>/skins/default/en/classes/XLite/Module/Tony/PopupDemo/View/DemoWidget.php` file:

```php
<?php
namespace XLite\Module\Tony\PopupDemo\View;
/**
 * Demo loadable widget
 */
class DemoWidget extends \XLite\View\AView
{
    public static function getAllowedTargets()
    {
        return array_merge(parent::getAllowedTargets(), array('tony_custom'));
    }

    protected function getDefaultTemplate()
    {
        return 'modules/Tony/PopupDemo/page/tony_custom/demo_widget.tpl';
    }

    protected function getCartQuantity() {
        return \XLite\Model\Cart::getInstance()->countQuantity();
    }
    protected function getDisplaySubtotal() {
        return \XLite\Model\Cart::getInstance()->getDisplaySubtotal();
    }
    protected function getCurrency() {
        return \XLite\Model\Cart::getInstance()->getCurrency();
    }

    /**
     * Check if items are present
     *
     * @return boolean
     */
    protected function hasItems()
    {
        return (bool) \XLite\Model\Cart::getInstance()->countItems();
    }

    /**
     * Return up to 5 items from cart
     *
     * @return array
     */
    protected function getItemsList()
    {
        return array_slice(
            \XLite\Model\Cart::getInstance()->getItems()->toArray(),
            0,
            min(5, \XLite\Model\Cart::getInstance()->countItems())
        );
    }
}
```

Let's get quick overview of methods, featuring this viewer class (more about this in {% link "Working with viewer classes" ref_6dMJsZ63 %}):

*   function `getAllowedTargets()` defines available targets allowed for this widget;

*   function `getDefaultTemplate()` defines what template is responsible for display of our custom code;

*   functions `getCartQuantity()`, `getDisplaySubtotal()`, `getCurrency()` are used to get different parameters of the shopping cart to show it on the page;
*   function `hasItems()` is used to check if cart has any items;
*   function `getItemsList()` retrieves first five items from the cart.

 Now we need to create a template defined in the `getDefaultTemplate()` method. We are creating `<X-Cart>/skins/default/en/modules/Tony/PopupDemo/page/tony_custom/demo_widget.tpl` template with the following content: 

```php
{* vim: set ts=2 sw=2 sts=2 et: *}
{**
 * Demo widget block
 *}
<div>
  <p class="title">
    <a href="{buildURL(#cart#)}">{t(#X items in bag#,_ARRAY_(#count#^getCartQuantity()))}</a>
  </p>
  <ul IF="hasItems()">
    <li FOREACH="getItemsList(),item">
      <span><a href="{item.getURL()}">{item.getName()}</a></span>
    </li>
  </ul>
  <p class="subtotal">
    <strong>{t(#Subtotal#)}:</strong>
    <span>{formatPrice(getDisplaySubtotal(),getCurrency(),1)}</span>
  </p>
</div>
```

This template uses several {% link "Flexy" ref_VcuME8xW %} features to show cart quantity, unordered list of items in the cart and subtotal in user currency. 

This is basically everything that we need to make a simple popup widget. We're only step away from finishing our work.

### Inserting popup widget button on the page

To use newly-created widget, we should add the following code on target page template:

```php
<widget class="\XLite\Module\Tony\PopupDemo\View\Button\DemoPopupButton" label="Demo popup!" />
```

The **class** parameter defines a viewer class to use as a widget (it is our popup button), and the **label** parameter is the text on the button. After doing this, we have to re-deploy the store with our module **PopupDemo** set as enabled and once the process is finished, we should add some items to the cart and go to the `cart.php?target=tony_custom` page. As a result, we should be able to see a page, similar to the picture in the **Introduction** section.

## Module example

You can download this module example from here: [Tony-PopupDemo-v5.2.0.tar](attachments/8750139/8718768.tar)

## Attachments:

* [daemos xcart cart.php target tony_custom.png]({{site.baseurl}}/attachments/8750139/8718767.png) (image/png)
* [Tony-PopupDemo-v5.2.0.tar]({{site.baseurl}}/attachments/8750139/8718768.tar) (application/x-tar)