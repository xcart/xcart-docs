---
title: Shipping modifications
lang: en
layout: article_with_sidebar
updated_at: 2016-06-17 00:00
identifier: ref_TVWpzWfL
categories:
- Developer docs
- Demo module
order: 100
---

## Introduction

This article describes the process of creating a simple shipping method. In our module, we will create a new shipping carrier – **My Processor** – that will have one shipping method – **My Shipping Method** –  that has a flat rate of **$10**.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Checking the results](#checking-the-results)
*   [Module pack](#module-pack)

## Implementation

We start by {% link "creating an empty module" ref_G2mlgckf %} with the developer ID **XCExample** and the module ID **ShippingDemo**. Then, we create the file
`<X-Cart>/classes/XLite/Module/XCExample/ShippingDemo/Model/Shipping/Processor/MyProcessor.php`: 

```php
<?php

namespace XLite\Module\XCExample\ShippingDemo\Model\Shipping\Processor;

class MyProcessor extends \XLite\Model\Shipping\Processor\AProcessor
{
   /**
    * Returns processor Id
    *
    * @return string
    */
   public function getProcessorId()
   {
       return 'MyProcessor';
   }

   /**
    * Returns url for sign up
    *
    * @return string
    */
   public function getSettingsURL()
   {
       return \XLite\Module\XCExample\ShippingDemo\Main::getSettingsForm();
   }

   /**
    * Returns processor name
    *
    * @return string
    */
   public function getProcessorName()
   {
       return 'My Processor';
   }

   public function getRates($data, $ignoreCache)
   {
       $rates = array();

       $rate = new \XLite\Model\Shipping\Rate();
       $rate->setMethod($this->getShippingMethod());
       $rate->setBaseRate(10.00);

       $rates[] = $rate;

       return $rates;
   }

   protected function getShippingMethod()
   {
       return \XLite\Core\Database::getRepo('\XLite\Model\Shipping\Method')->findOneBy([
           'processor' => $this->getProcessorId(),
           'carrier'   => $this->getProcessorId()
       ]);
   }
}
```

This is the simplest implementation of a shipping processor class. We extend the class \XLite\Model\Shipping\Processor\AProcessor as every shipping processor must do it. In our class, we must have getProcessorName(), getProcessorId() and getRates().

*   First, we define `$getProcessorId` property as MyProcessor;
*   `getProcessorName()` method must return a string that will identify this shipping carrier in the admin area. In our case, it will look as follows:
    ![]({{site.baseurl}}/attachments/8225333/9633889.png?effects=drop-shadow)
*   `getRates()` method is the most important one – this method returns an array of `\XLite\Model\Shipping\Rate` object, and each of them represents a shipping option at checkout. Each shipping rate must contain a link to `\XLite\Model\Shipping\Method` object and a rate value. In our module, we will have **My Shipping Method** shipping method (it will be created a bit later), and this shipping method can be found via `getShippingMethod()` method in this class: 

```php
protected function getShippingMethod()
{
   return \XLite\Core\Database::getRepo('\XLite\Model\Shipping\Method')->findOneBy([
       'processor' => $this->getProcessorId(),
       'carrier'   => $this->getProcessorId()
   ]);
}
```

Let us have a closer look at the method `getRates()`. First, we create an empty shipping rate object: 

```php
$rate = new \XLite\Model\Shipping\Rate();
```

then, we assign a shipping method to it: 

```php
$rate->setMethod($this->getShippingMethod());
```

and finally assign a shipping rate to it: 

```php
$rate->setBaseRate(10.00);
```

After that, we want to have this shipping rate object as an element of an array and return this array from the `getRates()` method.

Of course, your `getRates()` method can be far more complex and return dynamically generated rates. Flat $10 rate is just for a demo.

We are almost done with the mod. We only need to create a shipping method in the database and then register our shipping processor – the `<X-Cart>/classes/XLite/Module/XCExample/ShippingDemo/Model/Shipping/Processor/MyProcessor.php` class – in the system.

Creating a shipping method is as easy as creating a YAML file. We create `<X-Cart>/classes/XLite/Module/XCExample/ShippingDemo/install.yaml` with the following content: 

```php
XLite\Model\Shipping\Method:
 - processor: MyProcessor
   carrier: ''
   code: ''
   enabled: false
   added: false
   position: 0
   moduleName: XCExample_ShippingDemo
   translations:
     - code: en
       name: "My Shipping Method(parent)"
 - processor: MyProcessor
   carrier: MyProcessor
   code: 'MY_CODE'
   enabled: true
   added: false
   position: 0
   translations:
     - code: en
       name: "My Shipping Method"
```

We add records to the shipping methods repository about the new shipping methods with the names **My Shipping Method** and **My Shipping Method(parent)**.

The first method is a parent method; its name **My Shipping Method(parent) **will be used as the name of the method in the admin area of the site. The second method is a child method, its name will be visible to customers.. It is **enabled** and has **carrier** field as **M****yProcessor** and **processor** field as **MyProcessor**.

_Note: if you have already activated the module, do not forget to {% link "push this install.yaml" ref_HvrXVNvJ#X-CartSDK-LoadingYAMLfile %} to the database._

Then, we need to create the file XLite/Module/XCExample/ShippingDemo/Controller/Admin/MyProcessor.php

```php
class MyProcessor extends \XLite\Controller\Admin\ShippingSettings
{
   /**
    * Get shipping processor
    *
    * @return \XLite\Model\Shipping\Processor\AProcessor
    */
   protected function getProcessor()
   {
       return new ();
   }
}
```

The method **getProcessor()** returns a new instance of the class \XLite\Module\XCExample\ShippingDemo\Model\Shipping\Processor\MyProcessor.

It is needed to activate the method.

Finally, we need to register our shipping processor in the system. For that purpose, we go to the `<X-Cart>/classes/XLite/Module/XCExample/ShippingDemo/Main.php` file and add the following method there: 

```php
   public static function init()
{
   parent::init();

   \XLite\Model\Shipping::getInstance()->registerProcessor(
       '\XLite\Module\XCExample\ShippingDemo\Model\Shipping\Processor\MyProcessor'
   );
}
```

**`\XLite\Module\XCExample\ShippingDemo\Model\Shipping\Processor\MyProcessor`** is the name of our shipping processor class.

## Checking the results

Now our module is ready and we need to re-deploy the store. Once this process is completed, we need to go to the **Store setup** > **Shipping** section in the admin area.

There we need to add new shipping method:

![]({{site.baseurl}}/attachments/8225333/9633890.png?effects=drop-shadow)

And activate it:

![]({{site.baseurl}}/attachments/8225333/9633889.png?effects=drop-shadow)

If everything is fine, you can see it on the list:

![]({{site.baseurl}}/attachments/8225333/9633892.png?effects=drop-shadow)

Then go to customer area, add some product to a cart and proceed to checkout. You should be able to see our shipping method there:

![]({{site.baseurl}}/attachments/8225333/9633893.png?effects=drop-shadow)

## Module pack

You can download this module example from here: [XCExample-ShippingDemo-v5_2_0.tar](attachments/8225333/9633894.tar)

## Attachments:

* [my-processor.png]({{site.baseurl}}/attachments/8225333/8356175.png) (image/png)
* [my-processor-methods.png]({{site.baseurl}}/attachments/8225333/8356176.png) (image/png)
* [my-shipping-method.png]({{site.baseurl}}/attachments/8225333/8356177.png) (image/png)
* [image03.png]({{site.baseurl}}/attachments/8225333/9633891.png) (image/png)
* [image01.png]({{site.baseurl}}/attachments/8225333/9633890.png) (image/png)
* [image03.png]({{site.baseurl}}/attachments/8225333/9633889.png) (image/png)
* [image02.png]({{site.baseurl}}/attachments/8225333/9633892.png) (image/png)
* [image00.png]({{site.baseurl}}/attachments/8225333/9633893.png) (image/png)
* [XCExample-ShippingDemo-v5_2_0.tar]({{site.baseurl}}/attachments/8225333/9633894.tar) (application/x-tar)
