---
lang: en
layout: article_with_sidebar
updated_at: '2016-10-04 17:28 +0400'
identifier: ref_KqsCJNRG
title: XC4 to XC5 Migration Wizard System Requirements and Installation
order: 100
published: false
---
At the moment of the writing of this article, the addon "XC4 to XC5 Migration wizard" is recommended for use on X-Cart versions 5.3.0.x and later. It provides a tool for the migration of data and settings from X-Cart 4 based online stores (versions 4.1.0 or later) to the X-Cart 5 platform. For the most up-to-date information on the addon compatibility, please see the [addon page](https://market.x-cart.com/addons/migration-wizard.html).

The system requirements for the addon "XC4 to XC5 Migration wizard" are generally the same as those for the X-Cart 5 version you are using. However, for best performance we recommend using PHP 7.1 (or at least PHP 5.6+). 
If the X-Cart 4 store from which the data is going to be migrated to the X-Cart 5 platform has products with a large number of variants (like 50+ variants per product), it is necessary to ensure that the Request timeout on your server is set to a sufficient value.

   * _Apache configuration:_

     In the Apache config file, the TimeOut value must be set to 600 or higher; for example:
     
     ```TimeOut 600```

     In php.ini, if safe_mode = off, no additional settings need to be adjusted. If php.ini safe_mode = on, ensure that the max_execution_time setting is adjusted to 600 or higher; for example: 
     
     ```max_execution_time = 600```

   * _nginx configuration:_

     In the nginx config, the fastcgi_read_timeout value must be set to 600 or higher; for example: 
     
     ```fastcgi_read_timeout 600;```

     In the php-fpm config, the request_terminate_timeout value must be set to 600 or higher; for example:
     
     ```request_terminate_timeout = 600```

     In php.ini, if safe_mode = off, no additional settings need to be adjusted.  If php.ini safe_mode = on, ensure that the max_execution_time value is set to 600 or higher; for example: 
     
     ```max_execution_time = 600```


To migrate your X-Cart 4 store to X-Cart 5, you need:

   * Your existing X-Cart 4 store. 
   
   For the migration, you will need to provide the migration addon with your X-Cart 4 database connection details and your store URL, so be sure to have those at hand when you launch the Migration wizard.
   
   * A fresh installation of X-Cart 5. 
     
     {% note warning %}
     **Important**: Be sure to use the default build configuration that you get right out of the distribution package. Do not install any additional addons and do not attempt any customizations of the X-Cart 5 store's default functionality or look & feel before your X-Cart 4 data and settings have been fully migrated. Be sure to remove any demo data that may be present in the X-Cart 5 store (A link to the "Remove data" tool will be provided at the first step of the Migration wizard).
     {% endnote %}
     
   * Migration wizard addon installed on your X-Cart 5 store.
   
     The addon can be obtained from the X-Cart Marketplace. To install and enable the Migration wizard addon on your system, follow the general addon installation instructions. See {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.
     ![xc5_mw_module_install.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module_install.png)
     
     **Important**: The addon Migration wizard requires the addon [Order import](https://market.x-cart.com/addons/orders-import.html "XC4 to XC5 Migration wizard system requirements and installation") for its operation. If you are trying to install the Migration wizard addon from the X-Cart Marketplace, but don't see the button to install it (like in the screenshot below), the reason may be that your store is lacking the Order import addon. To install the Migration wizard, be sure to {% link "install and enable" ref_uEnDBBA7 %} the Order import addon first.
     ![xc5_mw_module.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module.png)
     
     Once the addon "XC4 to XC5 Migration wizard" has been installed on your X-Cart 5 store, you will be able to find it in the **My addons** section of the store Admin area:
     ![xc5_mw_module_installed.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module_installed.png)

After installing the addon you can proceed to the migration of your store data and settings. See {% link "Using the Addon 'XC4 to XC5 Migration Wizard'" ref_Ah935naM %} for detailed info.

_Related pages:_

   *   {% link "How XC4 to XC5 Migration Wizard Works" ref_37NAeGlf %}
   *   {% link "Using the Addon 'XC4 to XC5 Migration Wizard'" ref_Ah935naM %}
