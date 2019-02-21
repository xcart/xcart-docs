---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-05 14:08 +0400'
identifier: ref_34F5BkhW
title: Geolocation Module
order: 125
published: true
---
To improve the user experience of non-logged in customers, X-Cart 5 can be integrated with a free IP geolocation database GeoLite by Maxmind through the use of [Geolocation](https://market.x-cart.com/addons/geolocation.html) addon. The addon works in a bunble with many other features in X-Cart and enables the store, for example, to "guess" a customer's country and address for a more precise pre-login shipping cost estimation.

First of all, check that the Geolocation module is {% link "installed and enabled" ref_0fGEpvrh %}. 
![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)

To check and adjust the geolocation configuration settings, proceed to the addon settings page:
![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)

By default, X-Cart uses MaxMind's database GeoLite2-Country.mmdb which can be used to identify a customer's location to a country level. The default database provider is preset in the **Default geolocation provider** field on the addon settings page.

The rest of the settings are as follows:

* **Display location select widget** : When enabled, the location select widget _"My location"_ is displayed in the header on the storefront. 
    ![my-location-widget.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget.png)
    
    This widget enables a customer to specify their location to a zip code level. 
    
    ![my-location-widget-2.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget-2.png)
    
    {% note info %}
    For Crisp White skin, the _"My Location"_ select widget is displayed only if there is an opportunity for a customer to choose between several currencies (i.e. the {% link "Multicurrency Module" ref_2tPJubPU %} is installed and enabled). 
    
    If the store has only one currency and one language configured, the widget is not displayed. If the store has a single currency and more than one languages configured, the widget displays the country that is defined automatically by the customer's IP without an oppotunity to change it. 
    {% endnote %}
    
* **Upload extended database** : You can upload an extended .mmdb database to get user location by IP more accurately. 
    With MaxMind databases you can choose between:
    * [free GeoLite2 databases](https://dev.maxmind.com/geoip/geoip2/geolite2/ "Geolocation Module")
    * [paid GeoIP2 databases](https://www.maxmind.com/en/geoip2-databases?%25refID=xcart%25 "Geolocation Module")
    
    MaxMind GeoIP2 databases are more accurate than GeoLite2 databases. The default GeoLite2-Country database can be used to identify a customer's location to the level of a country. If you need a more accurate database, you can switch to a free GeoLite2-City database that can help you to estimate a customer's location to a city. If you need more options, try one of the paid GeoIP2 databases.
    
    To upload a new database, download a zipped database package from maxmind.com, unpack the database archive to access the .mmdb file and upload the .mmdb file to your X-Cart installation using the "Choose file" option opposite the **Upload extended database** field. 
      
      {% note info %}
      If necessary you can revert to using the default database by enabling a special checkbox option under the **Database file in use** field value.
      {% endnote %}

* **Database file in use** : The field shows the database file that is currently in use by the Geolocation addon.
