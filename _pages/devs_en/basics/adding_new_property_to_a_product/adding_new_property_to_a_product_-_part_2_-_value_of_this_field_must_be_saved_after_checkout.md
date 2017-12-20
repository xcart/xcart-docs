---
lang: en
layout: article_with_sidebar
updated_at: '2017-12-19 15:32 +0400'
title: Persisting product property in order item
identifier: ref_Rtu42BwL
order: 10
version: X-Cart 5.2.16 and earlier
categories:
  - Developer docs
  - Demo module
  - Outdated
published: true
---
## Introduction

This article is an addition to the article about {% link "adding new property to a product" ref_2bJSTtR3 %}. 

Imagine the situation that we want to add a property to a product and then display its value on the order details page. We can do that using the mod from the previous article. But if we change the property's value after some products already purchased, then all old orders will show new value. Instead we want to save the current value of our property in the order item and then show that saved value on the order page.

This article will illustrate how to approach this task.

{% toc Table of Contents %}

## Recreating original mod

We start by creating a module similar to one from {% link "the first article" ref_2bJSTtR3 %}. Essentially, you can use the module from the previous article and jump to **step 5** in the instruction below, where we define a template. The code of the template will be different.

1.  We create an empty module with developer ID **XCExample** and module ID **PersistentProductPropertyDemo**.
2.  We decorate the `\XLite\Model\Product` class and create the `classes/XLite/Module/XCExample/PersistentProductPropertyDemo/Model/Product.php` file with the following content: 

    ```php
	<?php
 
	namespace XLite\Module\XCExample\PersistentProductPropertyDemo\Model;
 
	abstract class Product extends \XLite\Model\Product implements \XLite\Base\IDecorator
	{
    	/**
	     * @Column (type="string")
    	 */
	    protected $myMessage;
 
    	public function getMyMessage()
	    {
    	    return $this->myMessage;
	    }
 
    	public function setMyMessage($value)
	    {
    	    $this->myMessage = $value;
        	return $this;
	    }
	}
    ```

    This code will add new field to a product class. The same as in the previous guide.

3.  We decorate the `\XLite\View\FormModel\Product\Info` class and create the `classes/XLite/Module/XCExample/ProductPropertyDemo/View/FormModel/Product/Info.php` file with the following content: 

    ```php
	<?php
	// vim: set ts=4 sw=4 sts=4 et:
 
	namespace XLite\Module\XCExample\PersistentProductPropertyDemo\View\FormModel\Product;
 
	/**
	 * Product form model
	 */
	abstract class Info extends \XLite\View\FormModel\Product\Info implements \XLite\Base\IDecorator
	{
    	protected function defineFields()
	    {
    	    $schema = parent::defineFields();
 
        	$schema['default']['myMessage'] = [
            	'label'     => static::t('My message'),
	            'position'  => 900,
    	    ];
 
        	return $schema;
	    }
 
	}
    ```

    This code will create a new field on product details page in admin area, where you can specify a value of the property for a product. The same as in the previous guide.

4.  We decorate `\XLite\Model\DTO\Product\Info` product DTO object and create the `classes/XLite/Module/XCExample/ProductPropertyDemo/Model/DTO/Product/Info.php` file with the following content: 

    ```php
	<?php
	// vim: set ts=4 sw=4 sts=4 et:
 
	namespace XLite\Module\XCExample\PersistentProductPropertyDemo\Model\DTO\Product;
 
	/**
	 * Abstract widget
	 */
	abstract class Info extends \XLite\Model\DTO\Product\Info implements \XLite\Base\IDecorator
	{
    	protected function init($object)
	    {
    	    parent::init($object);
 
        	$this->default->myMessage = $object->getMyMessage();
	    }
 
    	/**
	     * @param \XLite\Model\Product $object
    	 * @param array|null           $rawData
	     *
    	 * @return mixed
	     */
    	public function populateTo($object, $rawData = null)
	    {
    	    parent::populateTo($object, $rawData);
 
        	$object->setMyMessage((string) $this->default->myMessage);
	    }
	}    
    ```
    
    This class will allow product details page to save changed values for 'My message' field.
    
5. Now we need to display the value of 'My message' field on order details page in customer area. For that we create the `skins/customer/modules/XCExample/PersistentProductPropertyDemo/product/my_message.twig` with the following content:
	```twig
	{##
	 # @ListChild (list="invoice.item.name", weight="100")
	 #}
 
	{% if this.item.getProduct().getMyMessage() %}
	<li><strong>My message: {{ this.item.getProduct().getMyMessage() }}</strong></li>
	{% endif %}
    ```
    
