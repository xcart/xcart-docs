---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-21 14:33 +0400'
identifier: ref_2tPJubPU
title: Multicurrency Addon
order: 170
published: true
---
If you sale worldwide it makes sense to use the addon [Multicurrency](https://market.x-cart.com/addons/multicurrency-for-xcart5.html "Multicurrency") to make purchases easier for your international customers.

{% note info %}
The Multicurrency addon works in a bundle with the addon {% link "Geolocation" ref_34F5BkhW %} that uses a free "GeoLite2 Country" database by MaxMind.  So please ensure that the addon Geolocation is enabled. The "GeoLite2 Country" database allows to define a customer's location accurate to a country. If you need higher accuracy, you can upload other databases on the Geolocation addon settings page.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)</div>
  <div class="column" markdown="span">![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)</div>
</div>
{% endnote %}

To enable the Multicurrency addon, follow the instructions from {% link "Installing and Activating Addons" ref_0fGEpvrh %}.

Once the addon has been installed, the Multicurrency addon will become available in the **Store setup** -> **Localization** section of your store admin area.

![settings-536.png]({{site.baseurl}}/attachments/ref_2tPJubPU/settings-536.png)

Please refer to the **Currencies** tab to configure the addon settings:

* **Hide trailing zeros in fractional part** : If enabled a price will be displayed without decimals.
* **Online currency rates service** : Choose a currency converter or set to NONE to define the conversion rates manually.
* **Currency converter API key** : This field becomes avaiable if _The Currency Converter API_ or _The Free Currency Converter API_ options are chosen as **Online currency rates service**. Specify your currency converter API key here. 
  To get an API key please refer to [https://www.currencyconverterapi.com/](https://www.currencyconverterapi.com/ "Multicurrency Addon") and [https://free.currencyconverterapi.com/](https://free.currencyconverterapi.com/ "Multicurrency Addon") respectively.
  
* **Update online rates every** : Set a periodicity of the rates revision.
* **Add currency** (button and drop-down): Choose a currency you want to add in a drop-down and click the 'Add currency' button

Each currency comes with a pre-set list of countries it's applicable to. If you want you can add/remove countries to/from the list by clicking the 'Countries' field. Each country can be assigned to one currency only.

{% note info %}
If you change the default store currency don't forget to update the rates using the 'Update Rates' button for the prices to be displayed correctly.
{% endnote %}

When installed and configured, the addon in action will look as follows in the store front end:

![customer.png]({{site.baseurl}}/attachments/ref_2tPJubPU/customer.png)

A customer will see the currency and the language of the country his IP belongs to. A language switch will be available only if {% link "translations" ref_1frAlu26 %} are enabled in the store. If there are no particular currency and translation defined for the customers location the store content will be displayed in the default currency and language.

{% note warning %}
The currency that will be used for orders processing will depend on the payment gateway you are using. Some payments allow orders processing only in the default store currency. Others allow to accept payments in more than one currency. Please, check with your payment processing company for details.
{% endnote %}
