---
title: Creating settings page for payment method
identifier: ref_vZNkXFnt
updated_at: 2015-01-23 00:00
layout: article_with_sidebar
lang: en
version: X-Cart 5.2.10 and earlier
categories:
- Developer docs
- Demo module
- Outdated
---

## Introduction

This article is a continuation of the guide about {% link "creating payment method" ref_U1KitTMm %}. During this article, we will assume that you are already familiar with that guide and we will show you how to add a **settings form** for the payment method described there.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation

We start with creating an empty module with developer ID **Tony** and module ID **PaymentFormDemo** and then implement a {% link "gateway described in the previous guide" ref_U1KitTMm %}.

1.  We create the `<X-Cart>/payment.php` file with the following code there: 

    ```php
    <?php

    $location = $_POST['returnURL'] . '&transactionID=' . $_POST['transactionID'] . '&status=Paid';

    header('Location: ' . $location);
    die();
    ```

    This file will represent our **self-designed payment gateway**.

2.  We create the `<X-Cart>/classes/XLite/Module/Tony/PaymentFormDemo/Model/Payment/Processor/DemoPayment.php` file with the following content: 

    ```php
    <?php

    namespace XLite\Module\Tony\PaymentFormDemo\Model\Payment\Processor;

    class DemoPayment extends \XLite\Model\Payment\Base\WebBased
    {
        protected function getFormURL()
        {
            return \XLite::getInstance()->getShopURL() . 'payment.php';
        }

        protected function getFormFields()
        {
            return array(
                'transactionID' => $this->transaction->getPublicTxnId(),
                'returnURL' => $this->getReturnURL('transactionID'),
                );
        }

        public function processReturn(\XLite\Model\Payment\Transaction $transaction)
        {
            parent::processReturn($transaction);

            $result = \XLite\Core\Request::getInstance()->status;

            $status = ('Paid' == $result)
                ? $transaction::STATUS_SUCCESS
                : $transaction::STATUS_FAILED;

            $this->transaction->setStatus($status);
        }
    }
    ```

    This file represents an integration with the self-designed payment gateway described in the point 1 here.

