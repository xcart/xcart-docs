---
lang: en
layout: article_with_sidebar
updated_at: '2015-12-24 00:00'
identifier: ref_DmCBnKwz
title: 'Countries, States and Zones'
categories:
  - home
order: 40
icon: flag
description: Set up geographic zones for your shipping and tax rules
published: true
---
## General Information on Zones

In X-Cart 5, zones (also known as "destination zones" or "address zones") are a means to configure and apply tax and shipping rules based on the customer's geographic location. A zone is a subset of countries, states and zip/postal codes that make up a specific region to which certain rules must apply. 

Here are some examples of how zones can be used:

*   You want to set up a sales tax of 7% for New Jersey in the United States. Create a zone that will consist of just this one state, New Jersey, and then configure the respective sales tax rate for this zone.
*   You want to offer free delivery within the UK, a flat fee of £7.50 for delivery to other countries in Europe, and a flat delivery fee of £13.95 for delivery to the rest of the world. Create three zones: one zone for the UK that will include only the UK, another zone for Europe that will include all the countries in Europe to which you will ship orders at £7.50 per order and a third zone for the rest of the world that will include all the other countries to which you will ship orders at £13.95 per order. Then set up the respective shipping rates for each of the zones.
*   You want to offer free delivery on orders shipped to addresses in the immediate vicinity of your store. Create a zone based on your store's zip code (or several zip codes corresponding to the areas adjoining the zip code area where your store is located) and set up free shipping for this zone.

The number of zones you will need depends on the complexity of tax and shipping configuration you want to achieve. You can create any number of zones, but, in fact, you will only need as many zones as will be enough to configure your store's shipping and tax rules. Note that your zones for taxes do not have to be the same as your zones for shipping.

## How X-Cart Determines a Customer's Address Zone 

When X-Cart needs to determine the tax or shipping rate that needs to be applied to a customer's cart, it checks the customer's address to see which zone this address belongs to. For that, X-Cart goes consecutively through the customer's address fields - the country, the state and the zip/postal code - and matches them against the respective fields of each zone. If it finds that the customer's country is listed among the countries included into a zone, it goes on to check the customer's state. If the zone's state list is empty (i.e., the zone includes all the states in the country), the customer's address is identified as belonging to the zone. If the zone's state list is not empty, and the customer's state is not on that list, the customer's address is identified as not belonging to this zone (So, X-Cart will need to find another zone to which the address can be matched). If the zone's state list is not empty, and the customer's state is listed among the states included into the zone, the matching process continues on to the zip/postal code field. Similarly to the previous step, the zone's field for zip/postal codes may be empty, in which case the customer's address will be identified as belonging to the zone, or it may contain some zip/postal codes or zip/postal code masks, in which case X-Cart will match the customer's zip/postal code against the contents of this field and may find the customer's address to match or not to match the zone.

If the customer's address is found to match more than one zone, X-Cart will have to range all the zones matching the customer's address by "weight": zones with the largest number of parameters (country, state, zip/postal code) that match the customer's address are deemed to have the greatest "weight". So, when X-Cart needs to find a tax or shipping rate for an order, and the customer's address matches more than one zones, X-Cart will first look for rates defined for the zone that has the greatest "weight". If no rates for this zone can be found, X-Cart will go on to look for rates for the next zone, and so on. The last zone is always the built-in "All Addresses (default zone)"; this zone has zero "weight" and is used only if no other zone can be applied. 

_In this section:_

*   {% link "The “All Addresses” (Default) Zone" ref_4kPvWTw2 %}
*   {% link "Setting up Address Zones" ref_r68iO5Rm %}
