---
lang: en
layout: article_with_sidebar
updated_at: '2019-12-18 09:43 +0400'
identifier: ref_3MxAUhHQ
title: Default Customer Address
order: 150
published: true
---
When calculating delivery costs and adding tax fees to an order of a registered customer X‑Cart uses the shipping address recorded in the customer account. But what if a customer is not logged in or is just an anonymous buyer, how the would-be tax fees and delivery costs are calculated in this case? X‑Cart uses either the settings defined by a store admin as a default customer address or the data from the Geolocation addon integration to calculate the average additional fees involved in the purchase and displays these extra charges to a visitor until they specify the real shipping address at checkout. 

{% toc %}

## Default Customer Address: Manual Setup

The default customer address is specified by a store admin on the **Default Customer Address** page of the "Cart & Checkout" section of your store Admin area (**Store setup** -> **Cart & Checkout**).
![540-default-customer-address.png]({{site.baseurl}}/attachments/ref_3MxAUhHQ/540-default-customer-address.png)

The settings that a store admin needs to define on this page are as follows:
* **Address line** : Define a default customer street address if applicable. This setting is optional. 
* **Country** : Choose a country from the drop-down that you want to be set as a default country for the taxes and shipping calculations for all unregistered customers.
* **State** : For the countries that have states choose a state from the drop-down that you want to be set as a default state for the taxes and shipping calculations for all unregistered customers.
* **City** : Define a city or town that you want to be set as a default city for the taxes and shipping calculations for all unregistered customers.
* **Zip/postal code** : Define the the customer’s postal code, also known as zip, postcode, Eircode, etc. that should be used as a default postal code for the taxes and shipping calculations for all unregistered customers.
* **Address type** : Select the address type from a drop-down. You can choose between residential and commercial types of address. 

When all the settings are defined it is nessecary to click **Submit** to make the configuration active.

Provided {% link "shipping" ref_4noivtKM %} and {% link "taxes" ref_kJmd7K27 %} have been configured by a store admin for the {% link "zone" ref_4malFwSp %} set as a default customer address, any not logged in customer will see the corresponding tax and delivery rates both on the cart page and at checkout before the rela address is defined:

<div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>Cart page</b>![540-cus-cart-page.png]({{site.baseurl}}/attachments/ref_3MxAUhHQ/540-cus-cart-page.png)</div>
  <div class="column" markdown="span"><b>Checkout page</b>![540-cus-checkout.png]({{site.baseurl}}/attachments/ref_3MxAUhHQ/540-cus-checkout.png)</div>
</div>

## Default Customer Address: Geolocation addon

If you need the default customer address to be more flexible and match the exact customer's location, it is possible to use the facilities of the {% link "Geolocation addon" ref_34F5BkhW %} istead of a manually predefined customer address, that is enabled by default in X-Cart 5.4.x.

![540-dca-geolocation-on.png]({{site.baseurl}}/attachments/ref_3MxAUhHQ/540-dca-geolocation-on.png)

With the "Geolocation" addon enabled the default address customer will be defined by a customer IP:

<div class="ui stackable two column grid">
  <div class="column" markdown="span">![540-cus-geolocation.png]({{site.baseurl}}/attachments/ref_3MxAUhHQ/540-cus-geolocation.png)</div>
  <div class="column" markdown="span">![540-cus-cart-geolocation.png]({{site.baseurl}}/attachments/ref_3MxAUhHQ/540-cus-cart-geolocation.png)</div>
</div>
