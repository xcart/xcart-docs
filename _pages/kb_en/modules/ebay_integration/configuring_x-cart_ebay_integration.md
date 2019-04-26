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

1.  [Add the eBay configuration you require](#add_the_eBay_configuration_you_require);
2.  [Obtain your eBay user token](#obtaining-your-ebay-user-token);
3.  [Set your business policies](#setting-your-business-policies);
4.  [Choose your default eBay categories](#choosing-your-default-ebay-categories);
5.  [Configure the General settings](#configuring-the-general-settings);
6.  (Optional) [Configure eBay options for products and categories](#configuring-ebay-options-for-products-and-categories).

Let's look at each of the steps more closely.

## Add the eBay configuration you require

To connect your X-Cart store to a specific eBay marketplace site, you will need to add a new eBay configuration:

1. In your X-Cart store's Admin area, go to the eBay configurations section (**Sales channels**>**eBay configurations**).
   ![xc5_ebay_confs_tab.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs_tab.png)

2. From the **eBay Site** box, select the eBay marketplace site to which you need to connect. The products and orders in your X-Cart store will be synchronized with this eBay site. 
   
3. Click the **Create configuration** button.
   ![xc5_ebay_conf_create.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_conf_create.png)

The eBay configuration will be created. On the page that opens, the configuration name and a link to the respective eBay marketplace site will be displayed. You will also be provided with some tools to set the operation mode (Test/Live) and to get the Auth Token for this eBay configuration:
   ![xc5_ebay_confs_tab1.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs_tab1.png)

## Obtaining an eBay user token

Once a new eBay configuration has been added via the eBay configurations section of your X-Cart store's Admin area, you need to create a new user [token](http://developer.ebay.com/devzone/guides/ebayfeatures/Basics/Tokens-About.html) for it (also known as "Auth Token). The token is needed so the eBay Integration in your X-Cart store can connect to your eBay account. 

The following instructions specify how to create a new token for a new eBay configuration. The same instructions should be used if you need to connect an existing eBay configuration to a different eBay account.

To create a new user token for an eBay configuration:

1.  If you haven't yet done so, add a new eBay configuration via the eBay configurations section of your X-Cart store's Admin area (**Sales channels**>**eBay configurations**) as described above (See [Add the eBay configuration you require](#add_the_eBay_configuration_you_require)): 
    ![xc5_ebay_confs_tab1.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_confs_tab1.png)
    If you are changing the token for a previously added eBay configuration, open the details of the respective configuraion for editing (You should be viewing the **Get User Token** tab of the configuration details):
    ![xc5_ebay_get_token_tab.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_get_token_tab.png)

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

## Setting your business policies

Once you have created an eBay user token to connect your X-Cart store to your eBay seller account, you can set business policies for your eBay listings. Business policies typically include information on how buyers can pay you; the shipping services you offer, and shipping costs; whether you accept returns, any return conditions, etc. All eBay listings must include this information. To provide information on your business policies for the listings that will be created from the products you sell via your X-Cart store, follow the steps below:

1.  If you haven't yet done so, configure your business policies in your eBay account (More information is available [here](http://pages.ebay.com/help/sell/business-policies.html)). 
2.  In X-Cart Admin, after creating an eBay token for your eBay configuration, click **Next** at the bottom of the **Get User Token** section to go to the **Business policies** section:
    ![xc5_ebay_token_created_next.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_token_created_next.png)

    If you have configured the business policies of your eBay configuration earlier, it is possible to simply click the **Business policies** tab:
    ![xc5_ebay_business_policies_tab.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_business_policies_tab.png)

3.  Use the drop-down policy selectors to set the business policies you would like to use for your eBay listings:
    *   **Return Policy**;
    *   **Payment Policy**; 
    *   **Shipping Policy**. 
    ![xc5_ebay_policies.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_policies.png)

    The names of business policies displayed to you on this page are pulled from your eBay account to which you have linked your application at the [previous step](#obtaining-your-ebay-user-token). If you do not see the policy you require in any of the selectors, it may be due to the fact that the policy was added after the information on the policies had been pulled into X-Cart. To resolve the problem, click the **Refresh Business Policies** button - the list of policies will be updated.
    ![xc5_ebay_refresh_policies.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_refresh_policies.png)

4.  Use the **PayPal email address** field to enter your valid PayPal email address. eBay will use this address to identify the correct PayPal account when the buyer pays you via PayPal.

5.  Click **Next** to save your changes and head over to the next step of configuring your eBay Integration: [Choose your default eBay categories](#choosing-your-default-ebay-categories).
    ![xc5_ebay_business_policies_next.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_business_policies_next.png)

## Choosing your default eBay categories

Every product you export to eBay has to be placed in at least one of eBay categories. When using eBay Integration, the eBay categories to which your products will be exported need to be set before the export actually takes place. When configuring an eBay configuration in your X-Cart store, the **Categories** section allows you to set the default eBay categories for your listings: one main and one additional category. The main category is required, the additional one is optional. The categories you specify here will be your store's default eBay categories for the selected eBay marketplace site - the ones that will be used for any products for which eBay categories are not set at the product or category level. 

To set the default eBay categories:

1.  In X-Cart Admin, after setting the business policies for a new eBay configuration in the **Business Policies **section, click **Next** to go to the **Categories** section:
    ![xc5_ebay_business_policies_next.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_business_policies_next.png)

    If you have configured your default eBay categories for the eBay configuration previously, you can simply click the **Categories** tab:
    ![xc5_ebay_categories_tab.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_categories_tab.png)

2.  Set the default _main_ category for your products:
    Use the **Main eBay Category** selector to select the eBay category that best describes the products you are going to sell on eBay. If not all your products are going to be in the same category, just select the category you intend to use for the majority of your eBay listings; for the products that do not fit well into the eBay category selected here, you will be able to choose an eBay category [at the product or category level](#configuring-ebay-options-for-products-and-categories).
    ![xc5_ebay_main_category_selector.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_main_category_selector.png)

    Note that category selection is likely to be a multi-step process: at first, the selector will show only top level eBay categories; once you select one of them, another selector will be displayed right below the first one so you can continue to select a nested category. You must continue selecting categories until you reach the lowest level of the eBay category hierarchy where you will be able to select the category that provides the most precise description of your products. At this point you should see a note "Selection complete" (in earlier versions of the addon - "Allowed to select"), which means the category selection process has been completed.
    ![xc5_ebay_categories_selected.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_categories_selected.png)

3.  (Optional step) In a similar way, use the **Additional eBay Category** selector to set a default _additional_ category for your products.
    ![xc5_ebay_additional_category_selector.png]({{site.baseurl}}/attachments/ref_ZnP9TFJx/xc5_ebay_additional_category_selector.png)

4.  Once you are happy with your default category settings, click **Next** to save your changes and head over to the next step of configuring your eBay Integration: [Configure the General settings for the X-Cart eBay Integration addon](#configuring-the-general-settings-for-the-x-cart-ebay-integration-addon).
    ![xc5_ebay_categories_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_categories_next.png)

## Configuring the General settings

Before you start exporting products to eBay, you need to adjust the General settings for the respective eBay configuration. 

Please note that despite the name "*General* settings" these settings do not apply to all your eBay configurations. Each eBay configuration has its own set of "General settings" that should be adjusted specifically for that configuration.

To adjust the General settings:

1.  In X-Cart Admin, after setting the default categories for a new eBay configuration in the **Categories** section, click **Next** to go to the **General Settings** section:
    ![xc5_ebay_categories_next.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_categories_next.png)

    If you have already configured the General Settings for your eBay configuration previously, you can simply click the **General Settings** tab:
    ![xc5_ebay_general_settings_tab.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_general_settings_tab.png)

2.  Adjust the settings in the **Product options** section:
    ![xc5_ebay_general_settings_prod_options.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_general_settings_prod_options.png)

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
    
    *   **Export product description**: In X-Cart, a product can have two types of description: a short description and a detailed description. EBay listings can have just one description. So, before you export any products to eBay, you need to specify which of the two product descriptions should be used for eBay. In this field you set the type of product description that should be exported to eBay by default. If any of your products need to use a different type of description on eBay, you can adjust this setting individually for these products in their [eBay product options](#configuring-ebay-options-for-products-and-categories). 
    
    *   **Product code type**: Specify the type of global product code (EAN / USBN / UPC) to be used for the export of products to eBay. If no code is specified for a product, "Does not apply" will be sent to eBay.
    
3.  Adjust the settings in the **System options** section:
    ![xc5_ebay_general_settings_sys_options.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_general_settings_sys_options.png)

    *   **Show eBay warning messages in admin area**: When exporting products to eBay or importing orders from eBay, you may get eBay warnings. Unlike errors, warnings are conditions that are not fatal to the addon operation, but they alert you to some minor problems that you may want to fix. Any warnings your store gets from eBay are written to log files in your X-Cart store. If, in addition to that, you also wish to have eBay warning messages displayed in your store's Admin area, enable this option. 
    
    *   **Save eBay API requests/responses in the log file**: If you need eBay API requests/responses to be written to log file (for example, if you need this information for debugging purposes), enable this option.
    
    *   **Allow upload eBay orders automatically**: This option is enabled by default. It allows automated import of eBay orders into your X-Cart store by cron. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow update products on eBay automatically**: This option is enabled by default. It allows automated updating of eBay items by cron via the export of product information from your X-Cart store to eBay. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow update inventory of products on eBay automatically**: This option is enabled by default. It allows automated updating of the inventory information (quantity in stock) of eBay items by cron via the export of inventory information from your X-Cart store to eBay. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow update inventory of products from eBay automatically**: This option is disabled by default.  It allows automated updating of the inventory information (amount/quantity in stock) of the products in your X-Cart store via the import of inventory information from eBay to your X-Cart store. See {% link "Automating import and export tasks for eBay Integration" ref_qPIZcwNs %} for more info.
    
    *   **Allow end items on eBay**: This option is enabled by default. It enables you to end items on eBay manually with a click of a button; it also allows a special cron script in X-Cart to automatically end eBay items if they run out of stock. If you choose to disable this option, the buttons to end items on eBay will not be provided; any items that run out of stock before the period for which they have been listed on eBay expires will also not be ended automatically.
    
    *   **Allow update eBay order status**: This option is disabled by default. 
    
4.  Click **Save** to save your changes.
    ![xc5_ebay_general_settings_save.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_general_settings_save.png)

    You should see a success message like the following:
    ![xc5_ebay_general_settings_success.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_general_settings_success.png)

That is all; you have completed the basic configuration of your eBay Integration and can now start selling on eBay. However, if you require a more nuanced approach to publishing your products on eBay (for example, if you need to map your products to eBay categories more accurately than simply by setting one common default category for all your products), we recommend you take a couple more steps to complete your store's eBay related configuration. For more info, see the sections on configuring [eBay options for categories and products](#configuring-ebay-options-for-products-and-categories).

## Configuring eBay options for products and categories

The sections **Categories** and **General Settings** of the eBay Configuration page allow you to set the most basic rules for how your product information should be exported to the eBay site for which the eBay configuration has been created. This includes which eBay category your products should be exported to, whether a price modifier should be used to increase or decrease the product price on eBay, and so on.

By default, these rules will apply to all the products that are exported to the said eBay site. However, if you want different products in your store to be treated differently (for example, if you want to publish different products in different eBay categories, or use a price modifier just for a couple of products), you will need to fine-tune your eBay export by adding more rules at the level of specific products and/or categories.

The rules in question can be set by configuring the eBay options for these products/categories. The eBay options set at the level of a specific product will apply to that product only. The eBay options set at the level of a category will apply to the products in that category and the products in all the subcategories of that category.

 To set eBay options for a category: 

1.  In the Manage categories section of your X-Cart store's Admin area (**Catalog** > **Categories**), find the category for which you need to set eBay options and click on its name to go to the category details page:
    ![xc5_ebay_manage_categories_page.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_manage_categories_page.png)

2.  On the category details page, select the **eBay category options** tab:
    ![xc5_ebay_ebay_category_opts.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_ebay_category_opts.png)

    The eBay category options page opens:
    ![xc5_ebay_ebay_category_opts_page.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_ebay_category_opts_page.png)

3.  Adjust the eBay options for the selected category:
    3.1 Use the **eBay Site** field to select the eBay site to which the eBay options below should apply.
    3.2 Set the eBay options below (Your settings will apply to all the products that will be exported from the current category to the eBay site selected above):
    *   **Allow export to eBay**: Specify whether the products from this category and the subcategories of this category should be exported to the selected eBay site. If you do not intend to sell any products from this category and its subcategories on the eBay site specified above, you can forbid the export of this category to eBay by deactivating this option.
    *   **Main eBay Category**: Set the main eBay category for the products from the selected X-Cart category and the subcategories of this category.
    *   **Additional eBay Category**: Set the additional eBay category for the products from the selected X-Cart category and the subcategories of this category.
    *   **Product price modifier**: If the price of the products on eBay needs to be different from the price in the X-Cart store, set a price modifier.
4.  Once you are done configuring the eBay options for the selected category, click **Save options** to save your changes.
    ![xc5_ebay_ebay_category_opts_save.png]({{site.baseurl}}/attachments/ref_SCbAqGqX/xc5_ebay_ebay_category_opts_save.png)

    The eBay options for the category will be saved.

To set eBay options for a product:

1.  In your X-Cart store's Admin area, find the product for which you need to set eBay options. For example, you can find it via the Products section (**Catalog** > **Products**). Click on the product name to access the details of the product that has been found:
    ![]({{site.baseurl}}/attachments/9306381/9439152.png)
    
2.  On the product details page that opens, select the **eBay product options **tab:
    ![]({{site.baseurl}}/attachments/9306381/9439153.png)
    The eBay product options section of the product details opens:
    ![]({{site.baseurl}}/attachments/9306381/9439154.png)

3.  Adjust the eBay options for the selected product:

    *   **Allow export to eBay**: Specify whether the product should be exported to eBay. If you do not intend to sell this product on eBay, you can forbid the export of this product to eBay by deactivating this option.
    *   **Main eBay Category**: Set the main eBay category for the product.
    *   **Additional eBay Category**: Set the additional eBay category for the product.
    *   **Product price modifier**: If the price of the product on eBay needs to be different from the price of this product in your X-Cart store, set a price modifier.
    *   **Export product description**: In X-Cart, a product can have two types of description: a short description and a detailed description. EBay listings can have just one description. So, before you export any products to eBay, you need to specify what type of description should be used for the eBay listing that will be based on the selected product. The available options are _SShort description_ and _Full description_. These correspond to X-Cart's short and detailed product descriptions, respectively. 
    *   **eBay item ID**: Leave this field be; it will be populated with an item ID value automatically after the product is exported to eBay.
4.  Once you are done configuring the eBay options for the selected product, click **Save options** to save your changes. 
    ![]({{site.baseurl}}/attachments/9306381/9439155.png)
    The eBay options for the product will be saved.

_Related pages:_

*   {% link "X-Cart eBay Integration System Requirements and Installation" ref_RgzAH0hf %}
*   {% link "Exporting Products to eBay" ref_40Al0Nky %}
*   {% link "Automating Import and Export Tasks for eBay Integration" ref_qPIZcwNs %}
