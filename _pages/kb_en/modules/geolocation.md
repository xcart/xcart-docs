---
lang: en
layout: article_with_sidebar
updated_at: '2018-07-05 14:08 +0400'
identifier: ref_34F5BkhW
title: Geolocation Addon
order: 125
published: true
---
To improve the user experience of non-logged in customers, X-Cart 5 can be integrated with a free IP geolocation database GeoLite by MaxMind through the use of the addon **[Geolocation](https://market.x-cart.com/addons/geolocation.html)**. The Geolocation addon works in a bundle with many X-Cart features and enables your store, for example, to "guess" a customer's country and address for a more precise pre-login shipping cost estimation. 

Note that the addon uses a downloadable database of IP addresses, not a web-service. By default, MaxMind's database GeoLite2-Country.mmdb is used which enables the store to identify a customer's location to a country level. If necessary, a more advanced database may be installed via the addon settings.

To start using geolocation in your X-Cart store, ensure that the addon Geolocation by X-Cart team is {% link "installed and enabled" ref_0fGEpvrh %}. 
![geolocation.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation.png)

We also recommend you check the PHP configuration on your store server, or have your hosting provider support team check it for you. The addon Geolocation requires PHP OPcache extension for its operation, and it is essential that the following PHP OPcache configuration parameters should be adjusted as follows:

```
opcache.use_cwd=1
opcache.revalidate_path=1
opcache.validate_timestamps=1
opcache.revalidate_freq=0
```

To check and adjust your store's geolocation settings, proceed to the addon settings page in your X-Cart store Admin area.
![geolocation-settings.png]({{site.baseurl}}/attachments/ref_2tPJubPU/geolocation-settings.png)

The following settings are available:

* **Default geolocation provider**: The default database provider (Preset to MaxMind GeoIP2).

* **Display location select widget**: This setting toggles the location select widget _"My location"_ in the storefront header.  
    ![my-location-widget.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget.png)
    
    This widget enables a customer to specify their location to a zip code level. 
    ![my-location-widget-2.png]({{site.baseurl}}/attachments/ref_34F5BkhW/my-location-widget-2.png)
    
    **Important**:
    In Crisp White skin, a customer will be able to specify their location via the _"My Location"_ select widget only if the store provides multiple currencies for the customer to choose from. That may be the case if the store has the addon {% link "Multicurrency" ref_2tPJubPU %} installed and enabled. 
    If the store has only one currency and one language enabled, the widget will not be displayed.
    If the store has a single currency and more than one languages enabled, the widget will show the customer's country as has been identified automatically based on the customer's IP address, but will not provide the customer with controls to change their location. 
    
* **Upload extended database** : You can upload an extended .mmdb database to be able to identify a user's location by IP more accurately. 
    MaxMind provides the following database options:
    * [Free GeoLite2 databases](https://dev.maxmind.com/geoip/geoip2/geolite2/ "Geolocation Addon")
    * [Paid GeoIP2 databases](https://www.maxmind.com/en/geoip2-databases?%25refID=xcart%25 "Geolocation Addon")
    
    MaxMind GeoIP2 databases are more accurate than GeoLite2 databases. The GeoLite2-Country database that is used by default can be used to identify a customer's location to the level of a country. If you need higher geolocation precision, you can switch to a free GeoLite2-City database that can help you to estimate a customer's location to a city. If you need more options, try one of the paid GeoIP2 databases.
    
    To upload a new database, download a zipped database package from maxmind.com, unpack the database archive to access the .mmdb file and upload the .mmdb file to your X-Cart installation using the "Choose file" option opposite the **Upload extended database** field. 
      
    If necessary, after uploading an extended database, you can revert to the default database using the **Revert to using the default database** option below the **Database file in use** field value.
      
* **Database file in use** : The field shows the database file that is currently in use by the Geolocation addon.
