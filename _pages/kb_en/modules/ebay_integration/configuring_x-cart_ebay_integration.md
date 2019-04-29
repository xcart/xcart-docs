---
lang: en
layout: article_with_sidebar
updated_at: '2017-10-30 12:57 +0400'
identifier: ref_SCbAqGqX
title: Configuring X-Cart eBay Integration
categories:
  - User manual
published: true
order: 120
---

To connect your X-Cart store to eBay, you need to set up one or more eBay configurations via the eBay configurations section in your X-Cart store's Admin area. You can access this section one of the following methods:
   
   * by clicking the **eBay configurations** menu item under **Sales channels** in the Admin menu:
     ![xc5_ebay_confs.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs.png)
     
   * by going to the eBay Integration addon setting from the **Installed Addons** section:
     ![xc5_link2ebay_settings_.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_link2ebay_settings_.png)

You will need to add and set up a separate eBay configuration for each eBay marketplace site to which you would like to connect. This includes the following steps:

   1.  [Add the eBay configuration you require](#add_the_eBay_configuration_you_require).
   2.  [Obtain your eBay user token](#obtain-your-ebay-user-token).
   3.  [Set your business policies](#set-your-business-policies).
   4.  [Choose your default eBay categories](#choose-your-default-ebay-categories).
   5.  [Configure the General settings](#configure-the-general-settings).

Let us take a closer look at the process of setting up an eBay configuration.

## Add the eBay configuration you require

To connect your X-Cart store to a specific eBay marketplace site, you will need to add a new eBay configuration:

1. In your X-Cart store's Admin area, go to the eBay configurations section (**Sales channels**>**eBay configurations**).
   ![xc5_ebay_confs_tab.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs_tab.png)

2. From the **eBay Site** box, select the eBay marketplace site to which you need to connect. The products and orders in your X-Cart store will be synchronized with this eBay site. 
   
3. Click the **Create configuration** button.
   ![xc5_ebay_conf_create.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_conf_create.png)

The eBay configuration will be created. On the page that opens, the configuration name and a link to the respective eBay marketplace site will be displayed. You will also be provided with some tools to set the operation mode (Test/Live) and to get the Auth Token for this eBay configuration:
   ![xc5_ebay_confs_tab1.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs_tab1.png)

## Obtain an eBay user token

Once a new eBay configuration has been added via the eBay configurations section of your X-Cart store's Admin area, you need to create a new user [token](http://developer.ebay.com/devzone/guides/ebayfeatures/Basics/Tokens-About.html) for it (also known as "Auth Token). The token is needed so the eBay Integration in your X-Cart store can connect to your eBay account. 

The following instructions specify how to create a new token for a new eBay configuration. The same instructions should be used if you need to connect an existing eBay configuration to a different eBay account.

To create a new user token for an eBay configuration:

1.  If you haven't yet done so, add a new eBay configuration via the eBay configurations section of your X-Cart store's Admin area (**Sales channels**>**eBay configurations**) as described above (See [Add the eBay configuration you require](#add_the_eBay_configuration_you_require)): 
    ![xc5_ebay_confs_tab1.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs_tab1.png)
    If you are changing the token for a previously added eBay configuration, open the details of the respective configuraion for editing (You should be viewing the **Get User Token** tab of the configuration details):
    ![xc5_ebay_gettoken.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_gettoken.png)

2.  Use the **Select mode** setting to specify the mode in which your store will be interacting with the selected eBay marketplace: select _Test_ to use the eBay Sandbox or _Live_ to use the production environment.

3.  Click the **Create new token** button.
    ![xc5_ebay_token_create.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_token_create.png)

    This launches the user sign-in and consent process: you will be redirected to the eBay site where you will need to log in to the eBay account for which you need the token and grant the application the permission to access your account on your behalf:
    ![xc5_ebay_signin_page.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_signin_page.png)

    After signing in, provide your consent to share your eBay data by clicking "**I agree**":
    ![xc5_ebay_grantaccess.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_grantaccess.png)

    **Important**: If you are creating a Sandbox user token, enter the credentials for a [Sandbox User](https://developer.ebay.com/DevZone/sandboxuser/default.aspx). If it is a token for Production, use the credentials for a user created on the [Production eBay site](http://www.ebay.com/) (the one you will use to sell items on eBay). Remember that User IDs for Sandbox users begin with "`TESTUSER_`".
    Once application access has been granted, eBay will generate a new token, and you will be automatically redirected back to X-Cart. Now in the **Get User Token** section of the eBay configuration details you should be able to see the **User Token** field populated with your token value. Below this field you should be able to see information about the current status of your token (**Token Status**) and token expiration date (**Token Expiration**).
    ![xc5_ebay_token_crtd.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_token_crtd.png)

    When your token is about to expire, you will be notified and provided with a button to create a new one.
    
4.  Now that your token has been generated, click **Next** to save your changes and head over to the next step of configuring your eBay Integration: [Setting your business policies](#setting-your-business-policies).
    ![xc5_ebay_token_crtd_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_token_crtd_next.png)

## Set your business policies

Once you have created an eBay user token to connect your X-Cart store to your eBay seller account, you can set business policies for your eBay listings. Business policies typically include information on how buyers can pay you; the shipping services you offer, and shipping costs; whether you accept returns, any return conditions, etc. All eBay listings must include this information. To provide information on your business policies for the listings that will be created from the products you sell via your X-Cart store, follow the steps below:

1.  If you haven't yet done so, configure your business policies in your eBay account (More information is available [here](http://pages.ebay.com/help/sell/business-policies.html)). 
2.  In X-Cart Admin, after creating an eBay token for your eBay configuration, click **Next** at the bottom of the **Get User Token** section to go to the **Business policies** section:
    ![xc5_ebay_token_crtd_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_token_crtd_next.png)

    If you have configured the business policies of your eBay configuration earlier, it is possible to simply click the **Business policies** tab:
    ![xc5_ebay_policies.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_policies.png)

3. Specify the business policies you would like to use for your eBay listings. The available business policies are pulled into your X-Cart store from the eBay account to which you have linked your application at the [previous step](#obtaining-your-ebay-user-token). If you do not see any drop-down policy selectors on the page, you may want to refresh the business policies information by clicking the **Refresh Business Policies** button. 
    ![xc5_ebay_policies_refresh.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_policies_refresh.png)
This will get the policies from your eBay account.

To specify which business policies are going to be used for your listings, you will need to choose them from the drop-down selectors. You will need to set your:
   *   **Return Policy**;
   *   **Payment Policy**; 
   *   **Shipping Policy**. 
    
    ![xc5_ebay_policy_selection.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_policy_selection.png)

    If you do not see the policy you require in any of the selectors, it may be due to the fact that the policy was added *after* the information on the policies had been pulled into your X-Cart store. To resolve the problem, click the **Refresh Business Policies** button. As a result, the policy name lists in the selectors will be updated, and you will be able to select the policy you require.

4.  Use the **PayPal email address** field to enter your valid PayPal email address. eBay will use this address to identify the correct PayPal account when the buyer pays you via PayPal.

5.  Click **Next** to save your changes and head over to the next step of configuring your eBay Integration: [Choose your default eBay categories](#choosing-your-default-ebay-categories).
    ![xc5_ebay_policies_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_policies_next.png)

## Choose your default eBay categories

Every product you export to eBay has to be placed in at least one of eBay categories. When using eBay Integration, the eBay categories to which your products will be exported need to be set before the export actually takes place. When configuring an eBay configuration in your X-Cart store, the **Categories** section allows you to set the default eBay categories for your listings: one main and one additional category. The main category is required, the additional one is optional. The categories you specify here will be your store's default eBay categories for the selected eBay marketplace site - the ones that will be used for any products for which eBay categories are not set at the product or category level. 

To set the default eBay categories:

1.  In X-Cart Admin, after setting the business policies for a new eBay configuration in the **Business Policies **section, click **Next** to go to the **Categories** section:
    ![xc5_ebay_policies_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_policies_next.png)

    If you have configured your default eBay categories for the eBay configuration previously, you can simply click the **Categories** tab:
    ![xc5_ebay_categories.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_categories.png)

2.  Set the default _main_ category for your products:
    Use the **Main eBay Category** selector to select the eBay category that best describes the products you are going to sell on eBay. If not all your products are going to be in the same category, just select the category you intend to use for the majority of your eBay listings; for the products that do not fit well into the eBay category selected here, you will be able to choose an eBay category [at the product or category level](#configuring-ebay-options-for-products-and-categories).
    ![xc5_ebay_category_main.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_category_main.png)

    Note that category selection is likely to be a multi-step process: at first, the selector will show only top level eBay categories; once you select one of them, another selector will be displayed right below the first one so you can continue to select a nested category. You must continue selecting categories until you reach the lowest level of the eBay category hierarchy where you will be able to select the category that provides the most precise description of your products. At this point you should see a note "Selection complete" (in earlier versions of the addon - "Allowed to select"), which means the category selection process has been completed.
    ![xc5_ebay_category_main1.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_category_main1.png)

3.  (Optional step) In a similar way, use the **Additional eBay Category** selector to set a default _additional_ category for your products.
    ![xc5_ebay_category_additional.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_category_additional.png)

4.  Once you are happy with your default category settings, click **Next** to save your changes and head over to the next step of configuring your eBay Integration: [Configure the General settings for the X-Cart eBay Integration addon](#configuring-the-general-settings-for-the-x-cart-ebay-integration-addon).
    ![xc5_ebay_cat_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_cat_next.png)

## Configure the General settings

Before you start exporting products to eBay, you need to adjust the General settings for the respective eBay configuration. 

Please note that despite the name "*General* settings" these settings do not apply to all your eBay configurations. Each eBay configuration has its own set of "General settings" that should be adjusted specifically for that configuration.

To adjust the General settings:

1.  In X-Cart Admin, after setting the default categories for a new eBay configuration in the **Categories** section, click **Next** to go to the **General Settings** section:
    ![xc5_ebay_cat_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_cat_next.png)

    If you have already configured the General Settings for your eBay configuration previously, you can simply click the **General Settings** tab:
    ![xc5_ebay_generalsettings.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_generalsettings.png)

2.  Adjust the settings in the **Product options** section:
    ![xc5_ebay_prod_options.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_prod_options.png)

    The settings in this section will apply to all the products in your X-Cart store for which similar settings have not been set [at the level of categories or individual products](#configuring-ebay-options-for-products-and-categories).

    *   **Listing duration**: Select a duration for your store's eBay listings. Ebay help on listing duration is available [here](http://pages.ebay.com/help/sell/duration.html).
    
    *   **Product condition**: Select the condition of the products you are going to export to eBay. Click the _Condition help_ link for help on item condition for your category.
    
    *   **Product price modifier**: If necessary, the price of items sold via eBay can be made higher or lower than the price of these items in your X-Cart store. The price difference can be implemented by setting a product price modifier. 
        For example, to add a $1 per item processing fee for eBay orders, you should set the price modifier as "[1.00] + [ $ ]".

        This way all your items sold on eBay will be $1 more expensive than the items in your X-Cart store.
        To reduce the price of items sold on eBay by 10% of their price in your X-Cart store, you should set the price modifier as "[-10.00] + [ % ]".

        (Note the minus sign before "10.00"; it shows that the price of items on eBay will be _lower_ than the original item price in the X-Cart store).
        
        The price modifier defined in the General Settings section of an eBay configuration details applies to your entire X-Cart store (i.e. all the products that will be exported to the eBay marketplace site corresponding to the selected eBay configuration). If you need a price modifier only for _some_ of the products, you should set the modifier [at the level of specific categories or individual products](#configuring-ebay-options-for-products-and-categories).
        
    *   **Exchange rate**: If the type of currency you use in your X-Cart store is different from the currency that will be used for your eBay listings (for example, if the prices at your X-Cart store are in Australian dollars, and the prices on eBay need to be specified in US dollars), use this field to set the exchange rate. The exchange rate will be used both when exporting your products from your X-Cart store to eBay and when importing orders from eBay back to your X-Cart store.
    
    *   **Description for export**: In X-Cart, a product can have two types of description: a short description and a detailed description. EBay listings can have just one description. So, before you export any products to eBay, you need to specify which of the two product descriptions should be used for eBay. In this field you set the type of product description that should be exported to eBay by default. If any of your products need to use a different type of description on eBay, you can adjust this setting individually for these products in their [eBay product options](#configuring-ebay-options-for-products-and-categories). 
    
    *   **Product code type**: Specify the type of global product code (EAN / USBN / UPC) to be used for the export of products to eBay. If no code is specified for a product, "Does not apply" will be sent to eBay.
    
    *   **End eBay items for disabled products:** Enable this option if you want an eBay listing to be ended automatically if you disable the respective product in your X-Cart store.
    
    *   **End eBay items for out of stock products:** Enable this option if you want an eBay listing to be ended automatically if the respective product in your X-Cart store goes out of stock.
    
    *   **Use global attributes to synchronize eBay item specifics:** When you list an item on eBay, you can provide item specifics (like brand, size type, size, color, and style) for this item. The item specifics will appear at the top of your listing description, in a consistent format, making it easy for buyers to get the facts about the item. For more info on eBay item specifics, see https://www.ebay.com/pages/br/help/sell/item_specifics.html. X-Cart eBay integration enables you to synchronize the information available about the item in your X-Cart store in the form of global attributes with the item specifics on eBay. To enable the synchronization, you need to enable this option ("Use global attributes to synchronize eBay item specifics" = On). Note, however, that if you want to be able to export your products' global attributes from X-Cart to eBay as item specifics, or to import the item specifics from your eBay listings into X-Cart as global attributes, you will need to ensure that the names of the global attributes in your X-Cart store match the names of the item specifics defined on eBay. During a synchronization, the X-Cart eBay integration will determine which global attribute should be matched to which item specifics based on the names. Alternatively, you can map the global attributes in your X-Cart store to eBay item specifics via the **eBay Item Specifics** section (**Catalog** > **eBay item specifics**) of your X-Cart store Admin area.
 
    *   **Export direct product image links to eBay:** Enable this option if you want images to be exported to eBay as image links. Disable the option for images to be exported to eBay physically.
    
3.  Adjust the settings in the **Import item options** section:
    ![xc5_ebay_import_item_options.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_import_item_options.png)

    *   **Import eBay items into structure of eBay categories:** If you have an eBay store with your own configured categories, you can use this option to specify whether you want the structures of your eBay store and your X-Cart store to be synchronized when you import items from eBay to X-Cart based off of your eBay store structure. Enable this option if you want to transfer the structure of your eBay store to your X-Cart store. (In this case, during an import, the store categories in which the items reside on eBay will be imported into X-Cart along with the items and will become the categories of your X-Cart catalog). Disable this option if you do not want to copy the structure of your eBay store onto your X-Cart store. (In this case, any items that you will import from eBay will be placed in the category "eBay Items"; if your store does not have such a category, it will be created.) 
    
    *   **Import eBay categories for product:**
    
    *   **Import eBay Item descriptions to product descriptions:**
    
4.  Adjust the settings in the **Upload eBay orders** section:
    ![xc5_ebay_upload_ebay_orders.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_upload_ebay_orders.png)
    
    *   **Use store taxes for uploadable eBay orders:**
    
    *   **Allow upload eBay orders automatically:** This option is enabled by default. It allows automated import of eBay orders into your X-Cart store by cron. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow upload shipped orders from eBay:**
    
    *   **Allow update eBay orders status:**
    
5.  Adjust the settings in the **System options** section:
    ![xc5_ebay_system_options.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_system_options.png)

    *   **Show eBay warning messages in admin area**: When exporting products to eBay or importing orders from eBay, you may get eBay warnings. Unlike errors, warnings are conditions that are not fatal to the addon operation, but they alert you to some minor problems that you may want to fix. Any warnings your store gets from eBay are written to log files in your X-Cart store. If, in addition to that, you also wish to have eBay warning messages displayed in your store's Admin area, enable this option. 
    
    *   **Save eBay API requests/responses in the log file**: If you need eBay API requests/responses to be written to log file (for example, if you need this information for debugging purposes), enable this option.
    
    *   **Allow update products on eBay automatically**: This option is enabled by default. It allows automated updating of eBay items by cron via the export of product information from your X-Cart store to eBay. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow update inventory of products on eBay automatically**: This option is enabled by default. It allows automated updating of the inventory information (quantity in stock) of eBay items by cron via the export of inventory information from your X-Cart store to eBay. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow update inventory of products from eBay automatically**: This option is disabled by default.  It allows automated updating of the inventory information (amount/quantity in stock) of the products in your X-Cart store via the import of inventory information from eBay to your X-Cart store. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow end items on eBay**: This option is enabled by default. It enables you to end items on eBay manually with a click of a button; it also allows a special cron script in X-Cart to automatically end eBay items if they run out of stock. If you choose to disable this option, the buttons to end items on eBay will not be provided; any items that run out of stock before the period for which they have been listed on eBay expires will also not be ended automatically. 
    
4.  Click **Save** to save your changes.
    ![xc5_ebay_settings_save.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_settings_save.png)

    You should see a success message like the following:
    ![xc5_ebay_conf_success.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_conf_success.png)

That is all; you have completed the basic configuration of your eBay Integration and can now start selling on eBay. However, if you require a more nuanced approach to publishing your products on eBay, we recommend you take a couple more steps to complete your store's eBay related configuration:
   
   *  If you need to map your products to eBay categories more accurately than simply by setting one common default category for all your products, you can {% link "configure eBay options for specific products and categories" ref_0VFzZggb %}. 
   *  If you want to use your X-Cart store's global attributes for eBay item specifics, {% link "configure the mapping rules to sync your X-Cart store's global attributes with eBay item specifics" ref_0X2MIatv %}
   
   
_Related pages:_

*   {% link "X-Cart eBay Integration System Requirements and Installation" ref_RgzAH0hf %}
*   {% link "Configuring eBay Options for Specific Products and Categories" ref_0VFzZggb %}
*   {% link "Mapping Global Attributes to eBay Item Specifics" ref_0X2MIatv %}
*   {% link "Exporting Products to eBay" ref_40Al0Nky %}
*   {% link "Automating Import and Export Tasks for eBay Integration" ref_qPIZcwNs %}
