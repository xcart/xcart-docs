---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-28 00:01 +0400'
title: Step 4 - working with settings
identifier: ref_qFCH64Dt
order: 400
categories:
  - Developer docs
  - Demo module
  - Outdated
published: false
---

## Introduction

This article aims to teach developers how to create settings of their module and then use them in the code. This article assumes that you have already learnt three previous articles from **Getting started** section:

*   {% link "Step 1 - creating simplest module" ref_G2mlgckf %}
*   {% link "Step 2 - applying design changes" ref_E88KCMDD %}
*   {% link "Step 3 - applying logic changes" ref_AF6bmvL6 %}

For the sake of example, we will create a module that will have a textarea setting where you can put any HTML code and this HTML code will be added between `<head></head>` tags on each page in front-end. Also, this guide will contain code examples of how to create other setting types.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Creating module with settings](#creating-module-with-settings)
*   [Using setting values in the code](#using-setting-values-in-the-code)
*   [Module example](#module-example)
*   [Different setting types](#different-setting-types)
    *   [Textarea](#textarea)
    *   [Text string](#text-string)
    *   [Checkbox setting](#checkbox-setting)
    *   [Separator](#separator)
    *   [Complex setting](#complex-setting)

## Creating module with settings

1.  Create the module according to {% link "step 1" ref_G2mlgckf %} article. In my example, I am using developer ID as **Tony** and module ID as **SettingsDemo**.
2.  Put the following method into your `Main.php` file: 

    ```php
    public static function showSettingsForm() 
    {
        return true;
    }
    ```

    This method will tell X-Cart that it must show **Settings** link near the module in the **Extensions** > **Installed modules** section as follows: 
    ![]({{site.baseurl}}/attachments/8224795/8355862.png)

3.  Re-deploy your store and then enable this newly created module.

Now we need to create a textarea option, so it could accept the user-defined HTML code. For that:

1.  Create the `install.yaml` file in the root folder of your module. I am creating it in the `<X-Cart>/classes/XLite/Module/Tony/SettingsDemo/` folder.
2.  Put the following content there: 

    ```php
    XLite\Model\Config:
      - name: html_code
        category: Tony\SettingsDemo
        type: textarea
        orderby: 100
        value: ''
        translations:
          - code: en
            option_name: Put your HTML code here
            option_comment: I am comment to the option and I am here just for show that you can put some text into me
    ```

3.  Once it is done, push the changes to the database using {% link "load-yaml.php" ref_HvrXVNvJ#loading-yaml-file %} macros of X-Cart SDK. Since I am in the X-Cart's root folder (`<Web-Root>/next/src/`) in my console and my X-Cart SDK is located in the `<Web-Root>/next-sdk/`, I can do it using this command:

    ```php
    ../../next-sdk/devkit/macros/load-yaml.php classes/XLite/Module/Tony/SettingsDemo/install.yaml
    ```

4.  Go to the module settings and you will see the following page:
    ![]({{site.baseurl}}/attachments/8224795/8355863.png)
5.  Now you can put your own HTML code into this textarea field. X-Cart can save it, yet does not know how to use it.

## Using setting values in the code

1.  Create the viewer class in your module as per {% link "step 2" ref_E88KCMDD %} article. Since my developer ID is **Tony** and module ID is **SettingsDemo**, I am creating the `<X-Cart>/classes/XLite/Module/Tony/SettingsDemo/View/Header.php` file. You do not need to create .php file with Header name, it can be whatever you like, e.g. Code.php, HTML.php, etc.
2.  Put the following content into your viewer class: 

    ```php
    <?php
    namespace XLite\Module\Tony\SettingsDemo\View;
    /**
     * @ListChild (list="head")
     */

    class Header extends \XLite\View\AView
    {
    	protected function getDefaultTemplate() 
    	{
    		return 'modules/Tony/SettingsDemo/html_code.tpl';
    	}
    	public function getHtmlCode()
    	{
    		return \XLite\Core\Config::getInstance()->Tony->SettingsDemo->html_code;
    	}
    }
    ```

    _Note: if you are using your own developer and module IDs, you should change the namespace part of this PHP code to namespace `XLite\Module\<Your-Developer-ID>\<Your-Module-ID>\View`;_

    As you can see, we are calling value of our option in the `getHtmlCode()` method. 

3.  Now we need to create the template that was defined the `getDefaultTemplate()` method of the viewer class. Create the `<X-Cart>/skins/default/en/modules/Tony/SettingsDemo/html_code.tpl` file with the following content: 

    ```php
    {getHtmlCode():h}
    ```

    This code simply calls `getHtmlCode()` method of our viewer class and output its result **without** applying [htmlentites()](http://php.net/function.htmlentities.php) function to the result. If we omit **:h** modifier, then all special symbols like <, >, etc will be converted to HTML entities.

4.  Re-deploy the store and check the results. The HTML code specified in the setting field will be added to `<head></head>` section of all pages in store-front.
5.  _Note: you can ask why do we need specify HTML code, not pure JS or CSS one? The answer is: quite often web-services provide integration code like this _

    ```php
    <script type="text/javascript">var some_var="value";</script> 
    <script type="text/javascript" src="http://link.to/some/javascript/file.js"></script> 
    ```

    _and you cannot insert it into the web-page code using custom JS/CSS code fields from Theme Tweaker module. In this case, our module would work perfectly._

## Module example

The example of the module described above can be downloaded from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-SettingsDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-SettingsDemo-v5_1_0.tar)

## Different setting types

This section will give an overview of how you can set up different option types in your module settings.

### Textarea

This is a type of setting we have used in our module already. It will allow to create multi-line text form setting.

![]({{site.baseurl}}/attachments/8224795/8355869.png)

YAML code example:

**Textarea setting**
```php
  - name: textarea_variable
    category: Tony\SettingsDemo
    type: textarea
    orderby: 50
    value: 'Test message'
    translations:
      - code: en
        option_name: I am textarea setting
        option_comment: Description of textarea setting
```

Here is the list of parameters you can specify for it:

*   **name **defines the internal name of this option that will be used for accessing its value;
*   **category** defines what module this option belongs to. Eventually you will access this option value based on its name and category. In this particular case, you will access this setting value as `\XLite\Core\Config::getInstance()->Tony->SettingsDemo->textarea_variable`;
*   **type** defines that this option has **textarea **type;
*   **orderdby** defines the position of this option on the module settings page;
*   **value** defines the default value of this setting – in this case, it is empty;
*   **translations** section defines the name and comment of the setting in different languages;
*   **code** parameter defines what language we are defining translations for;
*   **option_name** defines the text seen on the left-hand side from the option value;
*   **option_comment** defines the text seen upon hovering the **?** mark near setting value.

These parameters are common for all setting types.

### Text string

This is a type of setting that will be represented as a single-line text field.

![]({{site.baseurl}}/attachments/8224795/8355870.png)

YAML code example:

**Text setting**
```php
  - name: text_variable
    category: Tony\SettingsDemo
    type: text
    orderby: 100
    value: 'Test value'
    translations:
      - code: en
        option_name: I am text setting
        option_comment: Description of text setting
```

Parameters are the same as for **Textarea** setting.

### Checkbox setting

This is a setting type that will be represented – obviously – as a checkbox.

![]({{site.baseurl}}/attachments/8224795/8355871.png)

YAML code example:

**Checkbox setting**
```php
  - name: checkbox_variable
    category: Tony\SettingsDemo
    type: checkbox
    orderby: 200
    value: N
    translations:
      - code: en
        option_name: I am checkbox
        option_comment: Checkbox description
```

Parameters are the same as for **Textarea** option.

### Separator

This is an element that is used on settings page in order to separate option groups.

![]({{site.baseurl}}/attachments/8224795/8355872.png)

YAML code example:

**Separator**
```php
  - name: separator_delimiter
    category: Tony\SettingsDemo
    type: separator
    orderby: 300
    translations:
      - code: en
        option_name: I am separator  
```

Parameters available are only **orderby** and **option_name** out of common ones (see **Textarea** parameters).

### Complex setting

Sometimes simple options – as shown above – are not enough for your task and you need to add select-box, multi-selector or field with JavaScript checking to your module's settings. In this case, you should use the approach described below.

For the sake of example, let us add a selectbox of timezone to our module.

![]({{site.baseurl}}/attachments/8224795/8355873.png)

YAML code example:

**Time zone selectbox**
```php
  - name: timezone_selectbox
    category: Tony\SettingsDemo
    type: \XLite\View\FormField\Select\TimeZone
    orderby: 400
    translations:
      - code: en
        option_name: I am timezone selectbox
        option_comment: Description of timezone selectbox
```

Parameters are almost common with only difference: you specify the class name in the **type** field. This class defines the representation of how exactly your setting should behave.

Another example is **Yes/No **selector:

![]({{site.baseurl}}/attachments/8224795/8355874.png)

```php
  - name: yesno_selectbox
    category: Tony\SettingsDemo
    type: \XLite\View\FormField\Select\YesNo
    orderby: 500
	value: N
    translations:
      - code: en
        option_name: I am Yes-No selectbox
        option_comment: Description of Yes-No selectbox
```

Again, parameters are the same, but you specify the class name in the **type** field.

You can use all classes from the `<X-Cart>/classes/XLite/View/FormField/` folder in your settings or {% link "create your own one" ref_fxJxv6rf %}.

## Attachments:

* [module-settings.png]({{site.baseurl}}/attachments/8224795/8355862.png) (image/png)
* [demo-settings-settings.png]({{site.baseurl}}/attachments/8224795/8355864.png) (image/png)
* [demo-settings-settings.png]({{site.baseurl}}/attachments/8224795/8355868.png) (image/png)
* [demo-settings-settings.png]({{site.baseurl}}/attachments/8224795/8355863.png) (image/png)
* [textarea-field-example.png]({{site.baseurl}}/attachments/8224795/8355869.png) (image/png)
* [text-setting-example.png]({{site.baseurl}}/attachments/8224795/8355870.png) (image/png)
* [checkbox-setting-example.png]({{site.baseurl}}/attachments/8224795/8355871.png) (image/png)
* [separator-setting-example.png]({{site.baseurl}}/attachments/8224795/8355872.png) (image/png)
* [timezone-setting-example.png]({{site.baseurl}}/attachments/8224795/8355873.png) (image/png)
* [yes-no-setting-example.png]({{site.baseurl}}/attachments/8224795/8355874.png) (image/png)
