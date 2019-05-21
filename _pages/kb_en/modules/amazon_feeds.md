---
lang: en
layout: article_with_sidebar
updated_at: '2018-11-16 11:19 +0400'
identifier: ref_4UNr3oKZ
title: Amazon Feeds
order: 19
published: true
---
X-Cart's addon [Amazon Feeds](https://market.x-cart.com/addons/amazon-feeds.html "Amazon Feeds") allows merchants to export products and related data to Amazon to start selling there in order to gain new sales and extend customer pull.

To start using the addon, install it as described in {% link "Installing Addons from the Marketplace" ref_Vn1mMUw9 %}.

{% note warning %}
Prerequisites:
To be able to use the addon Amazon Feeds, a merchant should be signed up with the [Amazon Professional Seller plan](https://services.amazon.com/selling/pricing.html "Amazon Feeds") that allows to create a developer account. 
{% endnote %}

{% toc %}

## Amazon Feeds Addon Configuration and Setup

Once the addon has been installed and enabled, proceed to the addon settings page to configure the settings:

![module-installed.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/module-installed.png)

You will be automatically redirected to the **Sales Channels** -> **Amazon** section of your store's Admin area where you will be able to proceed with the marketplaces' configuration:

![settings-page.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/settings-page.png)

To add a new marketplace:

1. Click the **Configure new marketplace** button. 
2. You will see a screen titled **New marketplace** where you will need to specify your AWS account details:
   ![new-marketplace-1.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/new-marketplace-1.png)
   
   [To get the AWS account details:]
   * Open your Amazon Professional Seller account at [https://sellercentral.amazon.com/](https://sellercentral.amazon.com/ "Amazon Feeds").
   * [Add a developer](https://docs.developer.amazonservices.com/en_US/dev_guide/DG_Registering.html "Amazon Feeds") to your seller account then authorise this developer.
     {% note warning %}
     If you don't have a developer registration, register yourself as a developer at Amazon following the instructions on the Amazon MWS Developer Registration and Assessment form. 
     <div class="ui stackable four column grid">
        <div class="column" markdown="span">![11.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/11.png)</div>
        <div class="column" markdown="span">![22.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/22.png)</div>
        <div class="column" markdown="span">![33.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/33.png)</div>
        <div class="column" markdown="span">![34.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/34.png)</div>
     </div>
     When registering as a developer you should specify YOUR business data, not the X-Cart business data.
     {% endnote %}
   * Copy and past your AWS Merchant ID, AWS Access Key ID and AWS Secret Key from this authorisation to the fields in the form in the X-Cart admin:
     ![account-data.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/account-data.png)
   * Choose the country that corresponds with your Amazon account data.
   * Click on the **Get available marketplaces** button to get the **Marketplace** field value.
   * **Save** the settings. 
   
     If everything is specified correctly the new marketplace will gain the **Configured** status automatically. 
     ![status-configured.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/status-configured.png)

3. Select the export options for products and import options for orders for the configured marketplace:
   ![import-export.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/import-export.png)
   
   To set up products export options:
     * Enable the **Automatically sync X-Cart product updates to Amazon** checkbox in the **Products** section. 
       
       {% note warning %}
       The **Automatically sync X-Cart product updates to Amazon** option requires a special {% link "cron task" ref_lLqNzAaq %} set up on the server hosting your X-Cart store.
       {% endnote %}
     
     * Select whether to update everything or inventory only in the drop-down.
       
       {% note info %}
       If this is your first product import to Amazon choose first the 'all' option to submit all products info and change the value to 'inventory' afterwards to update the product inventory data only. 
       If you already have products uploaded to Amazon and need to synchronize the inventory only choose the 'inventory' option.
       {% endnote %}
       
     * **Save** the configuration settings.
     * Add fields mapping for product properties that becomes available after the settings are saved. 
       
       For this purpose: 
       * Click the **Add mapping** link in the **Products** section. 
         ![products-add-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/products-add-mapping.png)
       * You'll see a **Fields mapping** pop-up, where you can match the Amazon fields' values (1st column) with the X-Cart fields' values (2nd column)
         ![fields-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/fields-mapping.png)
       * Choose the fields you want to match and click **Create**. You can add more than one mapping for a field.
       * All mapped product properties will be automatically listed in the **Products** section.
         ![mapped-product-properties.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/mapped-product-properties.png)
   
       {% note info %}
       Fields mapping is used for a proper info representation on Amazon. 
       
       e.g. 
       
       If you map Amazon description field with both description and full description product properties in X-Cart, a product description on Amazon will inherit the information from the first not empty field found in X-Cart (either brief or full product description texts), but not both.
       {% endnote %}
   
   To set orders import options:
     * Enable the **Automatically import orders** checkbox in the **Orders** section.
       
       {% note warning %}
       The **Automatically import orders** option requires a special {% link "cron task" ref_lLqNzAaq %} set up on the server hosting your X-Cart store.
       {% endnote %}
       
     * **Save** the configuration settings.
     * Add fields mapping for shipping settings that becomes available after the settings are saved. 
     
       For this purpose:
       * Click the **Add mapping** link in the **Orders** section.
         ![orders-add-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/orders-add-mapping.png)
       * You'll see a **Shipping setting** pop-up where you can map a particular Amazon shipping service with an X-Cart shipping method for a zone:
         ![shipping-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/shipping-mapping.png)
       * All mapped shipping settings will be automatically listed in the Orders section:
         ![mapped-shipping-settings.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/mapped-shipping-settings.png)
       * If necessary you can delete a shipping mapping by selecting the required positions and choosing the **Delete selected items** option for them.
         ![delete-shipping-mapping.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/delete-shipping-mapping.png)
         
       {% note info %}
       In case shipping mapping is not configured all orders imported from Amazon will gain 'Amazon shipping' value as a shipping method automatically. 
       
       For configured shipping mapping shipping info in all orders imported from Amazon will be represented according to the maping rules set. 
       {% endnote %}

4. **Save** all the configuration changes for the new marketplace.

All configured marketplaces are added to the **Marketplaces** list in the **Sales channels** -> **Amazon** section in the X-Cart admin area:

![configured-marketplaces.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/configured-marketplaces.png)

You can add as many marketplaces as many Amazon accounts you have. 

## Additional Import Rules

All products are exported from X-Cart and imported to Amazon according to the mapping rules specified in the **Products export options** section (**Sales channels** -> **Amazon**). 

If you want to make additional mapping rules for some of your categories (applied to all products from this category) and/or products (applied to a particular product only) this can be done directly on the category/product details page.

For this purpose: 

1. Locate a category/product in question on the categories or products listing page in the admin area (**Catalog** -> **Categories** for categories and **Catalog** -> **Products** for products).
2. Open the category/product details page and proceed to the **Amazon category options** / **Amazon product options** tab respectively:
   <div class="ui stackable two column grid">
    <div class="column" markdown="span"><i>Category details page</i>![category-details-amazon.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/category-details-amazon.png)</div>
    <div class="column" markdown="span"><i>Product details page</i>![product-details-amazon.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/product-details-amazon.png)</div>
   </div>  
3. In the **Category** and **Category type** drop-downs of the **Main export options** section select the Amazon category values that correspond with the category/product in question. 

{% note info %}
Amazon **category** and **category type** fields allow to set up a type of a product that will determine what particular product properties are added to the feed. If you add e.g. _Clothing_ -> _Dress_ mapping it will be possible to assign such product parameters as size, sleeve length, season, etc. to a product after it is exported to Amazon.
{% endnote %}

4. Add a specific fields mapping if required. 
   * Click on the **Add mapping** link
   * Match the Amazon fields' values (1st column) with the X-Cart fields' values (2nd column) in the **Fields mapping** pop-up
5. Save the settings.

Category and product specific import rules are of the first priority during feed submission to Amazon.

## Feed Submissions

In case the **Automatically sync X-Cart product updates to Amazon** and **Automatically import orders** options are enabled for a marketplace the feeds and the orders will be automatically submitted to and/or imported from Amazon provided that a corresponding {% link "cron task" ref_lLqNzAaq %} is configured on the server hosting your X-Cart store. 

If you want to submit feeds to Amazon manually:

1. Open the **Sales channels** -> **Amazon** section 
2. Select the marketplaces from the list (tick a checkboxes in front of a marketplace)
   ![submit-feeds-list.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/submit-feeds-list.png)
3. Click **Submit feeds** button 
4. Choose the feeds to submit from the list in a pop-up
   ![submit-feeds-popup.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/submit-feeds-popup.png)
5. Click the **Submit feeds** button

That's it. The feeds are submitted the results being recorded in the **Feed Submissions** section.

![feed-submissions.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/feed-submissions.png)

To check the results click the **View details** button opposite the feed in question:

![feeds-view-details.png]({{site.baseurl}}/attachments/ref_4UNr3oKZ/feeds-view-details.png)

{% note warning %}
Amazon has strict limitations on amount of feed submissions per hour. Hence we recommend configuring automated feed submissions to avoid any possible confusion.  
{% endnote %}

If you need to import orders manually select the marketplaces and click the **Import orders** button. Then click **Start** for the order import to begin.
