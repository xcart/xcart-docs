---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-24 10:29 +0400'
identifier: ref_6RGhfg0l
title: '## General Information on Zones'
order: 10
published: false
---
In X-Cart 5, zones (also known as "destination zones" or "address zones") are a means to configure and apply tax and shipping rules based on the customer's geographic location. A zone is a subset of countries, states and zip/postal codes that make up a specific region to which certain rules must apply. 

Here are some examples of how zones can be used:

*   You want to set up a sales tax of 7% for New Jersey in the United States. Create a zone that will consist of just this one state, New Jersey, and then configure the respective sales tax rate for this zone.
*   You want to offer free delivery within the UK, a flat fee of £7.50 for delivery to other countries in Europe, and a flat delivery fee of £13.95 for delivery to the rest of the world. Create three zones: one zone for the UK that will include only the UK, another zone for Europe that will include all the countries in Europe to which you will ship orders at £7.50 per order and a third zone for the rest of the world that will include all the other countries to which you will ship orders at £13.95 per order. Then set up the respective shipping rates for each of the zones.
*   You want to offer free delivery on orders shipped to addresses in the immediate vicinity of your store. Create a zone based on your store's zip code (or several zip codes corresponding to the areas adjoining the zip code area where your store is located) and set up free shipping for this zone.

The number of zones you will need depends on the complexity of tax and shipping configuration you want to achieve. You can create any number of zones, but, in fact, you will only need as many zones as will be enough to configure your store's shipping and tax rules. Note that your zones for taxes do not have to be the same as your zones for shipping.