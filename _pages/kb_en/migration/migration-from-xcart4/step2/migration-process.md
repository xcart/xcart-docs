---
lang: en
layout: article_with_sidebar
updated_at: '2019-05-21 16:35 +0400'
identifier: ref_2nzbe2Ce
title: Data Migration Process
order: 50
published: true
redirect_from:
  - /general_setup/migration/migration-from-xcart4/step-2-migration-process.html
  - /migration/migration-from-xcart4/step-2-migration-process.html
---
Once the _X-Cart v4 to v5 Data Migration Wizard_ addon has been installed, you will see a new 'Migration wizard' section at the top of the X-Cart 5 Admin area menu:
![mw_link.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_link.png)

{% note info %}
If you are not able to install _X-Cart v4 to v5 Data Migration Wizard_ module from the marketplace and see the following warning message:
 ![xc5_mw_module.png]({{site.baseurl}}/attachments/ref_KqsCJNRG/xc5_mw_module.png)
   
Please make sure to install [Order import module](https://market.x-cart.com/addons/orders-import.html) first and then try to install _X-Cart v4 to v5 Data Migration Wizard_ module again.
{% endnote %}

Click it to launch the migration process.

{% toc Table of Contents %}

## Step 1 - Start
    
In the first step of the wizard, select the checkbox to confirm that you understand the consequences of using the wizard. Namely, all the existing data in your X-Cart 5 store will be overwritten.

Click **Start migration** to proceed:
![mw_1.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_1.png)

## Step 2 - Connect
    
In the second step of the wizard, specify your X-Cart 4 store MySQL connection details.
![mw_2.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_2.png)

Start by completing the following fields:
- **Database name**: The name of your X-Cart 4 database.
- **Database username**: The username of its MySQL account.
- **Database password**: The password of its MySQL account.
    
If this set of fields is not enough to set up a proper connection, use the **Advanced options** section (expands by the click of the respective button): 
   ![mw_3.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_3.png)
    
In the **Advanced options** section, you can enter the following info: 
- **Host name** - the name of the host where your MySQL server is running;
- **Port number** - the port number to use for the connection, for connections made using TCP/IP. The default port number is 3306;
- **Socket** - Unix' MySQL socket;
- **Table prefix** - the table prefix used in your X-Cart 4 database (as was specified during X‑Cart 4 installation). If you do not remember the table prefix that was used for your X-Cart 4 tables, you can look it up in the file `init.php` of your X-Cart 4 installation (in X-Cart versions 4.5.3 and later, see the value of `XC_TBL_PREFIX`; in earlier versions - the value of `xcart_tbl_prefix`). The default table prefix for all X-Cart 4 versions is `xcart_`.
    
After specifying the above details, define the following settings:
![mw_4.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_4.png)
    
- **Encryption key** - your X-Cart 4 store's Blowfish key (the secret key needed to access certain types of data stored in encrypted form, such as user passwords). [More info about Blowfish key](http://help.x-cart.com/index.php?title=X-Cart:Blowfish#Blowfish_key_based_encryption_method "X-Cart 4 manual").
- **Site URL** - the URL of your X-Cart 4 store;
- **Site path** - this option represents where X-Cart 4 store is located on the server. Use it only when you have X-Cart 5 and X-Cart 4 on the same server.
    
Click **Save and continue**.

## Step 3 - Check
    
In the third step of the wizard, your X-Cart 5 store tries to connect to the specified X-Cart 4 database using the connection details provided earlier. 
   
If connection details are specified correctly, you will see a summary of information that is going to be migrated from X-Cart 4 to X-Cart 5:
![mw_5.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_5.png)
     
The "Images size" item shows the amount of space taken by the X-Cart 4 store images in MB. If you are going to migrate the images, make sure that you have enough disk space on your X-Cart 5 hosting.

Click **Continue** to proceed.
    
## Step 4 - Select
    
In the fourth step of the wizard, you will see a list of data types that can be migrated from your X-Cart 4 store to X-Cart 5.
   
Select the data types that need to be migrated to X-Cart 5, then click **Save and continue**:
![mw_6.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_6.png)

If you want to try to do the migration in {% link "demo mode" ref_1tEH4GGT %} this time, select the **Demo migration** option at the top of the page:
![mw_7.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_7.png)
    
Click **Save and continue**.
       
## Step 5 - Enable
    
In the fifth step, the wizard will provide you with a list of X-Cart 5 addons that have to be enabled in order to match X-Cart 4 functionality:
![mw_8.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_8.png)

Click **Enable and continue**.

What happens next depends on whether your X-Cart 5 store is a trial installation or using some kind of license (free or non-free).

### Trial installation (NO license is activated)
    
On a trial installation, the process will activate all the required addons:
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

### Licensed installation
       
On a licensed installation, the scenario of the wizard "Step 5 - Enable" will be a bit different after the **Enable and continue** button is clicked. 
      
If the wizard detects that addons cannot be used with your type of X-Cart license, after these addons are downloaded, you will get a license warning as follows:
      
![xc5_migration_wizard_license_type.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_license_type.png)
       
In this case, you can resolve the problem either by upgrading your X-Cart license or by removing these addons.
    
{% note info %}
The addons will not be installed, and you will not be able to proceed with the migration process until you upgrade the license or remove the addons. 
{% endnote %}
      
## Step 6 - Transfer
    
The next step will show you a list of X-Cart entities that will be transfered from your X-Cart 4 to X-Cart 5, because the migration wizard has collected all needed information about them:
![mw_10.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_10.png)
    
If orders are going to be migrated, you will get a warning message about the currency of these orders: _The orders will be migrated using the current store currency (**Currency symbol - Currency name**). You can change the currency **here**._ 
   
You need to make sure that your X-Cart 5 is using the same currency as X-Cart 4. Use the link in the warning message to quickly access X-Cart 5 currency settings (_Store setup > Localization, 'Currency' tab_) to double check the current currency.

{% note info %}
If you want to migrate X-Cart 4 orders starting from particular date, it is possible to specify that date using the **Migrate orders from date** field:
![mw_11.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_11.png)
{% endnote %}

{% note info %}   
It is possible to skip X-Cart 4's data that has already been migrated previously by ticking on the **Skip previously migrated data** option:
![mw_11_1.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_11_1.png)
    
More info about this option in {% link "'Syncing the data' section" ref_7bQ5uFuH %}.
{% endnote %}
    
Click the **Start migration** button to start the process:
![mw_12.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_12.png)
 
The migration process may take a while to complete and it can only be running while the page is open. Hence make sure to keep the page open or if you have to close it for a while, do not forget to re-open it in order to continue with the process.
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
Migration Wizard does not do the resizing of images due to the fact that you may want to install another template with different image sizes, so this process can be run in vain. Once you decide what template to use, do the resizing manually by using the **Generate resized images** button in the **Look & Feel** > **Images** section.
{% endnote %}

## Step 7 - Complete
   
This is the final step of the process, when your data has been successfully migrated.
![mw_14.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_14.png)

If you experience problems that the process freezes in the middle of migration, {% link "increase your server time limit" ref_19hsx4O9 %} or decrease {% link "**migration_chunk_length** setting" ref_1IAKq4cq %} in `etc/config.local.php`.

If you want to do another migration (e.g. to finish the migration after testing it in the Demo mode), you can restart the migration wizard using the **Restart wizard** button:
![mw_15.png]({{site.baseurl}}/attachments/ref_Ah935naM/mw_15.png)
