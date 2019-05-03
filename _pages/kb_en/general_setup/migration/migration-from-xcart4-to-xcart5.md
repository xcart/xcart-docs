---
lang: en
layout: article_with_sidebar
updated_at: '2019-04-12 16:26 +0400'
identifier: ref_2h75KMlS
title: Migration from X-Cart 4 to X-Cart 5
order: 20
published: true
redirect_from:
  - general_setup/migration/migration_from_x-cart_4_to_x-cart_5.html
---
## Introduction

This article describes how you can upgrade your existing X-Cart 4 store to X-Cart 5.

[General overview of upgrade options on x-cart.com](https://www.x-cart.com/x-cart-migration.html).

Basically, you have three routes:
1. You can perform the upgrade yourself (DIY option);
2. You can hire X-Cart team to perform the upgrade for you (Professional and Custom options);
3. You can hire 3rd party to perform the upgrade for you (DIY option + whatever agreement you come up with 3rd party).

This article describes how one can perform the data migration process themselves.

If you also need to transfer custom data and custom functionality, there is no guide for that. 
Custom functionality has to be re-implemented to X-Cart 5 and you can either do that yourself, hire 3rd party or [hire our development team](https://www.x-cart.com/contact-us.html) for this task.

The same applies to the custom data.

{% toc Table Of Contents %}

## What data is migrated

The data migration is done via our [X-Cart v4 to v5 Data Migration Wizard module](https://market.x-cart.com/addons/migration-wizard.html). Below is what data will be transferred by this module:

<table class="ui compact padded celled small table">
  <tbody>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Сonfiguration settings</span>
      </td>
      <td colspan="1" class="confluenceTd">
- General settings;
<br />- Default customer address; 
<br />- Weight and Length symbols; 
<br />- Purchase limits; 
<br />- Defaut admin/customer language; 
<br />- Ship-from address;          
<br />- Contact Us information. Contact Us form settings are not migrated to X-Cart 5;
<br />- SEO-friendly URLs. Clean URLs are enabled in X-Cart 5 automatically;
<br />
<br />- The currency is NOT transferred and you need to define the currency in X-Cart 5 before the migration.
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Сontent</span>
      </td>
      <td colspan="1" class="confluenceTd">
- Static pages (Only embedded ones);
<br />- Menu items from Speed bar section.
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Products</span>
      </td>
      <td colspan="1" class="confluenceTd">
- General info (name, price, sku, etc);
<br />- Images and Detailed images;
<br />- Clean URLs;
<br />- Product options (including product variants and variant images);
<br />- International descriptions;
<br />- Product reviews and votes;
<br />- Related products;
<br />- Wholesale prices (for product variants as well);
<br />- Feature comparison;
<br />- Extra fields. They will be converted to Attributes in X-Cart 5;
<br />- Bestsellers. Bestsellers settings are not migrated to X-Cart 5;
<br />- E-Goods. Only the filepaths are migrated. The files themselves are not transitioned.
      </td>
    </tr>  
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Categories</span>
      </td>
      <td colspan="1" class="confluenceTd">
- General info (name, description, etc);
<br />- Images;
<br />- Clean URLs;
<br />- International descriptions;
<br />- Featured products.
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="1" class="confluenceTd"><span>Users</span>
      </td>
      <td colspan="1" class="confluenceTd">
All info;
<br />
<br />How to transfer user passwords:
<br />- If you are migrating from X-Cart 4.1.x-4.4.x, you need to specify blowfish key on Hence all user passwords are migrated safely providing that a valid Blowfish key is specified at the <a href="https://kb.x-cart.com/modules/xc4_to_xc5_migration_wizard/using_the_xc4_to_xc5_migration_wizard.html#step-2---connect" target="_blank">Step 2 - Connect</a> of the migration wizard and passwords will be transferred properly;
<br />- If you are migrating from X-Cart 4.5.x and later, passwords will not work after the migration. In order to allow customers log in using old passwords, you need to install [Migration: Restore logins of X-Cart 4 users module](https://market.x-cart.com/addons/xcart-4-login.html) from the marketplace and specify X-Cart 4 blowfish key inside its settings.
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="1" class="confluenceTd"><span>Memberships</span>
      </td>
      <td colspan="1" class="confluenceTd">
All info including multilanguage data.
      </td>
    </tr>
    <tr class="top aligned">   
      <td colspan="1" class="confluenceTd"><span>Zones</span>
      </td>
      <td colspan="1" class="confluenceTd">
All info.
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Payment settings</span>
      </td>
      <td colspan="1" class="confluenceTd">  
Settings of the following payment processors are transferred:
<br />- AuthorizeNet;
<br />- EWay;
<br />- Moneybookers;
<br />- PayPal (Standard, Express Checkout, Payflow Link, Payflow Transparent Redirect, Paypal Advanced, Paypal WPS);
<br />- 2Checkout.
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Shipping settings</span>
      </td>
      <td colspan="1" class="confluenceTd">
User defined shipping methods and rates;
<br />Settings of the following real-time shipping processors:
<br />- Australia Post;
<br />- Canada Post;
<br />- DHL;
<br />- FedEx;
<br />- USPS;
Settings of UPS are NOT migrated.        
      </td>
    </tr>
    <tr class="top aligned">
      <td colspan="1" class="confluenceTd"><span>Orders</span>
      </td>
      <td colspan="1" class="confluenceTd">
All info.
      </td>
     </tr> 
  </tbody>
</table>

## System requirements

Migration Wizard module has the same system requirements as X-Cart 5, but since the module runs resource-heavy processes, you need to make sure that the server will not time out these processes.

The way to set it up will depend on the server's engine.

### Apache

The `TimeOut` value must be set to 600 or higher in the Apache config file, e.g.:
     
```TimeOut 600```

If `php.ini` has `safe_mode = on`, ensure that the `max_execution_time` setting is adjusted to 600 or higher, e.g: 
     
```max_execution_time = 600```

If `safe_mode = off`, no additional setup is needed. 

### nginx configuration

The `fastcgi_read_timeout` setting must be set to 600 or higher in the nginx config file, e.g.: 
     
```fastcgi_read_timeout 600;```

The `request_terminate_timeout` parameter must be set to 600 or higher in the php-fpm config file, e.g.:
     
```request_terminate_timeout = 600```

If `php.ini` has `safe_mode = on`, ensure that the `max_execution_time` setting is adjusted to 600 or higher, e.g: 
     
```max_execution_time = 600```

If `safe_mode = off`, no additional setup is needed.

### Does X-Cart 5 have to be on the same server as X-Cart 4?

The short answer is no, but there are subtle details. There are three possible situations, how your X-Cart 4 and X-Cart 5 stores can be installed.

1. You install X-Cart 5 on the same server as X-Cart 4. In this case, everything will just work.
2. You want to install X-Cart 5 on another server (some test server, local machine, etc). If you transfer the entire X-Cart 4 store there, everything will work just fine as well. 

	However, you can only transfer X-Cart 4's database and the following directories to save you some time:
	- `<X-Cart>/images/`;
	- `<X-Cart>/skin/common_files/pages/`;
	- `<X-Cart>/files/`, if you have e-goods.

	Put the database to MySQL server and place these directories inside some folder that would 'pretend' being X-Cart 4 for our migration task.

3. If you want to install X-Cart 5 on a new server, but keep X-Cart 4 on the new one, it can still work. In this case, you need to:
	- make sure that the MySQL on X-Cart 4 server allows remote connections. Contact your hosting team about that, if you face any troubles;
	- set the 'enable_copy_ext_images' option in [Migration Wizard's setting](#technical-side-of-how-the-module-transfers-the-data) to 'true'.


## Technical side of how the module transfers the data

The migration of data from X-Cart 4 to X-Cart 5 is based on the model importing. The data is processed in chunks, and the process may take a while depending on the volume of data that needs to be transferred.

To finely tune the process, the following settings are available in the `<X-Cart>/etc/config.local.php` file in your X-Cart 5 installation:

- **migration_chunk_length** defines the number of records to be processed during one iteration. The greater the value the faster the process will go, but it will be more likely that the process will be timed out by the server;
- **disable_secret_check** disables secret key check while connecting to DB;
- **disable_ssl_check** disables SSL check for URL-related operations; 
- **disable_follow_redirects** disables following HTTP redirects when processing URLs;
- **disable_images_import** disables import of all images;
- **enable_copy_ext_images** enables copying of external images to XC5 location. In other words, if your X-Cart 5 is on one server and X-Cart 4 is on another, X-Cart 5 will copy images by downloading it.

{% note info %}
If the `<X-Cart>/etc/config.local.php` file does not exist in your X-Cart 5 store, you will need to create it in order to use above settings. Below is the example of such file. Uncomment the settings you want to use by removing the ';' symbol at the front.
```php
; <?php /*
; WARNING: Do not change the line above
;
;  --------------------------------- 
; |   X-Cart 5 configuration file   |
;  --------------------------------- 

[migration_wizard]
;migration_chunk_length = 20
;disable_secret_check = true
;disable_ssl_check = true
;disable_follow_redirects = true
;disable_images_import = true
;enable_copy_ext_images = true

; WARNING: Do not change the line below
; */ ?>
```
{% endnote %}

{% note info %}
Do not apply any customizations before running the migration task and also make sure to remove all demo data from the installation. You can remove existing data from X-Cart via 'System tools > Remove data' section in your admin area.
{% endnote %}

{% note info %}
If you are not able to install 'X-Cart v4 to v5 Data Migration Wizard' module from the marketplace and see the following warning message:
![xc5_mw_module.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module.png)

Please make sure to install [Order import module](https://market.x-cart.com/addons/orders-import.html) first and then try to install 'X-Cart v4 to v5 Data Migration Wizard' module again.
{% endnote %}

## Demo migration 
You may choose to run a migration in the Demo mode. Only a limited number of categories, products, users and orders will be transferred in this case. 

If you have a really big store (say, 100 000 products), you can quickly see how your products, categories, orders, etc will look like on X-Cart 5 and after that make a decision whether to proceed with the complete transfer of your store or not.

To run a demo migration, select the 'Demo migration' option at the 'Select' step of the migration wizard, and only the following data will be migrated:

- 10 latest orders;
- products from those orders; 
- users for those orders;
- all the categories; 
- 10 products from one of the categories;
- the rest of the X-Cart 4 store data (settings, destination zones, static pages, etc) will be migrated in full.

After demo migration is completed, a link to the category with the migrated products will be provided, so the client can review these products.

## Syncing the data

If you performed the data migration and want to transfer only new entities or those that were changed since the initial migration, you can use the 'Skip previously migrated data' option at the 'Transfer' step of the migration wizard.

This option is particularly handy if you ran the initial data migration, then have been tweaking X-Cart 5 to get it ready for the production and now have decided to go live. In this case, the majority of data is already on X-Cart 5 and you only need to sync the latest ones.

{% note info %}
If you migrated some entity (product, order, user, etc) and then changed it on X-Cart 5 side, while X-Cart 4's version is still the same, this entity will still be skipped with the 'Skip previously migrated data' option enabled.
{% endnote %}

## Migration process

Once the addon "XC4 to XC5 Migration wizard" is installed on your X-Cart 5, you will see a new 'Migration wizard' item at the top of the Admin area menu:
![mw_link.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_link.png)

Click it to launch the migation process.

### Step 1 - Start
    
At the first step of the wizard, select the check box to confirm that you understand the consequences of using the wizard. Namely, any existing data in your X-Cart 5 store will be overwritten as a result of the migration process. 

Click **Start migration** to proceed:
![mw_1.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_1.png)

### Step 2 - Connect
    
At the second step of the wizard, specify your X-Cart 4 store MySQL connection details.
![mw_2.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_2.png)

Start by completing the following fields:
- **Database name**: The name of your X-Cart 4 database.
- **Database username**: The username of your MySQL account.
- **Database password**: The password of your MySQL account.
    
If this set of fields is not enough to set up a proper connection, use the **Advanced options** section (expands at the click of the respective button): 
   ![mw_3.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_3.png)
    
In the **Advanced options** section, you can enter the following info: 
- **Host name** - the name of the host where your MySQL server is running;
- **Port number** - the port number to use for the connection, for connections made using TCP/IP. The default port number is 3306;
- **Socket** - MySQL Unix socket;
- **Table prefix** - the table prefix used in your X-Cart 4 database (as was specified during X-Cart 4 installation). If you do not remember the table prefix that was used for your X-Cart 4 tables, you can look it up in the file `init.php` of your X-Cart 4.x installation (in X-Cart versions 4.5.3 and later, see the value of `XC_TBL_PREFIX`; in earlier versions - the value of `xcart_tbl_prefix`). The default table prefix for all X-Cart 4 versions is `xcart_`.
    
After specifying the above details, define the following settings:
![mw_4.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_4.png)
    
- **Encryption key** - your X-Cart 4 store's Blowfish key (the secret key needed for access to certain types of data stored in X-Cart 4 in encrypted form, such as user passwords). [More info about Blowfish key](http://help.x-cart.com/index.php?title=X-Cart:Blowfish#Blowfish_key_based_encryption_method "X-Cart 4 manual").
- **Site URL** - the URL of your X-Cart 4 store;
- **Site path** - this option represents where X-Cart 4 store is located on the server. Use it only when you have X-Cart 5 and X-Cart 4 on the same server.
    
Click **Save and continue**.

### Step 3 - Check
    
At the third step of the wizard, your X-Cart 5 store tries to connect to the specified X-Cart 4's database using the connection details provided at earlier. 
   
If connection details have been specified correctly, you will see a summary of information that is going to be migrated from X-Cart 4 to X-Cart 5:
![mw_5.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_5.png)
     
The "Images size" item shows the amount of space taken by the X-Cart 4 store images in MB. If you are going to migrate the images, makre sure that you have enough disk space on your X-Cart 5's hosting.

Click **Continue** to proceed.
    
### Step 4 - Select
    
At the fourth step of the wizard, you will see a list of data types that can be migrated from your X-Cart 4 store to X-Cart 5 with check boxes.
   
Select the data types that need to be migraed to X-Cart 5, then click **Save and continue**:
![mw_6.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_6.png)

If you want to try the migration in [demo mode](#demo-migration) this time, select the **Demo migration** option at the top of the page:
![mw_7.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_7.png)
    
Click **Save and continue**.
       
### Step 5 - Enable
    
At the fifth step of the wizard, X-Cart will provide you with a list of X-Cart 5 addons that have to be enabled in order to match X-Cart 4 functionality:
![mw_8.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_8.png)

Click **Enable and continue**.

What happens next depends on whether your X-Cart 5 store is a trial installation or using some kind of license (free or non-free).

#### Trial installation (NO license is activated)
    
On a triall installation, the process will activate all the required addons:
![xc5_mw_step5_3.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_mw_step5_3.png)

If any paid addons are installed at this step, you will get a warning that licenses must be purchased:
![xc5_migration_wizard_enable4.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable4.png)

In this case, you can either activate an addon license or remove it from your store.
    
You may choose to resolve the licensing problem right away, or you may close the popup window with the warning and continue with the migration process. However, please be aware that the license warning will continue to appear in your X-Cart 5 store (at both the back-end and the storefront) until you purchase the license or remove the addons. 
       
{% note info %}
On our demo, we used a trial installation, so we got the first type of warning and chose to activate a license key for X-Cart Ultimate. After activating the key, we got a message at the top of the screen showing that the key has been activated successfully:
![xc5_migration_wizard_enable5.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable5.png)
        
This means that our licensing problem has been resolved, and we can go back to our migration process:
![xc5_migration_wizard_enable6.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable6.png)
{% endnote %}

#### Licensed installation
       
On a licensed installation, the scenario of the wizard "Step 5 - Enable" will be a bit different after the **Enable and continue** button is clicked. 
      
If after addons are downloaded, the wizard detects that these addons cannot be used with your type of X-Cart license, you will get a license warning as follows:
      
![xc5_migration_wizard_license_type.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_license_type.png)
       
In this case, you can resolve the problem either by upgrading your X-Cart license or by removing these addons.
    
{% note info %}
The addons will not be installed, and you will not be able to proceed with the migration process until you upgrade the license or remove the addons. 
{% endnote %}
      
### Step 6 - Transfer
    
The next step will show you a list of X-Cart entities that will be transfered from your X-Cart 4 to X-Cart 5, because the migration wizard has collected all needed information about them:
![mw_10.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_10.png)
    
If orders are going to be migrated, you will get a warning message about the currency of these orders: _The orders will be migrated using the current store currency (**Currency symbol - Currency name**). You can change the currency **here**._ 
   
You need to make sure that your X-Cart 5 is using the same currency as X-Cart 4. Use the link in the warning message to quickly access X-Cart 5 store's currency settings (_Store setup > Localization, 'Currency' tab_).

{% note info %}
If you want to migrate X-Cart 4 orders starting from particular date, it is possible to specify that date using the **Migrate orders from date** field:
![mw_11.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_11.png)
{% endnote %}

{% note info %}   
It is possible to skip X-Cart 4's data that has already been migrated previously by ticking on the **Skip previously migrated data** option:
![mw_11_1.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_11_1.png)
    
More info about this option in ['Syncing the data' section](l#syncing-the-data) of this guide.
{% endnote %}
    
Click the **Start migration** button to start the process:
![mw_12.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_12.png)
 
The migration process may take a while to complete and it is only running while the page is open. Hence make sure to keep the page open or if you have to close it for a while, do not forget to re-open it in order to finish the process.
![mw_13.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_13.png)

While your data is being migrated, you can see the progress on the screen. Here are the stages that have to be completed:
    
* _Migrating data_
	Transitioning the data from X-Cart 4 to X-Cart 5.
* _Processing products..._
	Calculating product related data, like bestsellers statistics based on the migrated orders.   
* _Processing categories..._
	Calculating category related data. The category tree will not be displayed correctly before this step is completed..
* _Removing duplicate images..._
    Removing any duplicate product images, in case any of them got duplicated during the migration.

The stages above will be completed in any migration process, regardless of whether you are importing products/categories. If your X-Cart 5 store has products and categories, these processes are simply necessary to ensure that your store will look and function correctly.

{% note info %}
Migration Wizard does not do the resizing of images due to the fact that you may want to install another template with different image sizes, so this process will be run just in vain. Once you decide what template to use, do the resizing using the **Generate resized images** button in the **Look & Feel** > **Images** section.
{% endnote %}

### Step 7 - Complete
   
This is the final step of the process, when your data has been successfully migrated.
![mw_14.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_14.png)

If you experience problems that the process freezes in the middle of migration, [increase your server time limit](#system-requirements) or decrease [the **migration_chunk_length** setting](#technical-side-of-how-the-module-transfers-the-data) in etc/config.local.php.

If you want to do another migration (e.g. to finish the migration after testing it in the Demo mode), you can restart the migration wizard using the **Restart wizard** button:
![mw_15.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_15.png)

   
## Checklist before going live

This is a basic checklist to make sure everything is migrated correctly and your store is ready to go live.

- You can create a product, category, and user in the admin area;
- You can edit orders according to your needs;
- Home, category and product pages look properly in store-front;
- Search section in store-front can find the correct products;
- New customers can create a new account and existing customers can recover their passwords;
- Shipping methods are calculated properly on checkout. 
	- If you use online shipping calculators, make sure their credentials are filled in in Store setup > Shipping section. 
	- If you use different shipping rates for different destination zones, make sure that right shipping rates are applied to right zones in the same  Store setup > Shipping section;
- Payment methods are configured and can accept payments;
- All static pages are displayed properly and filled with proper content;
- All orders are migrated and up to date;
- Contact information is properly filled in Store Setup > Contact information section;
- If you want to use SMTP server for email notifications, set it up in Store setup > Email notifications > E-Mail transfer settings section;
- Migration Wizard does not transfer existing Gift Certificates and Testimonials. Make sure you have copied them from the X-Cart 4 store manually;
- Migration Wizard does not transfer any sales taxes or tax classes. Make sure you have configured them manually. (If you don’t see Sales Tax line in Taxes section - install free addons «Sales Tax» and «VAT Tax» in the «My Addons» section);
- Make sure you filled in SEO information in the 'Store setup' > 'SEO settings' section in the admin area.

The points above are required to check before switching your existing store with X-Cart 5, but they are not limited to them. You may need to check other parts of the store depending on what functionality is heavily used by your clients.

## .htaccess file in the migrated store

After you complete the migration and switched X-Cart 4 store with new X-Cart 5 one, you need to put the following code into X-Cart 5's `.htaccess` file.

```
  RewriteCond %{QUERY_STRING} cat=([0-9]+)
  RewriteRule ^home\.php$ cart.php?target=category&category_id=%1 [L,R=301]

  RewriteCond %{QUERY_STRING} productid=([0-9]+)
  RewriteRule ^product\.php$ cart.php?target=product&product_id=%1 [L,R=301]

  RewriteCond %{QUERY_STRING} pageid=([0-9]+)
  RewriteRule ^pages\.php$ cart.php?target=page&id=%1 [L,R=301]
  
  RewriteRule ^home.php$ cart.php [NC,L]
```

This code makes sure that product, category and static pages which were properly indexed in your X-Cart 4, can now redirect to their successors in X-Cart 5 store.

If you use `nginx` web-server instead of `Apache` and `.htaccess` rules do not work for you, here is the equivalent of the same rules in `nginx` syntax:

```
#RewriteCond %{QUERY_STRING} productid=([0-9]+)
#RewriteRule ^product\.php$ cart.php?target=product&product_id=%1 [L,R=301]
location = /product.php {
    rewrite ^ /cart.php?target=product&product_id=$arg_productid;
}

#RewriteCond %{QUERY_STRING} pageid=([0-9]+)
#RewriteRule ^pages\.php$ cart.php?target=page&id=%1 [L,R=301]
location = /pages.php {
    rewrite ^ /cart.php?target=page&id=$arg_pageid;
}

#RewriteCond %{QUERY_STRING} cat=([0-9]+)
#RewriteRule ^home\.php$ cart.php?target=category&category_id=%1 [L,R=301]
location = /home.php {
    rewrite ^ /cart.php?target=category&category_id=$arg_cat;
}
```