3.  We create the `<X-Cart>/classes/XLite/Module/Tony/PaymentFormDemo/install.yaml` file with the following content: 

    ```php
    XLite\Model\Payment\Method:
      - service_name: DemoPayment
        class: Module\Tony\PaymentFormDemo\Model\Payment\Processor\DemoPayment
        type: C
        translations:
          - code: en
            name: Demo Payment
    ```

    This file will register this payment method in the database.
    _Note: do not forget to {% link "push this file into the database" ref_HvrXVNvJ#loading-yaml-file %}._

Now we have the module described in {% link "the previous guide" ref_U1KitTMm %}, but it has been created with module ID **PaymentFormDemo** and we want to add some settings to it. We will create a settings form that will contain three fields:

*   login
*   password
*   live/test mode

We start with updating `<X-Cart>/classes/XLite/Module/Tony/PaymentFormDemo/install.yaml file`. We should add payment method settings there, so we append it with following lines: 

```php
    settings:
      - name: login
      - name: password
      - name: mode
        value: live
```

These lines will add **login** and **password** settings with **empty default values** as well as **mode** setting that has **live** value by default.

The final version of this YAML file will be as follows: 

```php
XLite\Model\Payment\Method:
  - service_name: DemoPayment
    class: Module\Tony\PaymentFormDemo\Model\Payment\Processor\DemoPayment
    type: C
    translations:
      - code: en
        name: Demo Payment
    settings:
      - name: login
      - name: password
      - name: mode
        value: live
```

Once we are done with this, we need to {% link "push renewed version of our YAML file" ref_HvrXVNvJ#loading-yaml-file %} to the database.

After that we go to the `<X-Cart>/classes/XLite/Module/Tony/PaymentFormDemo/Model/Payment/Processor/DemoPayment.php` file and add following methods there: 

```php
    public function getSettingsWidget()
    {
        return 'modules/Tony/PaymentFormDemo/config.tpl';
    }

    public function isTestMode(\XLite\Model\Payment\Method $method)
    {
        return $method->getSetting('mode') != 'live';
    }

    public function isConfigured(\XLite\Model\Payment\Method $method)
    {
        return parent::isConfigured($method)
            && $method->getSetting('login')
            && $method->getSetting('password');
    }
```

*   `getSettingsWidget()` method defines a **template** that will display a settings for this payment method;
*   `isTestMode()` method defines a condition that will mark this payment method as in test mode. In our case, if the **mode** setting is not live, then our payment method is in test mode;

*   `isConfigured()` method defines a condition when X-Cart will consider this payment method ready for processing orders and will show it on checkout page. In our case, **login** and **password** settings must not be empty.

Final version of the `<X-Cart>/classes/XLite/Module/Tony/PaymentFormDemo/Model/Payment/Processor/DemoPayment.php` file will be as follows: 

```php
<?php

namespace XLite\Module\Tony\PaymentFormDemo\Model\Payment\Processor;

class DemoPayment extends \XLite\Model\Payment\Base\WebBased
{
    protected function getFormURL()
    {
        return \XLite::getInstance()->getShopURL() . 'payment.php';
    }

    protected function getFormFields()
    {
        return array(
            'transactionID' => $this->transaction->getPublicTxnId(),
            'returnURL' => $this->getReturnURL('transactionID'),
            );
    }

    public function processReturn(\XLite\Model\Payment\Transaction $transaction)
    {
        parent::processReturn($transaction);

        $result = \XLite\Core\Request::getInstance()->status;

        $status = ('Paid' == $result)
            ? $transaction::STATUS_SUCCESS
            : $transaction::STATUS_FAILED;

        $this->transaction->setStatus($status);
    }

    public function getSettingsWidget()
    {
        return 'modules/Tony/PaymentFormDemo/config.tpl';
    }

    public function isTestMode(\XLite\Model\Payment\Method $method)
    {
        return $method->getSetting('mode') != 'live';
    }

    public function isConfigured(\XLite\Model\Payment\Method $method)
    {
        return parent::isConfigured($method)
            && $method->getSetting('login')
            && $method->getSetting('password');
    }
}
```

Finally, we need to create the template mentioned in the getSettingsWidget() method, so we create the `<X-Cart>/skins/admin/en/modules/Tony/PaymentFormDemo/config.tpl` file with the following content: 

```php
<table cellspacing="1" cellpadding="5" class="settings-table">
  <tr>
    <td class="setting-name">
    <label for="settings_login">{t(#Login#)}</label>
    </td>
    <td>
    <input type="text" id="settings_login" name="settings[login]" value="{paymentMethod.getSetting(#login#)}" class="validate[required,maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_password">{t(#Password#)}</label>
    </td>
    <td>
    <input type="text" id="settings_password" name="settings[password]" size="64" value="{paymentMethod.getSetting(#password#)}" class="validate[required,maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_mode">{t(#Processing mode#)}</label>
    </td>
    <td>
    <select id="settings_mode" name="settings[mode]">
      <option value="test" selected="{isSelected(paymentMethod.getSetting(#mode#),#test#)}">Test mode</option>
      <option value="live" selected="{isSelected(paymentMethod.getSetting(#mode#),#live#)}">Live mode</option>
    </select>
    </td>
  </tr>
</table>
```

This template represents the form that will be displayed in the payment method settings page. Important notes are:

*   You should use the `{paymentMethod.getSetting(#setting-name#)}` construction in order to display already saved value of payment method setting;
*   **name** field of an `<input>` element must be `settings[setting-name]` in order to allow X-Cart to properly update its value after submit;
*   `{isSelected(value1, value2)}` method will return `true` if **value1=value2** and `false` otherwise.

That is it with this module example. Now we need to re-deploy the store and check the results.

First of all add our payment method on the **Store setup** > **Payment methods** page in admin area. Since the **login** and **password** fields are not specified yet, the payment methods list displays this method as **unconfigured **and **active/inactive** selector is disabled: ![]({{site.baseurl}}/attachments/8225462/8356214.png)

This is our `isConfigured()` method in action.

Go to the payment method's settings page, input any values into **Login**/**Password** fields and set **Test** value for **Processing Mode** field. Save the results and check this payment method in the payment methods list. It will show you this method as enabled, but it will mark it as **in test mode**:
![]({{site.baseurl}}/attachments/8225462/8356215.png)

Here we see the `isTestMode()` method in action.

## Module pack

You can download this module example from here: [https://dl.dropboxusercontent.com/u/23858825/Tony-PaymentFormDemo-v5_1_0.tar](https://dl.dropboxusercontent.com/u/23858825/Tony-PaymentFormDemo-v5_1_0.tar)

Module example (with the settings page) for X-Cart v5.2.x: [Tony-PaymentDemo-v5_2_0.tar]({{site.baseurl}}/attachments/8225448/9439206.tar)

Module example (with the settings page) for X-Cart v5.3.x: [XCExample-Payment-v5_3_0.tar]({{site.baseurl}}/attachments/modules/XCExample-Payment-v5_3_0.tar)
