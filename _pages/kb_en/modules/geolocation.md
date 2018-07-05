---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-05 14:08 +0400'
identifier: ref_34F5BkhW
title: Geolocation Module
order: 176
published: true
---
To improve the user experience of non-logged in customers X-Cart 5 is integrated with a free IP geolocation database GeoLite by Maxmind within the [Geolocation module](https://market.x-cart.com/addons/geolocation.html). The module works in bunble with many other features in X-Cart and allows e.g. to "guess" the customers' country and address for more precise pre-login shipping cost estimation.

First of all, check that the Geolocation module is {% link "installed and enabled" ref_0fGEpvrh %}. 

 ![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)

If you need to change the geolocation configuration settings proceed to the module settings page. It will look as follows:

![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)

By default, X-Cart uses the MaxMind GeoIP2 database (GeoLite2-Country.mmdb) that allows to define a customer's location accurate to a country. The default database is predefind in the **"Default geolocation provider"** field on the module settings page.

The rest of the settings are:

* **Display location select widget** : When enabled a _"My location"_ select widget is displayed in the header of the store frontend. 
    
    ![my-location-widget.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget.png)
    
    This widget allows a customer to specify his location accurate to a zipcode. 
    
    ![my-location-widget-2.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget-2.png)
    
    {% note info %}
    For the Crisp White skin the _"My Location"_ select widget is displayed only if there is an opportunity for a customer to choose between several currencies (i.e. the {% link "Multicurrency Module" ref_2tPJubPU %} is installed and enabled). 
    
    If a store has only one currency and one language set up the widget is not displayed. If a store has a single currency and several languages set up the widget displays the country that is defined automatically by the customer's IP without an oppotunity to change it. 
    {% endnote %}
    
* **Upload extended database** : You can upload an extended .mmdb database to get user location by IP more accurately. More info on the databases available you can get [here](https://www.maxmind.com/en/geoip2-databases?%refID=xcart% "Geolocation Module"). 
* **Database file in use** : The field shows the database file that is currently in use by the Geolocation module.
