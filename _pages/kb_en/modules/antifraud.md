---
lang: en
layout: article_with_sidebar
updated_at: '2018-08-30 11:39 +0400'
identifier: ref_6oaerFUv
title: AntiFraud Service Connector
order: 21
published: true
---
The addon [AntiFraud Service Connector](https://market.x-cart.com/addons/antifraud.html#product-details-tab-description "AntiFraud Service Connector") integrates X-Cart with AntiFraud services that allows to identify online fraud using sophisticated checking algorithm and reduce chargebacks.

When AntiFraud screening is enabled, X-Cart submits non-personal data about a new order to AntiFraud service server to calculate the risk factor. The following customer information is sent to our screening servers during antifraud checks:

  * IP address
  * proxy IP address
  * email
  * country (billing address)
  * state (billing address)
  * city (billing address)
  * ZIP code (billing address)
  * phone


If the risk factor exceeds the threshold you specified, the order is delayed for your further manual check (like a call to a buyer or asking for an additional evidence of authenticity etc.), with the detailed report being provided, so you have a clear picture, what exactly was suspicious  in that order.

Antifraud service assesses the fraud risk factor by processing MaxMind's GeoIP/minFraud service data via our unique algorithms. The algorithms are based on our substantial experience in online credit card processing and are specially adapted to be used in X-Cart shopping cart system. Rolled out long ago, the service proved to be extremely helpful and effective for thousands of X-Cart merchants.

To start using the addon, [subscribe](https://market.x-cart.com/addons/antifraud.html#product-details-tab-Plans_and_Pricing "AntiFraud Service Connector") to one of available plans depending on the amount of requests you need to procees per.

{% toc %}

## AntiFraud Addon Installation and Setup

To install the addon, follow the instructions from {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

Once the addon has been installed, proceed to the addon settings page to configure it:

![af-installed.png]({{site.baseurl}}/attachments/ref_6oaerFUv/af-installed.png)

The addon settings are divided into 3 tabs. You need to set up all of them:

1. Settings
   ![af-settings-1.png]({{site.baseurl}}/attachments/ref_6oaerFUv/af-settings-1.png)
   
   * **AntiFraud module service key** : Specify the service key you've got in the subsciption confirmation e-mail.
   * **Fraud risk factor threshold value** : Specify the fraud risk factor threshold value. Orders with a Fraud risk factor greater than the value specified in this field will not be processed automatically. If fraud risk factor is greater than this limit, order status will be 'Queued'.
     
     {% note info %}
      A fraud risk factor value that will be calculated by Antifraud service addon with reference to a certain order will represent a number from 1 to 10 (the greater the number, the higher the probability of fraud). The field **Fraud risk factor threshold value** allows you to specify, how great a fraud risk factor of an order must be for the order to be considered fraudulent. 
      
      For example, if you set the **Fraud risk factor threshold value** to '5' (which corresponds to 50% risk of fraud), all the orders with the fraud risk factor rates from 6 to 10 will be considered potentially fraudulent. X-Cart will not process such orders automatically: they will be placed with the status 'Queued', so you will be able to review them personally at a later time and decide, whether you want to process them or not. If you find a certain order to be fraudulent, you will be able to report the IP address from which the order originated to the Antifraud service server as a source of fraudulent orders. This will prevent further fraudulent orders coming from this IP.
     {% endnote %}
     
   * **Block order processing if risk score execeeds threshold** : If you enable this X-Cart won't even send an order to a payment gateway for processing if fraud score is bad. In this case the special "AF Error #1: Cannot process this order. Contact administrator" message is displayed for the customers at checkout.
   * **Use AVS check result returned from the gateway** : If enabled customer’s billing address will be compared on checkout against the information stored on file by a credit card issuer and any suspicious transactions will be blocked if the information provided doesn’t match with the one stored on the credit card. The setting works for {% link "X-Payments subscriptions" ref_8VFoqBFZ %} only.
   * **AntiFraud safe distance (km)** : The distance between a billing address location and an IP address location that you wish to be treated as safe. Any order originating from an IP address located within the Antifraud safe distance from the address provided by the customer at checkout will be processed as non-fraudulent. For all users outside the safe distance, the risk of fraud will be defined based on the **Fraud risk factor threshold value**.
   * **Order total threshold** : The order subtotal amount starting from which an order must be considered 'large'. Antifraud service believes large orders to provide a greater risk for store owners, so it uses an additional coefficient to increase the **Fraud risk factor** of an order if its subtotal exceeds the value provided in this field.
   * **Run AntiFraud check on orders with zero order total** : This option allows you to specify whether you wish orders whose order total amount has been calculated as '0' (zero) to be screened by Antifraud service.
   * **Force to use the "Auth only" mode if the fraud risk factor exceeds** : Define the maximum allowed value of the fraud risk factor. When exceeded, X-Cart will force to perform the transaction in the "Auth only" mode even if the payment system is set up to use a different mode.
   * **Address error score** : Define any score from 0 to 10 that will be assigned to an order in case the AntiFraud service is not able to process customer's address.
   * **"AntiFraud service key is invalid" notification to orders department** : This option allows you to specify whether you wish an email notification to be sent to the store's Orders department if the value entered into the 'Antifraud module subscription key' field is not a valid subscription key.
   * **"AntiFraud service key is expired" notification to orders department** : This option allows you to specify whether you wish an email notification to be sent to the store's Orders department when your Antifraud addon subscription key expires.
     
     **Submit** the settings when you are done.
   
2. Payment methods
   ![af-settings-2.png]({{site.baseurl}}/attachments/ref_6oaerFUv/af-settings-2.png)
   
   Here you'll see a list of payment methods enabled in your store. You need to select the payment methods falling under the AntiFraud check. AntiFraud check will be performed on orders placed using the specified payment methods only.
   
3. High risk countries
   ![af-settings-3.png]({{site.baseurl}}/attachments/ref_6oaerFUv/af-settings-3.png)
   
   Form a list of countries that are blocked by AntiFraud service if applicable. Customers from the countries that fall under the black list will not be able to place orders in your store. 
   
   To add a country to the list, choose it from the countries drop-down and click **Add**. 


## What Is Fraud Risk Factor and How It Is Calculated?

Fraud risk factor is a number from 1 to 10 estimating the riskiness of accepting a credit card for a certain order (the higher the number the higher the risk). The calculation is performed in two steps:

1. The first step is done by Antifraud server depending on the following parameters:

   * country_doesnot_match (binary value, 1 or 0)
   * city_doesnot_match (binary value, 1 or 0)
   * is_free_email (binary value, 1 or 0)
   * is_anonymous_proxy (binary value, 1 or 0)
   * fraudulent_ip (binary value, 1 or 0)
   * proxy_score (decimal value, from 0 to 10)
   * spam_score (decimal value, from 0 to 10)
   * CHECK_IP_DISTANCE (integer value, distance in km) 
   
     Using this algorithm: 
     * First the fraud risk factor is assigned 0 value;
     * If any of the binary parameters takes value 1 ('true'), the fraud risk factor is increased by some ("know how") value;
     * If 'proxy_score' or 'spam_score' exceeds 4, the fraud risk factor is increased by some ("know how") value;
     * If 'CHECK_IP_DISTANCE' exceeds the Antifraud safe distance value, the fraud risk factor is increased by some ("know how") value;
     * Finally, if the fraud risk factor value is above 10, it becomes equal 10;
     
2. Once the first step is done the calculated value is passed to X-Cart to be adjusted according to all of following rules:

   * If the order total is greater than the Order total threshold value - 'order_limit_excess' becomes 1 (true), and the fraud risk factor is multiplied by 2;
   * If the customer has processed orders - 'completed orders' takes value 1 (true), and the fraud risk factor is divided by 2;
   * If the customer has cancelled orders - 'declined_orders' takes value 1 (true), and the fraud risk factor is multiplied by 1,5;
   * If the IP address being checked has been already used to place orders under a different user account - 'foreign_ip_address' takes value 1 (true), and the fraud risk factor is multiplied by 2;
   * If the customer's billing address is considered to be a high risk country - 'is_high_risk_country' takes value 1 (true), and the fraud risk factor is incremented by 7.
   * Finally, if the fraud risk factor value is above 10, it becomes equal 10.

## Using the Results of 'Antifraud service' Check-up

The results of screening of an order by Antifraud service are first of all displayed on the **Order list** page (**Orders** -> **Order list**) where orders considered fraud are specially marked in red for the notice of a store admin:

![af-order-list-1.png]({{site.baseurl}}/attachments/ref_6oaerFUv/af-order-list-1.png)

A store admin can check potentially fraud orders precisely in the **Antifraud service** subsection of the **Order details** page.

![af-order-details.png]({{site.baseurl}}/attachments/ref_6oaerFUv/af-order-details.png)

The results of an Antifraud service check-up most probably containg the following data:

{% note info %}
All notes in green testify in favor of a customer.
All notes in red testify against a customer.
{% endnote %}

**Risk factor** - a number from 1 to 10 reflecting the risk of fraud associated with the order.

**Time checked** -  date and time of the check.

**Used requests**  - a number of requests to Antifraud service that is already used.

**Requests available** - a total number of requests to Antifraud service that you are allowed to make with your current Antifraud subscription key.

{% note info %}

Antifraud service subscription key is valid for a limited number of times. As soon as your Antifraud service subscription key expires, you will be notified about it by a warning message in the **Antifraud service** subsection of the **Order details** page:

```
'Warning! Antifraud service key expired! You can purchase Antifraud Service subscription here or get your free trial key here (if it has not been used)'
```

If you get this message and want to continue using Antifraud, order a new Antifraud service subscription key from X-Cart.

If the key entered into the **Antifraud module service key** field on the AntiFaud addon settings page is not a valid key, you will be informed that your Antifraud service key is invalid:

```
'Warning! Antifraud service key is invalid! You can purchase Antifraud Service subscription here or or get your trial key here (if it has not been used)'
```
If you get this message, make sure the **Antifraud module service key** on the AntiFraud addon settings page is entered correctly.

If you wish to get email notifications in the event that your key becomes invalid or expired, enable the corresponding email notifications on the addon settings page.

{% endnote %}

**IP address checked** - IP address the order originates to.

{% note info %}
If Antifraud service is unable to provide any information about the IP address used to place an order, you are informed about it by the following message:

```
'No information regarding requested IP is found'
```
Such a message does not necessarily mean fraud, it can be caused by the fact that the customer came to your store from an intranet environment. However, the potential fraud risk of orders, the origin of which is unknown, is very high.

{% endnote %}

**State of IP address** - the state customer IP belongs to.

**Country of IP address** - the country customer IP originates to.

**City of IP address** - the city customer IP originates to.

{% note info %}

In case the info submitted by a customer at checkout doesn't match the country and/or city of IP address, you are informed about it by the following message in red:

```
Billing country/city doesn't match country of IP address
```
{% endnote %}

**Distance calculated from** - the city a customer specified in his Billing details on checkout.

**IP ISP** - a customer's Internet Service Provider.

**IP Organisation** -  a customer's Internet Service Provider.

**Distance from city to IP address (km)** - the estimated distance between the city a customer specified in the Billing details on checkout and the real customer location

**Proxy score** - in case the value is 0.00 a customer didn't use proxy to place an order. In case the value differs from 0.00 a proxy was used. Using proxy is considered malicious.

**Spam score** - in case the value is 0.00 the email a customer registered when placing an order was not registered as a spam email. If the value differs, the email was compromised.
