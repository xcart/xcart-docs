---
lang: en
layout: article_with_sidebar
updated_at: '2016-08-17 00:00'
title: Session API
identifier: ref_PW2oOrvq
order: 45
categories:
  - Developer docs
  - Demo module
published: true
---
## Introduction

This guide gives an example how to work with sessions in X-Cart. X-Cart identifies a session data by a value stored in `xid` cookie – unless changed by {% link "decoration" ref_AF6bmvL6 %} of `\XLite\Core\Session` class.

For the sake of example, we will create a module with a page `cart.php?target=session_demo` and this page can be called with the `session_value` parameter. For the very first time this page will display the `Session value has not been specified yet` message and it will remain the same until the `session_value` parameter is passed. Once it is passed, the page will display the `Session value is: {session_value}` message. Even if you open this page without `session_value` parameter after that, the message `Session value is: {session_value}` message will be displayed with the latest `session_value` submitted.

{% toc Table of Contents %}

## Implementation

We start with {% link "creating an empty module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **SessionDemo**. Then we {% link "create a page" ref_0VgqyxB8 %} `cart.php?target=session_demo` in our module. For that we create:

* an empty controller class `\XLite\Module\XCExample\SessionDemo\Controller\Customer\SessionDemo`:

	```php
	<?php
	// vim: set ts=4 sw=4 sts=4 et:

	namespace XLite\Module\XCExample\SessionDemo\Controller\Customer;

	/**
	 * SessionDemo
	 */
	class SessionDemo extends \XLite\Controller\Customer\ACustomer
	{
	}    
    ```
    
* a page viewer class `\XLite\Module\XCExample\SessionDemo\View\Page\Customer\SessionDemo` with the following content: 

    ```php
	<?php
	// vim: set ts=4 sw=4 sts=4 et:

	namespace XLite\Module\XCExample\SessionDemo\View\Page\Customer;

	/**
	 * SessionDemoPage
	 *
	 * @ListChild (list="center", zone="customer")
	 */
	class SessionDemoPage extends \XLite\View\AView
	{
        
    	/**
	     * Return list of allowed targets
    	 */
	    public static function getAllowedTargets()
    	{
        	return array_merge(parent::getAllowedTargets(), array('session_demo'));
	    }
      
    	/**
	     * Return widget default template
    	 */
	    public function getDefaultTemplate()
    	{
        	return 'modules/XCExample/SessionDemo/page/session_demo/body.twig';
	    }
	}
    ```

* an empty page template `skins/customer/modules/XCExample/SessionDemo/page/session_demo/body.twig`.

If there is `session_value` parameter in {% link "request" ref_pvZ8nad3 %} to `cart.php?target=session_demo` page, we will save it to the session variable. To achieve that we are going to implement custom `handleRequest()` method in our {% link "controller class" ref_hkVaxgds %} `\XLite\Module\XCExample\SessionDemo\Controller\Customer\SessionDemo`: 

```php
    public function handleRequest()
    {
        $sessionValue = \XLite\Core\Request::getInstance()->session_value;

        if (!empty($sessionValue)) {
            \XLite\Core\Session::getInstance()->session_value = $sessionValue;
        }

        parent::handleRequest();
    }
```

The code that saves the `session_value` param into a session is `\XLite\Core\Session::getInstance()->session_value = $sessionValue;`. As you can see, saving variable into a session is as simple as assigning a value.

Now, we need to add a method to our controller that will fetch a value of this session variable. It will be as follows: 

```php
    public function getSessionValue() 
    {
        if (!empty(\XLite\Core\Session::getInstance()->session_value)) {
            return \XLite\Core\Session::getInstance()->session_value;
        }

        return null;
    }  
```

By default it returns an `null`, but if there is any value stored in the `session_value` session variable, then it will return this value.

The final version of `\XLite\Module\XCExample\SessionDemo\Controller\Customer\SessionDemo` class will be as follows: 

```php
<?php
// vim: set ts=4 sw=4 sts=4 et:

namespace XLite\Module\XCExample\SessionDemo\Controller\Customer;

/**
 * SessionDemo
 */
class SessionDemo extends \XLite\Controller\Customer\ACustomer
{
    public function handleRequest()
    {
        $sessionValue = \XLite\Core\Request::getInstance()->session_value;

        if (!empty($sessionValue)) {
            \XLite\Core\Session::getInstance()->session_value = $sessionValue;
        }

        parent::handleRequest();
    }

    public function getSessionValue() 
    {
        if (!empty(\XLite\Core\Session::getInstance()->session_value)) {
            return \XLite\Core\Session::getInstance()->session_value;
        }

        return null;
    }    
}
```

Now we need to define display of our page and the mod will be done. We go to the `skins/customer/modules/Tony/SessionDemo/page/session_demo/body.twig` template and define its content as follows: 

```twig
{% if this.getSessionValue() %}
Session value is: {{ this.getSessionValue() }}
{% else %}
Session value has not been specified yet
{% endif %}
```

If `getSessionValue()` returns non-empty value, we display the `Session value is: {session_value}` message, otherwise we display the message `Session value has not been specified yet`.

That is it. Now we can check the results. Go to your `cart.php?target=session_demo` page and you will see the message that session variable is not defined yet:
![no-session-variable.png]({{site.baseurl}}/attachments/ref_PW2oOrvq/no-session-variable.png)

Then, try to open this page as `cart.php?target=session_demo&session_value=foo` and you will see the following result:
![session-variable.png]({{site.baseurl}}/attachments/ref_PW2oOrvq/session-variable.png)

If you try to open the same page as `cart.php?target=session_demo` with session_value parameter, you will still see the result with session variable defined:
![session-variable.png]({{site.baseurl}}/attachments/ref_PW2oOrvq/session-variable.png)

If you want to see the initial message, you will have to clean up your cookies.

## Module example

This module pack can be downloaded from here: <https://www.dropbox.com/s/pia5t536s5nr7ib/XCExample-SessionDemo-v5_3_0.tar>