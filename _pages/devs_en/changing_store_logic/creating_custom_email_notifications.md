---
title: Creating custom email notifications
identifier: ref_9bIzlU4u
updated_at: 2015-07-07 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.16 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article describes how developers can configure and send custom **email notifications**. Custom email notifications may be useful if you want to send messages after certain events. For instance, we want to be able to send notifications on behalf of the shop admin. This guide explains how to do it; it will also cover the topic of regiseting your custom notifications in the admin area.

## Table of contents

*   [Introduction](#introduction)
*   [Table of contents](#table-of-contents)
*   [Implementation](#implementation)
    *   [Creating the mailer method](#creating-the-mailer-method)
    *   [Designing the message template](#designing-the-message-template)
    *   [Registering the notification in the admin area](#registering-the-notification-in-the-admin-area)
*   [Module example](#module-example)

## Implementation

First of all, this task requires you to have a custom module. We'll {% link "create a new module" ref_G2mlgckf %} with the developer ID **Tony** and the module ID **EmailDemo**.
Besides, we'll create a {% link "custom page" ref_0VgqyxB8 %} in the admin area to test our notifications. Please note that this page is purely optional and will serve as an example of an action that triggers the notification. This page will be available at `cart.php?target=tony_custom_email` address.

### Creating the mailer method

X-Cart offers a convenient and expandable interface to send emails -`XLite\Core\Mailer` class. This class contains a lot of functions designed to build and send messages step by step. In order to use it, we decorate the class `XLite\Core\Mailer `and add a method to send our notification. We create a file `<X-Cart>/classes/XLite/Module/Tony/EmailDemo/Core/Mailer.php `with the following content: 

```php
<?php
namespace XLite\Module\Tony\EmailDemo\Core;
/**
 * Mailer
 */
abstract class Mailer extends \XLite\Core\Mailer implements \XLite\Base\IDecorator
{
    /**
     * Send custom email
     *
     * @param string $to   Email address to send custom email to
     * @param string $body Custom email body text OPTIONAL
     * @param bool $advanced_mode Use yaml-loaded templates OPTIONAL
     *
     * @return string | null Possible error message
     */
    public static function sendEmailDemoMessage($to, $body = '')
    {
        static::register(
            array('custom_param' => $body, 'subject' => 'Demo notification')
        );
        $templatesDir = 'modules/Tony/EmailDemo/message';
        static::compose(
            'DemoMail',
            static::getSiteAdministratorMail(),
            $to,
            $templatesDir,
            array(),
            true,
            \XLite::ADMIN_INTERFACE
        );
        return static::getMailer()->getLastError();
    }
}
```

The method we will be using to send our notifications is `sendEmailDemoMessage().` Be sure to define it as a static method and choose a unique name so it doesn't override any existing mailer methods. Let's get an overview of its features:

*   We are using the method `register() `with an _array of key-value pairs_ to define some data that will be inserted into the mail template. For the sake of example, we are passing the argument **_$body_** to use it later as a **_'custom_param'_** object.
*   $advanced_mode param defines which mail templates will be used. It is just an example of some custom logic, so you don't have to use it in your method. 
*   Finally, to send the message we are calling the method `XLite\Core\Mailer::compose()` with a set of arguments:

    1.  _string_ **$type** - is used to preprocess the **$to**, **$from**, **$dir** and **$customHeaders** params. You can provide a set of methods, called like `**prepare<param><$type>;**` for example, `prepareCustomHeadersDemoMail($customHeaders)` or `prepareToDemoMail($to).` If these methods exist, they will be called automatically during message composing.
    2.  _string _**$from** - email `**From:**` field.
    3.  _string _**$to** - email **`To:`** field. For example, we can use the default site administrator email here.
    4.  _string _**$dir** - directory where mail templates are located. The parent folder for this directory is `<X-Cart>/skins/mail/<language (e.g. **en**)>/.`
    5.  (optional) _array_**$customHeaders** - an array of key-value pairs with additional headers (**Cc:**, **Bcc:**, **Reply-To:,** etc.).
    6.  _(optional) boolean _**$doSend** - flag to cancel sending; can be used to debug the mailer;
    7.  _(optional) string _**$interface** - template interface, either `\XLite::ADMIN_INTERFACE` or `\XLite::CUSTOMER_INTERFACE.`
    8.  (optional) _string_ **$languageCode** - language code of the message.
*   We'll return the value `static::getMailer()->getLastError() as `a result of the operation. If the message is sent successfully, it will be `**null**;` otherwise, it will contain an error message.

### Designing the message template

An email message is composed from several parts such as _header_, _subject_, _body_ and _signature. _You can customize the general header and signature in your store's admin area, on the _Store setup_ -> _Email notifications_ -> _Headers & signatures_ page. However, the subject and body need to be customized through the template files named `subject.tpl` and `body.tpl, respectively`. These files should exist in the mail templates directory. In our case, they are present in the directory `<X-Cart>/skins/mail/en/modules/Tony/EmailDemo/message `with the following content:

**subject.tpl**

```php
{subject}
```

**body.tpl**

```php
<p>
  The text is - {custom_param}
</p>
```

As you can see, we can mix some predefined content with the registered parameters. As a result, we will be able to send messages like this:

![]({{site.baseurl}}/attachments/8750179/8718796.png)

From now on, to send a message, you should call your newly created method like this:

```php
/**
 * Action to send test email notification
 *
 * @return void
 */
protected function doActionSendEmail()
{
    $request = \XLite\Core\Request::getInstance();
	$error = \XLite\Core\Mailer::sendEmailDemoMessage(
        $request->custom_to_email_address,
        $request->custom_email_body
    );
    if ($error) {
        \XLite\Core\Session::getInstance()->custom_email_error = $error;
        \XLite\Core\TopMessage::getInstance()->addError('Error of test e-mail sending: ' . $error);
    } else {
        \XLite\Core\TopMessage::getInstance()->add('Test e-mail have been successfully sent');
    }
    $this->setReturnURL(
        $this->buildURL('tony_custom_email', '', array())
    );
}
```

Please note that the above way is simply an example of usage; you can send messages during certain events or logic processing, if needed. This example sends a message on form submit.

### Registering the notification in the admin area

The admin area of an X-Cart store allows you to turn off certain notifications for admin or for customer. You can configure that on the <u>Store setup</u> -> <u>Email notifications</u> -> <u>Settings</u> page. This page contains a list of different notification types and provides switches allowing the user to enable/disable specific notification types for administrator and customer. For a custom notification to appear in the mentioned list, it should be registered in the module file `install.yaml`. For instance, we will add the following content:

```php
XLite\Model\Notification:
  - templatesDirectory: modules/Tony/EmailDemo/message
    availableForAdmin: true
    availableForCustomer: false
    enabledForAdmin: true
    enabledForCustomer: false
    translations: 
      - code: en
        name: Advanced demo notification sent (Email Demo module)
        description: 'This notification is sent from testing page with preset subject and text'
        adminSubject: Someone has sent advanced demo notification
        adminText: "This is the body of your advanced demo notification"
```

Notification definition consists of several parameters:

*   **templatesDirectory** - is used as an identifier of the notification;
*   **availableForAdmin** - makes the notification available for administrator;
*   **availableForCustomer** - the same, but for customer;
*   **enabledForAdmin** - makes the notification enabled by default for administrator;
*   **enabledForCustomer** - the same, but for customer;
*   **translations** - language labels of a certain format:
    *   **code** - language code
    *   **name** - notification heading on the Settings page;
    *   **description** - notification description on the Settings page;
    *   (optional) **adminSubject** - default notification subject for `ADMIN_INTERFACE`;
    *   (optional) **adminText** - default notification body for `ADMIN_INTERFACE`;
    *   (optional) **customerSubject** and (optional) **customerText** - the same, but for `CUSTOMER_INTERFACE`;

After writing this code to the file, you should load it into system. It can be done using one of the two methods:

1.  by re-installing this module,
2.  by {% link "loading the YAML file manually" ref_8BPAwaEG %}.

You can also change the mail templates to make use of the default **subject** and **body** text, preset in the _translation_ parameter, like this:

**subject.tpl**

```php
{getNotificationSubject()}
```

**body.tpl**

```php
<p>
  {getNotificationText():h}
</p>
<p>
	Custom parameter:<br>
	{custom_param}
</p>
```

This allows you to change the subject and body text in the admin area, without tampering with template files. The interface is shown on the picture below:

![]({{site.baseurl}}/attachments/8750179/8718799.png)

As a result of the above actions, you should be able to configure your custom method in the admin area:

![]({{site.baseurl}}/attachments/8750179/8718797.png)

## Module example

You can download this module example from here: [Tony-EmailDemo-v5.2.0.tar](attachments/8750179/8718801.tar)

## Attachments:

* [demo msg]({{site.baseurl}}/attachments/8750179/8718795) (application/octet-stream)
* [demo msg.png]({{site.baseurl}}/attachments/8750179/8718796.png) (image/png)
* [X Cart online store builder Email notifications.png]({{site.baseurl}}/attachments/8750179/8718797.png) (image/png)
* [X Cart online store builder Advanced demo notification sent Email Demo module .png]({{site.baseurl}}/attachments/8750179/8718799.png) (image/png)
* [Tony-EmailDemo-v5.2.0.tar]({{site.baseurl}}/attachments/8750179/8718801.tar) (application/x-tar)