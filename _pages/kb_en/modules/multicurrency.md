---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-21 14:33 +0400'
identifier: ref_2tPJubPU
title: Multicurrency Addon
order: 170
published: true
---
If you sale worldwide it makes sense to use the addon [Multicurrency](https://market.x-cart.com/addons/multicurrency-for-xcart5.html "Multicurrency") to make purchases for your international customers easier. Allowing customers to shop in their native currency provides a more consistent and positive shopping experience and can encourage the overall store conversion.
![multicurrency_addon.png]({{site.baseurl}}/attachments/ref_2tPJubPU/multicurrency_addon.png)

{% toc %}

## Multicurrency Addon Overview

When considering using the addon, keep in mind that the Multicurrency addon supports the display-only type of currencies. This means that it allows to convert prices and all product-related costs from a {% link "default currency" ref_2dx6iFtL %} into a customer native currency and display it in the storefront and at checkout. All transactions in X-Cart, however, will be processed in a default store currency regardless of the currency used by a customer to place an order.

The Multicurrency addon works in a bundle with the addon {% link "Geolocation" ref_34F5BkhW %} that uses a free "GeoLite2 Country" database by MaxMind. 
![geolocation_addon.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation_addon.png)

The "GeoLite2 Country" database allows to define a customer's location accurate to a country. If you need higher accuracy, you can upload other databases on the Geolocation addon settings page.
![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)


## Multicurrency Addon Setup

{% note warning %}
PREREQUISITES:

Before configuring the Multicurrency addon, please ensure that the addon {% link "Geolocation" ref_34F5BkhW %} is installed and enabled. 
{% endnote %}

To enable the Multicurrency addon, follow the instructions from {% link "Installing and Activating Addons" ref_0fGEpvrh %}.

Once the Multicurrency addon has been installed, it adds a possibility to enable several currencies on the **Currincies** page of **Store setup** -> **Localization** section of your store Admin area.

The addon extends the {% link "default currency settings" ref_2dx6iFtL %} with the following options:
![540-multicurrencies-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-multicurrencies-settings.png)

* **Online currency rates service** : Choose a currency converter or set to NONE to define the conversion rates manually.
* **Currency converter API key** : Specify your currency converter API key here. 
  {% note info %}
  This field becomes avaiable if _The Currency Converter API_ or _The Free Currency Converter API_ options are chosen as **Online currency rates service**. To get an API key please refer to [https://www.currencyconverterapi.com/](https://www.currencyconverterapi.com/ "Multicurrency Addon") and [https://free.currencyconverterapi.com/](https://free.currencyconverterapi.com/ "Multicurrency Addon") respectively.
  {% endnote %}
* **Update online rates every** : Set a periodicity of the rates revision.

When the main settings are configured click **Save changes** and proceed to adding extra currencies to the list of available for display in the storefront.

### Configuring Multiple Currencies

To complete the Multicurrency addon set-up use the **Add currency** drop-down and button to enable as many display-only currenclies in the storefront as you may need. 

To add a new currency to the list:
1. Open the **Currencies** page in the **Store setup** -> **Localization** section of your store Admin area
2. Choose a currency code you want to add in a drop-down;
   ![540-add-currency.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-add-currency.png)

3. Click the **Add currency** button.
   
   A new currency will be added with a pre-set list of countries it's applicable to. If you want you can add or remove the countries from the list of assigned to a currency by clicking the 'Countries' field. Each country can be assigned to one currency only.

A list of currencies may look as follows:
![540-currencies-list.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-currencies-list.png)

The default store currency configured originally is present in the currencies list and is specially marked. 



   



{% note info %}
If you change the default store currency don't forget to update the rates using the 'Update Rates' button for the prices to be displayed correctly.
{% endnote %}

When installed and configured, the addon in action will look as follows in the store front end:

![customer.png]({{site.baseurl}}/attachments/ref_2tPJubPU/customer.png)

A customer will see the currency and the language of the country his IP belongs to. A language switch will be available only if {% link "translations" ref_1frAlu26 %} are enabled in the store. If there are no particular currency and translation defined for the customers location the store content will be displayed in the default currency and language.

{% note warning %}
The currency that will be used for orders processing will depend on the payment gateway you are using. Some payments allow orders processing only in the default store currency. Others allow to accept payments in more than one currency. Please, check with your payment processing company for details.
{% endnote %}
