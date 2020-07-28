---
lang: en
layout: article_with_sidebar
updated_at: '2020-07-28 17:00 +0400'
identifier: ref_5EM9F7EQ
title: Creating a settings page for a payment method
order: 100
published: true
redirect_from:
  - >-
    /changing_store_logic/creating_a_payment_method/creating_settings_page_for_payment_method.html
---
## Introduction
This article is a continuation of the guide about {% link "creating payment method" ref_U1KitTMm %}. During this article, we will assume that you are already familiar with that guide and we will show you how to add a **settings form** for the payment method described there.

## Table of Contents
*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Implementation](#implementation)
*   [Module pack](#module-pack)

## Implementation
We start with creating an empty module with developer ID **XCExample** and module ID **Payment**.

Here is the file main.yaml of the demo module at the path classes/XLite/Module/XCExample/Payment/main.yaml

```yaml
version: 5.4.0.0
type: payment
authorName: 'X-Cart examples'
moduleName: 'Example "Payment" module'
description: 'Example "Payment" module'
minorRequiredCoreVersion: 0
dependsOn: {  }
incompatibleWith: {  }
skins: {  }
showSettingsForm: false
canDisable: true
```
Specifying `type:payment` is required so that X-Cart can understand that it is a payment module.

1.  We create the `<X-Cart>/payment.php` file with the following code there: 
    ```php
    <?php
    $location = $_POST['returnURL'] . '&transactionID=' . $_POST['transactionID'] . '&status=Paid';
    header('Location: ' . $location);
    die();
    ```
    This file will represent our **self-designed payment gateway**.
2.  We create the `<X-Cart>/classes/XLite/Module/XCExample/Payment/Model/Payment/Processor/DemoPayment.php` file with the following content: 
```php
<?php
namespace XLite\Module\XCExample\Payment\Model\Payment\Processor;
class DemoPayment extends \XLite\Model\Payment\Base\WebBased
{
    protected function getFormURL()
    {
        return \XLite::getInstance()->getShopURL() . 'payment.php';
    }
    protected function getFormFields()
    {
        return array(
            'transactionID' => $this->getTransactionId(),
            'returnURL' => $this->getReturnURL(null, true),
            'invoice_description' => $this->getInvoiceDescription(),
        );
    }
    public function processReturn(\XLite\Model\Payment\Transaction $transaction)
    {
        parent::processReturn($transaction);
        $request = \XLite\Core\Request::getInstance();
        $status = '';
        $notes = array();
        if ($request->status == 'Paid') {
            $status = $transaction::STATUS_SUCCESS;
            $this->setDetail('Status', $request->status, 'Result');
            $this->setDetail('TxnNum', $request->transactionID, 'Transaction number');
        } else {
            $status = $transaction::STATUS_FAILED;
            $notes[] = 'Payment Failed';
        }
        $this->transaction->setStatus($status);
        $this->transaction->setNote(implode('. ', $notes));
    }
}
```
    This file represents an integration with the self-designed payment gateway described in the point 1 here.
3.  We create the `<X-Cart>/classes/XLite/Module/XCExample/Payment/install.yaml` file with the following content: 

    ```yaml
    XLite\Model\Payment\Method:
      - service_name: DemoPayment
        class: Module\XCExample\Payment\Model\Payment\Processor\DemoPayment
        type: C
        translations:
          - code: en
            name: Demo Payment
    ```
    This file will register this payment method in the database.
    _Note: do not forget to {% link "push this file into the database" ref_HvrXVNvJ#loading-yaml-file %}._
Now we have the module described in {% link "the previous guide" ref_U1KitTMm %}, but it has been created with module ID **Payment** and we want to add some settings to it. We will create a settings form that will contain three fields:
*   login
*   password
*   live/test mode
We start with updating `<X-Cart>/classes/XLite/Module/XCExample/Payment/install.yaml file`. We should add payment method settings there, so we append it with following lines: 
```yaml
    settings:
      - name: login
      - name: password
      - name: mode
        value: live
```
These lines will add **login** and **password** settings with **empty default values** as well as **mode** setting that has **live** value by default.
The final version of this YAML file will be as follows: 
```yaml
XLite\Model\Payment\Method:
  - service_name: DemoPayment
    class: Module\XCExample\Payment\Model\Payment\Processor\DemoPayment
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
After that we go to the `<X-Cart>/classes/XLite/Module/XCExample/Payment/Model/Payment/Processor/DemoPayment.php` file and add following methods there: 
```php
    public function getSettingsWidget()
    {
        return 'modules/XCExample/Payment/config.twig';
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
Final version of the `<X-Cart>/classes/XLite/Module/XCExample/Payment/Model/Payment/Processor/DemoPayment.php` file will be as follows: 
```php
<?php
namespace XLite\Module\XCExample\Payment\Model\Payment\Processor;
class DemoPayment extends \XLite\Model\Payment\Base\WebBased
{
    public function getSettingsWidget()
    {
        return 'modules/XCExample/Payment/config.twig';
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
    protected function getFormURL()
    {
        return \XLite::getInstance()->getShopURL() . 'payment.php';
    }
    protected function getFormFields()
    {
        return array(
            'transactionID' => $this->getTransactionId(),
            'returnURL' => $this->getReturnURL(null, true),
            'invoice_description' => $this->getInvoiceDescription(),
        );
    }
    public function processReturn(\XLite\Model\Payment\Transaction $transaction)
    {
        parent::processReturn($transaction);
        $request = \XLite\Core\Request::getInstance();
        $status = '';
        $notes = array();
        if ($request->status == 'Paid') {
            $status = $transaction::STATUS_SUCCESS;
            $this->setDetail('Status', $request->status, 'Result');
            $this->setDetail('TxnNum', $request->transactionID, 'Transaction number');
        } else {
            $status = $transaction::STATUS_FAILED;
            $notes[] = 'Payment Failed';
        }
        $this->transaction->setStatus($status);
        $this->transaction->setNote(implode('. ', $notes));
    }
}
```
Finally, we need to create the template mentioned in the getSettingsWidget() method, so we create the `<X-Cart>/skins/admin/modules/XCExample/Payment/config.twig` file with the following content: 
```php
<table cellspacing="1" cellpadding="5" class="settings-table">
  <tr>
    <td class="setting-name">
    <label for="settings_login">{{ t('Login') }}</label>
    </td>
    <td>
    <input type="text" id="settings_login" name="settings[login]" value="{{ this.paymentMethod.getSetting('login') }}" class="validate[required, maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_password">{{ t('Password') }}</label>
    </td>
    <td>
    <input type="text" id="settings_password" name="settings[password]" size="64" value="{{ this.paymentMethod.getSetting('password') }}" class="validate[required,maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_mode">{{ t('Processing mode') }}</label>
    </td>
    <td>
    <select id="settings_mode" name="settings[mode]">
      <option value="test" {% if this.paymentMethod.getSetting('mode') == 'test' %} selected="selected" {% endif %}>Test mode</option>
      <option value="live" {% if this.paymentMethod.getSetting('mode') == 'live' %} selected="selected" {% endif %}>Live mode</option>
    </select>
    </td>
  </tr>
</table>
```
This template represents the form that will be displayed in the payment method settings page. Important notes are:
*   You should use the `{{ this.paymentMethod.getSetting('setting-name') }}` construction in order to display already saved value of payment method setting;
*   **name** field of an `<input>` element must be `settings[setting-name]` in order to allow X-Cart to properly update its value after submit;
That is it with this module example. Now we need to re-deploy the store and check the results.
First of all add our payment method on the **Store setup** > **Payment methods** page in admin area. Since the **login** and **password** fields are not specified yet, the payment methods list displays this method as **unconfigured **and **active/inactive** selector is disabled: ![]({{site.baseurl}}/attachments/8225462/8356214.png)
This is our `isConfigured()` method in action.
Go to the payment method's settings page, input any values into **Login**/**Password** fields and set **Test** value for **Processing Mode** field. Save the results and check this payment method in the payment methods list. It will show you this method as enabled, but it will mark it as **in test mode**:
![]({{site.baseurl}}/attachments/8225462/8356215.png)
Here we see the `isTestMode()` method in action.

## Module pack
Module example (with the settings page) for X-Cart v5.4.x: [XCExample-Payment.5.4.0.0.tgz]({{site.baseurl}}/attachments/modules/XCExample-Payment.5.4.0.0.tgz)
