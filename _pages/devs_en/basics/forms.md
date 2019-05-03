---
lang: en
layout: article_with_sidebar
updated_at: '2018-05-22 14:48 +0400'
identifier: ref_3MQlKQPZ
title: Creating form
order: 100
published: true
---
## Introduction

This article illustrates how you can add forms to X-Cart page: a form where user can specify some information and submit it to the store. Then, X-Cart will run {% link "controller of the page" ref_hkVaxgds %} and do something with this information.

For the sake of example, we will create a module that will add a form with one field. When this form is submitted, the message from the field will be displayed in top message.

{% toc Table of Contents %}

## Preparation: creating module and page

We start off with {% link "creating a module" ref_G2mlgckf %} with developer ID **XCExample** and module ID **FormDemo**. Then, we {% link "create page" ref_0VgqyxB8 %} `admin.php?target=example_form_demo`. For that we create:
1. Controller class `\XLite\Module\XCExample\FormDemo\Controller\Admin\ExampleFormDemo` with the following content:

	```php
    <?php

	namespace XLite\Module\XCExample\FormDemo\Controller\Admin;

	/**
	 * ExampleFormDemo
	 */
	class ExampleFormDemo extends \XLite\Controller\Admin\AAdmin
	{     
	}
    ```
    
2. Page viewer class `\XLite\Module\XCExample\FormDemo\View\Page\ExampleFormDemo` with the following content:
	```php
	<?php

	namespace XLite\Module\XCExample\FormDemo\View\Page\Admin;

	/**
	 * ExampleFormDemoPage
	 *
	 * @ListChild (list="admin.center", zone="admin")
	 */
	class ExampleFormDemo extends \XLite\View\AView
	{
        
    	/**
	     * Return list of allowed targets
    	 */
	    public static function getAllowedTargets()
    	{
        	return array_merge(parent::getAllowedTargets(), array('example_form_demo'));
	    }
      
    	/**
	     * Return widget default template
    	 */
	    public function getDefaultTemplate()
    	{
        	return 'modules/XCExample/FormDemo/page/example_form_demo/body.twig';
	    }
	}
    ```
3. Empty page template `skins/admin/modules/XCExample/FormDemo/page/example_form_demo/body.twig`.

## Creating form
To create form widget, we create `\XLite\Module\XCExample\FormDemo\View\Model\FormDemo` class with the following content:

```php
<?php

namespace XLite\Module\XCExample\FormDemo\View\Model;

class FormDemo extends \XLite\View\Model\AModel
{
    protected $schemaDefault = [
        'message' => [
            self::SCHEMA_CLASS      => 'XLite\View\FormField\Textarea\Simple',
            self::SCHEMA_LABEL      => 'Message',
            self::SCHEMA_REQUIRED   => true,            
        ],
    ];

    protected function getDefaultModelObject()
    {
        return null;
    }

    protected function getFormClass()
    {
        return 'XLite\Module\XCExample\FormDemo\View\Form\FormDemo';
    }
}
```

This class is very similar to one we create for {% link "entity editing form" ref_LanG54L9 %}.

1. Our class extends `\XLite\View\Model\AModel` class and we have to implement two required methods `getDefaultModelObject()` and `getFormClass()` in it:

	```php
    class FormDemo extends \XLite\View\Model\AModel
    ```
    
2. We list fields to be displayed in `$schemaDefault` variable.

	```php
    protected $schemaDefault = [
        'message' => [
            self::SCHEMA_CLASS      => 'XLite\View\FormField\Textarea\Simple',
            self::SCHEMA_LABEL      => 'Message',
            self::SCHEMA_REQUIRED   => true,            
        ],
    ];    
    ```
    
    'message' is the name of the field and once we submit the form, we can access value of this field as `\XLite\Core\Request::getInstance()->message`;
    `self::SCHEMA_CLASS` parameter defines what {% link "form field class" ref_SlIeQwQo %} will be used for displaying this field;
    `self::SCHEMA_LABEL` parameter defines what label will be next to the field;
    `self::SCHEMA_REQUIRED` boolean flag defines whether this field must be filled in or it is optional. 
3. `getDefaultModelObject()` method usually defines what object we are currently editing. But since we are not going to edit any object, but merely submit a request, this method returns `null`.
4. `getFormClass()` method returns a class that defines `<form>` tag, our form will be wrapped into. We need to create this class as it does not exist yet, so we create `\XLite\Module\XCExample\FormDemo\View\Form\FormDemo` class with the following content:

	```php
	<?php

	namespace XLite\Module\XCExample\FormDemo\View\Form;

	class FormDemo extends \XLite\View\Form\AForm
	{
    	protected function getDefaultTarget()
	    {
    	    return 'example_form_demo';
	    }

    	protected function getDefaultAction()
	    {
    	    return 'send';
	    }
	}    
    ```
    
    Such implementation means that our `<form>` tag will have following fields:
    
    ```html
      <input type="hidden" name="target" value="example_form_demo">
      <input type="hidden" name="action" value="send">
	```
    
    and they will submit a form to `admin.php?target=example_form_demo` URL with 'action' parameter as 'send'.

That is it with the form widget. Now, we should add it to the page, so we edit the `skins/admin/modules/XCExample/FormDemo/page/example_form_demo/body.twig` template and put the following code there:

```php
{{ widget('\\XLite\\Module\\XCExample\\FormDemo\\View\\Model\\FormDemo') }}
```

If you open `admin.php?target=example_form_demo` page, you will see the form that can be submitted, but X-Cart will not handle such request at all. The next step is to add a handler of such request.

{% note info %}
If you create a form in the customer area, you will not have Submit button beneath the fields.
In order to add one, you need to add the following method to the form's class:

```php
    protected function getFormButtons()
    {
        $result = parent::getFormButtons();

        $result['submit'] = new \XLite\View\Button\Submit(
            [
                \XLite\View\Button\AButton::PARAM_LABEL    => 'Submit',
                \XLite\View\Button\AButton::PARAM_BTN_TYPE => 'btn  regular-main-button  submit',
            ]
        );

        return $result;
    }
```

Here are few details:
- `\XLite\View\Button\AButton::PARAM_LABEL    => 'Submit'`. This piece of code defines the wording on the button. Put your own phrase instead of 'Submit', if you want to change it;
- `\XLite\View\Button\AButton::PARAM_BTN_TYPE => 'btn  regular-main-button  submit'`. This piece of code defines CSS classes assigned to the button.
{% endnote %}

## Adjusting controller

Let us set up X-Cart in a way that once we submit our form, the message from the form would be displayed at the top.

For that we add the following method to our `\XLite\Module\XCExample\FormDemo\Controller\Admin\ExampleFormDemo` controller class:

```php
    public function doActionSend()
    {
        $message = \XLite\Core\Request::getInstance()->message;

        if ($message) {
            \XLite\Core\TopMessage::getInstance()->add($message);
        }

        $this->setReturnURL(
            $this->buildURL('example_form_demo', '', array())
        );
    }
```

Such code means that if {% link "we submit request" ref_hkVaxgds %} with 'action=send' parameter and there is also 'message' parameter, we define top message as this message and redirect user back to `admin.php?target=example_form_demo` page.

Here is how it is going to look like:
![top-message-example.png]({{site.baseurl}}/attachments/ref_3MQlKQPZ/top-message-example.png)

## Module page

You can download this module example from here: <https://www.dropbox.com/s/js83vad6tblxxpn/XCExample-FormDemo-v5_3_0.tar>
