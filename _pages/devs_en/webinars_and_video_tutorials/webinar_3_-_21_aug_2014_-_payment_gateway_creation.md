---
lang: en
layout: article_with_sidebar
updated_at: '2017-11-25 23:00 +0400'
title: Webinar 3 - 21 Aug 2014 - Payment gateway creation
identifier: ref_BDJ1ZHIU
categories:
  - Webinars and video tutorials
published: true
order: 100
---

## Introduction

The aim of this webinar is to show the process of creating payment gateway in X-Cart 5\. During webinar, we will create an integration with [Dwolla](https://developers.dwolla.com/) payment gateway. The integration will be done according to the following checkout flow: [https://developers.dwolla.com/dev/pages/gateway#server-to-server](https://developers.dwolla.com/dev/pages/gateway#server-to-server)

1.  Customer clicks 'Submit order' button on the checkout stage;
2.  X-Cart takes info about order and submits it to Dwolla side, where checkout ID is generated;
3.  X-Cart receives this checkout ID and redirects customer to pay initiated invoice;
4.  Once invoice is paid on Dwolla side, customer is redirected back to X-Cart where they can see Thank youpage or Sorry your order is failed message.

Also, the example of checkout flow from technical perspective can be found here: [https://developers.dwolla.com/dev/pages/guides/receiving_money](https://developers.dwolla.com/dev/pages/guides/receiving_money)

Icon

Dwolla has already changed their API, so this integration no longer works, although principles of creating payment gateway module for X-Cart remain the same.

## Table of Contents

*   [Introduction](#introduction)
*   [Table of Contents](#table-of-contents)
*   [Video](#video)
*   [Before getting started](#before-getting-started)
    *   [Getting sandbox account and credentials](#getting-sandbox-account-and-credentials)
    *   [Creating an empty module](#creating-an-empty-module)
*   [Creating integration](#creating-integration)
    *   [Creating payment gateway class](#creating-payment-gateway-class)
    *   [Creating install.yaml of your module](#creating-installyaml-of-your-module)
    *   [Getting Dwolla lib](#getting-dwolla-lib)
    *   [Core methods of each web-based payment gateway](#core-methods-of-each-web-based-payment-gateway)
    *   [Sending initial request](#sending-initial-request)
    *   [Processing of customer return](#processing-of-customer-return)
    *   [Payment is ready](#payment-is-ready)
*   [Creating settings form for payment gateway](#creating-settings-form-for-payment-gateway)
    *   [Change install.yaml](#change-install.yaml)
    *   [Changing Dwolla.php file](#changing-dwollaphp-file)
    *   [Creating template](#creating-template)
    *   [Changing Dwolla.php file again](#changing-dwollaphp-file-again)
*   [Settings form is ready](#settings-form-is-ready)

## Video

<iframe class="youtube-player" type="text/html" style="width: 800px; height: 450px" src="https://www.youtube.com/embed/6qIBrsq1FAg" frameborder="0"></iframe>

## Before getting started

## Getting sandbox account and credentials

1.  Create an account here: [https://uat.dwolla.com/register](https://uat.dwolla.com/register). This is a test environment, but works exactly the same as production one according to Dwolla guidelines. Live account can be obtained here: [https://www.dwolla.com/register](https://www.dwolla.com/Register)
2.  Dwolla will email you your Dwolla ID.
3.  After you created your test merchant account, you need to create test customer account here: [https://sandbox.uat.dwolla.com/#/](https://sandbox.uat.dwolla.com/#/)
4.  Finally, create an application for receiving money here [https://uat.dwolla.com/applications/create](https://uat.dwolla.com/applications/create). You will get API credentials (API Key and Secret) for your integration.

## Creating an empty module

I am {% link "creating the module" ref_G2mlgckf %} with module ID **Dwolla** and developer ID **Tony**.

## Creating integration

## Creating payment gateway class

I am creating the `Model/Payment/Processor/Dwolla.php` file that will define the details of our payment gateway integration. At this point, the file is almost empty:

```php
<?php
namespace XLite\Module\Tony\Dwolla\Model\Payment\Processor;

class Dwolla extends \XLite\Model\Payment\Base\WebBased
{
}
```

The only meaningful thing here is that our integration is going to be web-based one (when customer is redirected to payment gateway side). We specify it by extending `\XLite\Model\Payment\Base\WebBased` class.

## Creating install.yaml of your module

`install.yaml` for our payment gateway module will be as follows:

```php
XLite\Model\Payment\Method:
  - service_name: Dwolla
    class: Module\Tony\Dwolla\Model\Payment\Processor\Dwolla
    type: C
    translations:
      - code: en
        name: Dwolla
```

*   `service_name` field defines name of the payment method in the system, while `translations` field defines how it should be shown in English;
*   `class` field tells X-Cart where details of such payment method implementation are located, it is the PHP file we created earlier;
*   `type = C` means, that this is a payment gateway. Alternative values may define that this is an offline method, alternative method (like Paypal Express Checkout) or all-in-one solution (like Paypal Standard or Stripe, where you do not need merchant account to start processing payments).

## Getting Dwolla lib

As you remember, the basic implementation of Dwolla was given here: [https://developers.dwolla.com/dev/pages/guides/receiving_money](https://developers.dwolla.com/dev/pages/guides/receiving_money) and this code contains usage of Dwolla lib that can be found here: [https://github.com/Dwolla/dwolla-php](https://github.com/Dwolla/dwolla-php)

I download their master branch as .zip file, extract it and copy their **lib/** folder to my module's folder.

## Core methods of each web-based payment gateway

There are basically three core routines that are necessary in each payment gateway:

1.  Sending initial request
2.  Getting callback from payment gateway (not used in this integration)
3.  Processing of customer return to the store

## Sending initial request

The purpose of this routine in our integration is to send order data to Dwolla, get checkout ID for this transaction and redirect customer to payment gateway side.

`doInitialPayment()` is the method that takes request details from checkout form and defines the routine that is run after that. Have a look at its implementation in the `classes/XLite/Model/Payment/Base/WebBased.php` file.

For our integration, the only thing we need to do here is to identify right URL and submit GET request to it. So, we need to define our own `getFormURL()` method.

```php
	protected $checkoutURL = null;
	protected function getFormURL()
	{
		if (!isset($this->checkoutURL)) {

			require_once LC_DIR_MODULES . 'Tony' . LC_DS . 'Dwolla' . LC_DS . 'lib' . LC_DS . 'dwolla.php';

			$dwollaSettings = $this->getDwollaSettings();
			$Dwolla = new \DwollaRestClient(
				$dwollaSettings['apiKey'],
				$dwollaSettings['apiSecret'],
				$dwollaSettings['redirectUri'],
				$dwollaSettings['permissions'],
				$dwollaSettings['mode'],
				$dwollaSettings['debugMode'],
				$dwollaSettings['sandboxMode']
				);
			// Clears out any previous products
			$Dwolla->startGatewaySession();
			// Add a product to the purchase order
			foreach ($this->getOrder()->getItems() as $item) {
				$Dwolla->addGatewayProduct($item->getName(), $item->getItemPrice());
			}
			$this->checkoutURL = $Dwolla->getGatewayURL($dwollaSettings['dwollaID'], $this->transaction->getTransactionId(), $this->transaction->getOrder()->getTotal());
		}
		return $this->checkoutURL;
	}
	protected function getDwollaSettings()
	{
		return array(
			'dwollaID' => 'OUR-DWOLLA-ID',
			'apiKey' => 'OUR-DWOLLA-API-KEY', 
			'apiSecret' => 'OUR-DWOLLA-API-SECRET',
			'redirectUri' => $this->getReturnURL(false, true) . '&fake_field',
			// this fake_field param is needed to work around Dwolla's bug
			'permissions' => array("send", "transactions", "balance", "request", "contacts", "accountinfofull", "funding"), 
			'mode' => 'live',
			'debugMode' => false, 
			'sandboxMode' => true,
			);
	}

	protected function getFormFields()
	{
		return array();
	}
	protected function assembleFormBody()
	{
		return true;
	}
	protected function getFormMethod()
	{
		return self::FORM_METHOD_GET;
	}
```

Most part of `getFormURL()` method is a code from Dwolla tutorial here [https://developers.dwolla.com/dev/pages/guides/receiving_money](https://developers.dwolla.com/dev/pages/guides/receiving_money).

We also created additional methods:

*   `getFormFields()` that returns empty array. This method must be defined in every child of `XLite/Model/Payment/Base/WebBased` class, but we are not using it, because no data must be submitted to Dwolla checkout URL;
*   `assembleFormBody()` must return true so that `doInitialPayment()` method actually submits the form with empty array returned from `getFormFields()` method;
*   `getFormMethod()` must return GET (it is defined as a constant) so that X-Cart sends GET request to Dwolla checkout URL.

Another important moment here is that we call `getReturnURL()` method as `getReturnURL(false, true)`. We do it in order to get return URL as `cart.php?target=payment_return&txn_id_name=txnId&txnId=<TRANSACTION-ID>`. If we call it without parameters, return URL would be `cart.php?target=payment_return&txn_id_name=txnId`, i.e. without `txnId=<TRANSACTION-ID>`.

Field `txn_id_name` defines the name of parameter that would tell X-Cart where it should look for transaction ID. If `txn_id_name=txnId`, it means that `txnId` parameter in GET query contains ID of transaction. You can call `getReturnURL('myName')` and it would return `cart.php?target=payment_return&txn_id_name=myName`, i.e. it would change `txn_id_name` parameter.

If you call `getReturnURL()` with second parameter as true, it will return string with appended transaction ID, i.e. `txnId=123`. Having transaction ID explicitly in return URL allows X-Cart understand what transaction it's going to process and not rely on transaction ID specified in default fields of return URL provided by payment gateway.

## Processing of customer return

After customer redirected back to store, X-Cart will understand what transaction it processes, because transaction ID is explicitly specified in return URL. Once it understands this fact, it will run method `processReturn()` in our payment method object and will pass the transaction to it as a parameter. Our implementation of `processReturn()` method is:

```php
	public function processReturn(\XLite\Model\Payment\Transaction $transaction)
	{
		parent::processReturn($transaction);

		$request = \XLite\Core\Request::getInstance();

		$status = ('Completed' == $request->status)
			? $transaction::STATUS_SUCCESS
            : $transaction::STATUS_FAILED;

        if (isset($request->error_description)) {
        	\XLite\Core\OrderHistory::getInstance()->registerTransaction($this->transaction->getOrder()->getOrderId(), 'Error description: ' . $request->error_description);
        	$transaction->setDataCell('status', $request->error_description, null, 'C');
        }

        $this->transaction->setStatus($status);
	}
```

The main process here is to identify whether the transaction is successful or not based on status field in the return URL and switch transaction status to Processed or Failed.

Another portion of code is a routine of handling errors:

*   `\XLite\Core\OrderHistory::getInstance()->registerTransaction()` is a way to put error into Order History log in admin area

*   `$transaction->setDataCell()` is a way to show error message to the customer at the checkout

Typical Success return query from Dwolla:

```php
cart.php?target=payment_return&txn_id_name=txnId&txnId=15&fake_field&signature=a96c007ebd4ea2701812b9fbee3efd53f0e3580f&orderId=30&amount=2199.00&checkoutId=612f1337-9198-4c40-b880-3e16dfe157ce&status=Completed&clearingDate=2014-08-19T12:43:12Z&transaction=324974&destinationTransaction=324973;
```

Typical Failed return query from Dwolla:

```php
cart.php?target=payment_return&txn_id_name=txnId&txnId=16&fake_fieldcheckoutId=2e35e3a0-ba9f-4049-9555-85c4cb65e606&error=failure&error_description=There+are+insufficient+funds+for+this+transaction.
```

## Payment is ready

After these steps, you should regenerate the cache and our payment method will start working.

In order to test your Dwolla integration, you must go to **Store setup > Payment methods** section in admin area and enable Dwolla in the **Accepting credit cards online > Add payment method > Payment gateways ** section.

Of course, at this point gateway's credentials are hard-coded, but we will create a settings form for Dwolla on the next steps. Once cache regeneration is done, try to enable your payment and test its work.

## Creating settings form for payment gateway

## Change install.yaml

We need to define what settings Dwolla is going to have and we do it in install.yaml.

Its final version will be as follows:

```php
XLite\Model\Payment\Method:
  - service_name: Dwolla
    class: Module\Tony\Dwolla\Model\Payment\Processor\Dwolla
    type: C
    translations:
      - code: en
        name: Dwolla
    settings:
      - name: dwollaid
      - name: apikey
      - name: apisecret
      - name: mode
        value: live
```

We specified 4 options and option mode is set to **live** by default. After this changes, you need to {% link "load this yaml file" ref_HvrXVNvJ#X-CartSDK-LoadingYAMLfile %} to database again.

## Changing Dwolla.php file

We should edit `classes/XLite/Module/Tony/Dwolla/Model/Payment/Processor/Dwolla.php` file and add method` getSettingsWidget()` that will return the template that is responsible for displaying Dwolla's settings.

```php
	public function getSettingsWidget()
	{
		return 'modules/Tony/Dwolla/config.tpl';
	}
```

## Creating template

Now we create skins/admin/en/modules/Tony/Dwolla/config.tpl template with the following content:

```php
<table cellspacing="1" cellpadding="5" class="settings-table">
  <tr>
    <td class="setting-name">
    <label for="settings_dwollaid">{t(#Dwolla Login ID#)}</label>
    </td>
    <td>
    <input type="text" id="settings_dwollaid" name="settings[dwollaid]" value="{paymentMethod.getSetting(#dwollaid#)}" class="validate[required,maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_apikey">{t(#Dwolla API Key#)}</label>
    </td>
    <td>
    <input type="text" id="settings_apikey" name="settings[apikey]" size="64" value="{paymentMethod.getSetting(#apikey#)}" class="validate[required,maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_apisecret">{t(#Dwolla API Secret#)}</label>
    </td>
    <td>
    <input type="text" id="settings_apisecret" name="settings[apisecret]" size="64" value="{paymentMethod.getSetting(#apisecret#)}" class="validate[required,maxSize[255]]" />
    </td>
  </tr>
  <tr>
    <td class="setting-name">
    <label for="settings_mode">{t(#Processing mode#)}</label>
    </td>
    <td>
    <select id="settings_mode" name="settings[mode]">
      <option value="test" selected="{isSelected(paymentMethod.getSetting(#mode#),#test#)}">Test mode</option>
      <option value="live" selected="{isSelected(paymentMethod.getSetting(#mode#),#live#)}">Real transaction</option>
    </select>
    </td>
  </tr>
</table>
```

This template basically defines the whole form of Dwolla's settings.

## Changing Dwolla.php file again

This time we are editing getDwollaSettings() method and replace settings that were previously hard-coded so that they would be taken from Dwolla's settings form.

```php
	protected function getDwollaSettings()
	{
		return array(
			'dwollaID' => $this->getSetting('dwollaid'),
			'apiKey' => $this->getSetting('apikey'), 
			'apiSecret' => $this->getSetting('apisecret'),
			'redirectUri' => $this->getReturnURL(false, true) . '&fake_field',
			// this fake_field param is needed to workaround Dwolla's bug
			'permissions' => array("send", "transactions", "balance", "request", "contacts", "accountinfofull", "funding"), 
			'mode' => 'live',
			'debugMode' => false, 
			'sandboxMode' => $this->getSetting('mode') == 'live' ? false : true,
			);
	}
```

Besides that we are adding couple of new methods in order to give X-Cart idea when Dwolla payment is in test mode and when it is configure properly.

```php
	public function isTestMode(\XLite\Model\Payment\Method $method)
    {
        return $method->getSetting('mode') != 'live';
    }
    public function isConfigured(\XLite\Model\Payment\Method $method)
    {
        return parent::isConfigured($method)
            && $method->getSetting('dwollaid')
            && $method->getSetting('apikey')
            && $method->getSetting('apisecret');
    }
```

*   If mode setting is not live, then Dwolla is in test mode;
*   If Dwolla ID or API key or API secret are not specified, then Dwolla is not fully configured.

## Settings form is ready

Rebuild the cache again and check integration one more time. This time it will take settings specified in admin area.
