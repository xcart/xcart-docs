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
![540-addon-enabled.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-addon-enabled.png)

{% toc %}

## Multicurrency Addon Overview

When considering using the addon, keep in mind that the Multicurrency addon supports the display-only type of currencies. This means that it allows to convert prices and all product-related costs from a {% link "default currency" ref_2dx6iFtL %} into a customer native currency and display it in the storefront and at checkout. All transactions in X-Cart, however, will be processed in a default store currency regardless of the currency used by a customer to place an order.

The Multicurrency addon works in a bundle with the addon {% link "Geolocation" ref_34F5BkhW %} that uses a free "GeoLite2 Country" database by MaxMind. 
![540-geolocation-enabled.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-geolocation-enabled.png)

The "GeoLite2 Country" database allows to define a customer's location accurate to a country. If you need higher accuracy, you can upload other databases on the Geolocation addon settings page.
![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)


## Multicurrency Addon Setup

{% note warning %}
PREREQUISITES:

Before configuring the Multicurrency addon, please ensure that the addon {% link "Geolocation" ref_34F5BkhW %} is installed and enabled. 
{% endnote %}

To enable the Multicurrency addon, follow the instructions from {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

### Configuring the Addon General Settings

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

To complete the Multicurrency addon set-up use the **Add currency** drop-down and button to enable as many display-only currencies in the storefront as you may need. 

To add a new currency to the list:
1. Open the **Currencies** page in the **Store setup** -> **Localization** section of your store Admin area
2. Choose a currency code you want to add in a drop-down;
   ![540-add-currency.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-add-currency.png)
3. Click the **Add currency** button.
   
### Editing Currency Properties

Each new currency is added to the list of currencies available for display in the storefront with a number of properties reset. A list of currencies may look as follows:
![540-currencies-list.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-currencies-list.png)

A store admin can edit the following properties:
* **Format** : A format of the currency representation in the storefront. To change the format a store admin should use the options from the related drop-down.
* **Prefix** : A currency prefix. The value is defined automatically for each currency. If it is necessary to change the value, click inside the field and type the required value instead of a predefined one.
* **Suffix** : A currency suffix. The value is defined automatically for each currency. If it is necessary to change the value, click inside the field and type the required value instead of a predefined one.
* **Rate** : A currency exchange rate. The value can be either preset provided the **Online currency rates service** and **Currency converter API key** general addons settings are configured accordingly, or set up manually by a store admin. To change the exchnage rate click inside the field and enter the value required. 
* **Countries** : Each new currency is added with a pre-set list of countries it's applicable to. A store admin can add or remove the countries from the list of assigned to a currency by clicking into the 'Countries' field and choosing the necessary countries from the drop-down. Each country can be assigned to one currency only.

A store admin can also: 

1. Re-order currencies in the list using the **Cross** icon to drag-n-drop (this will affect the order of currencies display in the currency drop-down in the storefront): 
   ![540-currencies-list-reorder.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-currencies-list-reorder.png)
2. Enable/Disable currencies in the list using the **ON/OFF** icon opposite a currency in question:
   ![540-currencies-list-enable.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-currencies-list-enable.png)
3. Change the default currency for the store using a special selector:
   ![540-currencies-list-default-currency.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-currencies-list-default-currency.png)

   {% note info %}
   If you change the default store currency don't forget to update the rates using the 'Update Rates' button for the prices to be displayed correctly.
   {% endnote %}

4. Delete currencies from the list using the **Trash** icon opposite a currency in question:
   ![540-currencies-list-delete.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-currencies-list-delete.png)
   
Use the **Save changes** button to make the new settings active.

## Customer Experience

When installed and configured, the addon in action will look as follows in the storefront:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![540-storefront-1.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-storefront-1.png)</div>
  <div class="column" markdown="span">![540-storefront-2.png]({{site.baseurl}}/attachments/ref_2tPJubPU/540-storefront-2.png)</div>
</div>


A customer will see the currency and the language of the country his IP belongs to. If there are no particular currency and translation defined for the customers location the store content will be displayed in the default currency and language.

{% note warning %}
The currency that will be used for orders processing will depend on the payment gateway configured in the store. Some payments allow orders processing only in the default store currency. Others allow to accept payments in more than one currency. Please, check with your payment processing company for details.
{% endnote %}
