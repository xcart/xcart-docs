---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-21 14:33 +0400'
identifier: ref_2tPJubPU
title: Multicurrency Module
order: 170
published: true
---
If you sale worldwide it makes sense to use the [Multicurrency](https://market.x-cart.com/addons/multicurrency-for-xcart5.html "Multicurrency Module") module to make purchases easier for your international customers.

{% note info %}
The Multicurrency module works in a bundle with the {% link "Geolocation Module" ref_34F5BkhW %} that uses a free "GeoLite2 Country" database by MaxMind.  So, please, check that the Geolocation module is enabled. The "GeoLite2 Country" database allows to define a customer's location accurate to a country. If you need to improve the accuracy you can upload other databases on the Geolocation module settings page.

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)</div>
  <div class="column" markdown="span">![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)</div>
</div>
{% endnote %}

To enable the Multicurrency module please follow instructions from {% link "Installing and activating addons" ref_0fGEpvrh %}.

Once installed the Multicurrency module will become available in the **Store setup** -> **Localization** section of your store admin area.

![currencies.png]({{site.baseurl}}/attachments/ref_2tPJubPU/currencies.png)

Please, refer to the **Currencies** tab to configure the module settings that are as follows:

* **Hide trailing zeros in fractional part** : If enabled a price will be displayed without decimals
* **Online currency rates service** : Choose a currency converter or set to NONE to define the conversion rates manually
* **Update online rates every** : Set a periodicity of the rates revision
* **Add currency** (button and drop-down): Choose a currency you want to add in a drop-down and click the 'Add currency' button

Each currency comes with a pre-set list of countries it's applicable to. If you want you can add/remove countries to/from the list by clicking the 'Countries' field. Each country can be assigned to one currency only.

{% note info %}
If you change the default store currency don't forget to update the rates using the 'Update Rates' button for the prices to be displayed correctly.
{% endnote %}

When installed and configured the module in action will look as follows in the store front-end:

![customer.png]({{site.baseurl}}/attachments/ref_2tPJubPU/customer.png)

A customer will see the currency and the language of the country his IP belongs to. A language switch will be available only if {% link "translations" ref_1frAlu26 %} are enabled in the store. If there are no particular currency and translation defined for the customers location the store content will be displayed in the default currency and language.

{% note warning %}
The currency that will be used for orders processing will depend on the payment gateway you are using. Some payments allow orders processing only in the default store currency. Others allow to accept payments in more than one currency. Please, check with your payment processing company for details.
{% endnote %}
