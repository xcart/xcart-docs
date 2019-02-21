---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-05 14:08 +0400'
identifier: ref_34F5BkhW
title: Geolocation Addon
order: 125
published: true
---
To improve the user experience of non-logged in customers, X-Cart 5 can be integrated with a free IP geolocation database GeoLite by Maxmind through the use of [Geolocation](https://market.x-cart.com/addons/geolocation.html) addon. The addon works in a bunble with many other features in X-Cart and enables the store, for example, to "guess" a customer's country and address for a more precise pre-login shipping cost estimation.

Before you start, ensure that the addon Geolocation is {% link "installed and enabled" ref_0fGEpvrh %}. 
![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)

To check and adjust the geolocation configuration settings, proceed to the addon settings page:
![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)

By default, X-Cart uses MaxMind's database GeoLite2-Country.mmdb which can be used to identify a customer's location to a country level. The default database provider is preset in the **Default geolocation provider** field on the addon settings page.

The rest of the settings are as follows:

* **Display location select widget** : This setting toggles the location select widget _"My location"_ in the storefront header.  
    ![my-location-widget.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget.png)
    
    This widget enables a customer to specify their location to a zip code level. 
    ![my-location-widget-2.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget-2.png)
    
    **Important**:
    In Crisp White skin, a customer will be able to specify their location via the _"My Location"_ select widget only if the store provides multiple currencies for the customer to choose from. That may be the case if the store has the addon {% link "Multicurrency" ref_2tPJubPU %} installed and enabled. 
    If the store has only one currency and one language enabled, the widget will not be displayed.
    If the store has a single currency and more than one languages enabled, the widget will show the customer's country as has been identified automatically based on the customer's IP address, but will not provide the customer with controls to change their location. 
    
    
* **Upload extended database** : You can upload an extended .mmdb database to get user location by IP more accurately. 
    With MaxMind databases you can choose between:
    * [free GeoLite2 databases](https://dev.maxmind.com/geoip/geoip2/geolite2/ "Geolocation Addon")
    * [paid GeoIP2 databases](https://www.maxmind.com/en/geoip2-databases?%25refID=xcart%25 "Geolocation Addon")
    
    MaxMind GeoIP2 databases are more accurate than GeoLite2 databases. The default GeoLite2-Country database can be used to identify a customer's location to the level of a country. If you need a more accurate database, you can switch to a free GeoLite2-City database that can help you to estimate a customer's location to a city. If you need more options, try one of the paid GeoIP2 databases.
    
    To upload a new database, download a zipped database package from maxmind.com, unpack the database archive to access the .mmdb file and upload the .mmdb file to your X-Cart installation using the "Choose file" option opposite the **Upload extended database** field. 
      
      {% note info %}
      If necessary you can revert to using the default database by enabling a special checkbox option under the **Database file in use** field value.
      {% endnote %}

* **Database file in use** : The field shows the database file that is currently in use by the Geolocation addon.