To check the results, go to any product details page in admin area and define its 'My message' as 'Hello world!'. Then, go purchase this product alongside other product with empty 'My message'. You will see the following result on thank you page:
![thank-you-page.png]({{site.baseurl}}/attachments/ref_Rtu42BwL/thank-you-page.png)

If you change 'My message' in admin area, the order details page will show new 'My message', because we did not save its value at the moment of placing an order. The construction `this.item.getProduct().getMyMessage()` pulls the value right from the product object, so our task is to save 'My message' in order item and then adjust this construction to something like `this.item.getMyMessage()` so we would pull saved value.

## Changing order item class

Order item objects are defined by `\XLite\Model\OrderItem` class and we want to add new property `$myMessage` to it.

We {% link "decorate" ref_AF6bmvL6 %} the `\XLite\Model\OrderItem` class and create the `classes/XLite/Module/XCExample/PersistentProductPropertyDemo/Model/OrderItem.php` file with the following content: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\PersistentProductPropertyDemo\Model;

/**
 * Something customer can put into his cart
 */
abstract class OrderItem extends \XLite\Model\OrderItem implements \XLite\Base\IDecorator
{
    /**
     * @Column (type="string")
     */
    protected $myMessage;

    public function getMyMessage()
    {
        return $this->isOrderOpen() ? $this->getProduct()->getMyMessage() : $this->myMessage;
    }

    public function setMyMessage($value)
    {
        $this->myMessage = $value;
    }    

    public function renew()
    {
        $result = parent::renew();

        if ($result) {
            $this->setTestField($this->getProduct()->getMyMessage());
        }

        return $result;
    }

    protected function saveItemState(\XLite\Model\Base\IOrderItem $item)
    {
        parent::saveItemState($item);

        $this->myMessage = $item->getMyMessage();
    }

    protected function resetItemState()
    {
        parent::resetItemState();
        
        $this->myMessage = '';
    }

    protected function getDeletedProduct()
    {
        $dumpProduct = parent::getDeletedProduct();
        $dumpProduct->setMyMessage($this->getMyMessage());

        return $dumpProduct;
    }

}
```

Let us have a look at key points of this class implementation:

1. We create the `$myMessage` property with the same parameters as we did in the `\XLite\Model\Product` class: 

    ```php
        /**
         * @Column (type="string")
         */
        protected $myMessage;
    ```

2. `getMyMessage()` method returns the property from the product object if an order has not been placed yet: 

    ```php
    $this->getProduct()->getMyMessage()
    ```

    If the order is already placed, the value is returned as a `\XLite\Model\OrderItem` class' property: 

    ```php
    $this->myMessage
    ```
    
    `setMyMessage()` method is a simple setter method.

3.  `renew()` method is used when we want to pull info about product into order item, so we pull 'My message' from product's object.

	`saveItemState()` method is used when we want to populate an order item based on another one's data. In this case, we pull info from the order item provided.
    
    `resetItemState()` method is used when we want to clear info inside order item object. In this case, we just define 'My message' as empty string.

	`getDeletedProduct()` method is called when we have to use a product that has been already deleted. In this case, we build fake `\XLite\Model\Product` object based on the values saved in the `\XLite\Model\OrderItem` object and define 'My message' as a value saved in DB.

## Adjusting template

Having these changes applied, let us place another order with the product we defined 'My message' for. After we place an order, it will look as follows:
![thank-you-page-2.png]({{site.baseurl}}/attachments/ref_Rtu42BwL/thank-you-page-2.png)

This looks the same as before. If we change the 'My message' in admin area, thank you page will show new value. But the key difference is that we saved 'My message' field in order item and now we can call for it in the template. 

Define content of `skins/customer/modules/XCExample/PersistentProductPropertyDemo/product/my_message.twig` as follows:

```twig
{##
 # @ListChild (list="invoice.item.name", weight="100")
 #}
 
{% if this.item.getMyMessage() %}
<li><strong>My message: {{ this.item.getMyMessage() }}</strong></li>
{% endif %}
```

Essentially, we are replacing `this.item.getProduct().getMyMessage()` construction with the `this.item.getMyMessage()` one and it means that we are now using `getMyMessage()` of order item object, not product's. This way we will display saved value.

{% note %}
This mod does not display the property on invoice page in admin area and in email notifications. To get the idea of how to enhance this mod and show the value in admin area, please check the {% link "Adding product images to order notifications guide" ref_Qn8aa4z4 %} guide.
{% endnote %}

## Module pack

You can download the demo module from here: <https://www.dropbox.com/s/5bnng72s6r3lfn5/XCExample-PersistentProductPropertyDemo-v5_3_0.tar>
