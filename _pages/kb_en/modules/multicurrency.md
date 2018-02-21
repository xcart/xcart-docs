---
lang: en
layout: article_with_sidebar
updated_at: '2018-02-21 14:33 +0400'
identifier: ref_2tPJubPU
title: Multicurrency Module
order: 100
published: true
---
If you sale worldwide it makes sense to use the [Multicurrency](https://market.x-cart.com/addons/multicurrency-for-xcart5.html "Multicurrency Module") module to make purchases easier for your international customers. The module will switch the store currency and language based on the customers location defined by the GeoIP data.

{% note info %}
The Multicurrency module uses a GeoIP database that allows to define a customer's location accurate to a country. If you need to improve the accuracy you can use custom paid GeoIP databases.
{% endnote %}

To enable the module please follow instructions from {% link "Installing and activating addons" ref_0fGEpvrh %}.

Once installed the module will become available in the **Store setup** -> **Localization** section of your store admin area.

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
The Multicurrency module affects only the prices representation, not the orders processing. All orders will be processed in the default store currency only.
{% endnote %}
