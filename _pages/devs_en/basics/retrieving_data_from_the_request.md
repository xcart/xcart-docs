---
lang: en
layout: article_with_sidebar
updated_at: '2014-11-25 00:00'
title: Accessing request data
identifier: ref_pvZ8nad3
categories:
  - Developer docs
  - Demo module
published: true
order: 100
---
## Introduction

This article teaches X-Cart developers how to retrive data from requests to X-Cart. For the sake of example, we will create a mod that will work as follows:

1.  There will be a page that can be accessed as `cart.php?target=example_request_demo`. Here is an article that explains how to {% link "create a page in X-Cart" ref_0VgqyxB8 %}.
2.  You can call this page as 'cart.php?target=example_request_demo&**param**=foo&**param2**=bar' and this page will display values of these parameters as follows:![]({{site.baseurl}}/attachments/524294/8355983.png)

{% toc Table of Contents %}

## Implementation

1.  We {% link "create a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **RequestDemo**.
2.  We {% link "create a page" ref_0VgqyxB8 %} with **target=example_request_demo** customer area. Eventually, we will have three files in the module:
    - `classes/XLite/Module/XCExample/RequestDemo/Controller/Customer/ExampleRequestDemo.php` with the following content:
    ```php
    <?php
	// vim: set ts=4 sw=4 sts=4 et:

	namespace XLite\Module\XCExample\RequestDemo\Controller\Customer;

	class ExampleRequestDemo extends \XLite\Controller\Customer\ACustomer
	{
	}
    ```
    - `classes/XLite/Module/XCExample/RequestDemo/View/Page/Customer/ExampleRequestDemo.php` with the following content:
    ```php
    <?php
	// vim: set ts=4 sw=4 sts=4 et:

	namespace XLite\Module\XCExample\RequestDemo\View\Page\Customer;

	/**
	 * @ListChild (list="center")
	 */
	class ExampleRequestDemo extends \XLite\View\AView
	{
    	/**
	     * Return list of allowed targets
    	 *
	     * @return array
    	 */
	    public static function getAllowedTargets()
    	{
        	return array_merge(parent::getAllowedTargets(), array('example_request_demo'));
	    }

    	/**
	     * Return widget default template
    	 *
	     * @return string
    	 */
	    protected function getDefaultTemplate()
    	{
        	return 'modules/XCExample/RequestDemo/page/example-request-demo/body.twig';
	    }
	}
    ```
    - empty `skins/customer/modules/XCExample/RequestDemo/page/example-request-demo/body.twig` template.
    
3.  We define the template's content as follows: 
    ```php
    <div>
    Param: {{ this.getParamValue() }} <br />
    Param2: {{ this.getParam2Value() }}
    </div>
    ```

4.  Now we need to define two methods: `getParamValue()` and `getParam2Value()` in the viewer class (`\XLite\Module\XCExample\RequestDemo\View\Page\Customer\ExampleRequestDemo`), so that the template could use them.
5.  We edit the `classes/XLite/Module/XCExample/RequestDemo/View/Page/Customer/ExampleRequestDemo.php` file and define a new `getParamValue()` method there as follows: 

    ```php
        public function getParamValue()
        {
            return \XLite\Core\Request::getInstance()->param;
        }
    ```

    This is how easy you can pull the parameter's value from the HTTP request. Note that, we access POST and GET parameters all the same.

6.  We define the `getParam2Value()` method in the same file as follows: 

    ```php
        public function getParam2Value()
        {
            $return = '';
            
            if (isset($_GET['param2'])) {
                $return = $_GET['param2'];
            }
            
            return $return;
        }
    ```

    As you can see, X-Cart allows to access `$_GET` array directly (as well as `$_POST`), but in this case you need to handle errors manually.

7.  Save the results and check the store. Call the `cart.php?target=tony&param=foo&param2=bar` script and you will see the following result:![]({{site.baseurl}}/attachments/524294/8355983.png)

## Module pack

You can download this module sample from here: <https://www.dropbox.com/s/e123t5ijl00x4c9/XCExample-RequestDemo-v5_3_0.tar>