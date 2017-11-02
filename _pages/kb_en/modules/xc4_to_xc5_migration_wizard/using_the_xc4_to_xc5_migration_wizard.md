---
lang: en
layout: article_with_sidebar
updated_at: '2016-12-23 15:17 +0400'
identifier: ref_Ah935naM
title: Using the module "XC4 to XC5 Migration wizard"
order: 140
published: true
version: X-Cart 5.3.1 and later
---
Once the module "XC4 to XC5 Migration wizard" has been installed on your X-Cart 5 store, you get a new item at the top of the Admin area menu - "Migration wizard":
    ![xc5_migration_wizard_menu_item.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_menu_item.png)

To use the wizard:

1.  Click on the "Migration wizard" item in the Admin area menu. The wizard will be launched. 
    ![xc5_migration_wizard_start1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_start1.png)

2.  At the first step of the wizard ("1. Start"), select the check box to confirm that you understand the consequences of using the wizard (namely, that any existing data in your X-Cart 5 store will be overwritten as a result of the migration process). Click **Start migration** to proceed:
    ![xc5_migration_wizard_start2.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_start2.png)

    As a result, the second step of the wizard will be loaded - "2. Connect":
    ![xc5_migration_wizard_connect1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_connect1.png)

3.  At the second step of the wizard ("2. Connect"), specify your X-Cart 4 store database connection details. 

    Start by completing the following fields:
    
    *   **Database name**: The name of your X-Cart 4 database.
    *   **Database username**: The username of your MySQL account.
    *   **Database password**: The password of your MySQL account.
    
    If this set of fields is not enough to provide all the necessary connection details, please use the **Advanced options** section (expands at the click of the respective button): 
    ![xc5_migration_wizard_connect2.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_connect2.png)

    In the **Advanced options** section, you can enter the following info:
    
    *   **Host name**: The name of the host where your MySQL server is running.
    *   **Port number**: The port number to use for the connection, for connections made using TCP/IP. The default port number is 3306.
    *   **Socket**: The MySQL Unix socket.
    *   **Table prefix**: The table prefix used in your X-Cart 4 database (as was specified during X-Cart 4 installation). If you do not remember the table prefix that was used for your X-Cart 4 store, you can look it up in the file init.php of your X-Cart 4.x installation (in X-Cart versions 4.5.3 and later, see the value of `XC_TBL_PREFIX`; in earlier versions - the value of `xcart_tbl_prefix`). The default table prefix for all X-Cart 4 versions is `xcart_`.
    ![xc5_migration_wizard_connect2_1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_connect2_1.png)

    After specifying the above details, provide the following settings:
    * Encryption key: Your X-Cart 4 store Blowfish key (the secret key needed for access to certain types of data stored in X-Cart 4 in encrypted form, such as user passwords). For more info on X-Cart 4 Blowfish key, see [X-Cart 4 manual](http://help.x-cart.com/index.php?title=X-Cart:Blowfish#Blowfish_key_based_encryption_method "X-Cart 4 manual").
    * Site URL: The URL of your X-Cart 4 store.
    ![xc5_migration_wizard_connect3.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_connect3.png)
    
    Click **Save and continue**:
    ![xc5_migration_wizard_connect4.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_connect4.png)

    That will take you to the next step of the wizard - "3. Check".

4.  Using the connection details provided at the previous step, your X-Cart 5 store tries to connect to the specified X-Cart 4 database. Provided that the connection details have been specified correctly, at the third step of the wizard ("3. Check") you should be able to see a summary of information that X-Cart 5 could obtain regarding your X-Cart 4 store:
     ![xc5_migration_wizard_check1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_check1.png)

    Click **Continue** to proceed.
    ![xc5_migration_wizard_check2.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_check2.png)

    
5.  At the fourth step of the wizard ("4. Select"), you will see a list of data types that can be migrated from your X-Cart 4 store to X-Cart 5, with check boxes:
    ![xc5_migration_wizard_select1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_select1.png)

    Use the check boxes to select the data types that you want to be moved to X-Cart 5, then click **Save and continue**:
    ![xc5_migration_wizard_select2.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_select2.png)

6.  If the module detects that your X-Cart 4 installation has features that are lacking in X-Cart 5 default distribution pack, but can be implemented by enabling certain X-Cart 5 add-on modules, at the next step of the wizard ("5. Enable"), it will provide you with a list of X-Cart 5 modules that you should enable so you can have the same features as in your X-Cart 4 store:
    ![xc5_migration_wizard_enable1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable1.png)

    Click **Enable and continue**:
    ![xc5_migration_wizard_enable2.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable2.png)

    What happens next depends on whether your X-Cart 5 store is a trial installation or is using some kind of license (free or non-free).
    
    On a trial installation, the module installer will activate all the required modules:
    ![xc5_migration_wizard_enable3.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable3.png)

    If any paid modules are installed and activated at this step, after the store has been deployed you will get a license warning like the following:
    ![xc5_migration_wizard_enable4.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable4.png)
    with a list of affected modules.

    In this case, you have two options available to you:
    
    *   Activate a license required to use the modules;
    *   Remove the modules from your store.
    
    You may choose to resolve the licensing problem right away, or you may close the popup window with the warning and continue with the migration process. However, please be aware that the license warning will continue to appear in your X-Cart 5 store (both the store's back end and the storefront) until you resolve the problem with your license or remove the modules. 
    
    If your X-Cart 5 store has some kind of license activated, after the **Enable and continue** button has been clicked, the scenario of the wizard step "5. Enable" will be a bit different. If, after downloading the modules recommended for activation in your X-Cart 5 store, the module installer detects that these modules may not be used with your type of X-Cart license, you will get a license warning like the following:
    ![xc5_migration_wizard_license_type.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_license_type.png)
    
    In this case, you will be able to resolve the problem using one of the following methods:
    
    *   Upgrade your X-Cart license to the license type allowed to use the modules;
    *   Remove the modules from your store.
    
    Note that the modules will not be installed, and you will not be able to continue with the migration process until you resolve the problem with your license or remove the modules.  
      
    On our demo, we used a trial installation, so we got the first type of warning and chose to activate a license key for X-Cart Ultimate. After activating the key, we got a message at the top of the screen showing that the key has been activated successfully:
    ![xc5_migration_wizard_enable5.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable5.png)
    
    This means that our licensing problem has been resolved, and we need to go back to our migration wizard to continue with the migration process:
    ![xc5_migration_wizard_enable6.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_enable6.png)
   
7.  By the next step ("5. Transfer"), the wizard has collected all the information it requires and is ready to start the data migration process. You can see a list of X-Cart entities that will be transfered from your X-Cart 4 store to the X-Cart 5 platform:
    ![xc5_migration_wizard_transfer1.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer1.png)
    
    Click **Start migration**.
    ![xc5_migration_wizard_transfer2.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer2.png)
    
    The migration process begins:
    ![xc5_migration_wizard_transfer3.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer3.png)

    Note that the migration process, which may take a while to complete, only continues while the page is open. 
    ![xc5_migration_wizard_transfer4.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer4.png)

    So be sure to keep the page open or, if you have to close it for a while, be sure to re-open it to allow the migration module to finish its work.
    
    While your data is being migrated from your X-Cart 4 store to X-Cart 5, you will be able to see the progress on the screen. Here are the stages that will have to be completed:
    
    *   Processing products: 
    ![xc5_migration_wizard_transfer5.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer5.png)
    
    *   Removing duplicate images:    
    ![xc5_migration_wizard_transfer6.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer6.png)

    *   Resizing images:    
    ![xc5_migration_wizard_transfer7.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_transfer7.png)

8. Once the transfer has completed, the final step of the wizard will be displayed - "6. Complete":
    ![xc5_migration_wizard_congrats.png]({{site.baseurl}}/attachments/ref_Ah935naM/xc5_migration_wizard_congrats.png)

That is all; your data has been successfully migrated.

In some cases, during the migration of data, things may not go as smoothly as one would hope. For example, PHP execution may be interrupted. Problems like that tend to be related to the time limit settings of the web server, especially if working on a server with limited resources or on a slow internet connection. If you experience errors causing mid-process interruption of the migration, be sure to increase your server time limit (See {% link "Setting the time limit of your server" ref_xqnpttd4 %}) or decrease the **migration_chunk_length** value in etc/config.local.php (See [How XC4 to XC5 Migration wizard works: Migration process](http://kb.x-cart.com/en/modules/xc4_to_xc5_migration_wizard/how_xc4_to_xc5_migration_wizard_works.html#migration-process "Using the module "XC4 to XC5 Migration wizard"")).
