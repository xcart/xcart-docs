---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-19 13:53 +0400'
identifier: ref_0Esu2RNW
title: Make/Model/Year
order: 165
published: true
---
The addon [Make/Model/Year](https://market.x-cart.com/addons/make-model-year.html "Make/Model/Year") is intended primarily for [sellers of auto parts and/or moto parts](https://www.x-cart.com/sell-car-parts-online.html), but can be used by any seller who can benefit from allowing shoppers to find products in their store catalog by Year, Make, Model or any additional fields configured with the help of this addon. For example, this approach may be handy if selling things like computers, copiers, smartphones and so on. 

The addon can be used to configure up to four levels of filtering for the inventory. 

The filters configured using the Make/Model/Year addon will show up on all the pages of your online store. A shopper searching for parts for their vehicle will be able to select the make, model, year and engine they require using the convenient selectors. The search results will be provided to them as a list of products with the characteristics that have been specified. 

![filters-fontend.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/filters-fontend.png)

Note that "Make", "Model", "Year" and "Engine" are just the names used by default; you can change them as you require, as well as change the number of filtering levels that should be used (like use only three levels instead of four). 

The store will be able to "remember" the filter selections for non-registered/non logged in visitors.

Registered customers will also be able to save the information about their vehicle in their account profile using the **Remember my vehicle** checkbox. Next time they shop at your store they will be able to see the parts for their specific vehicle right away without the need to adjust the filters.


{% toc %}

## Make/Model/Year Addon Installation and Setup

To start using the addon, make sure it is installed and enabled. The addon can be obtained from the X-Cart App Store. General addon installaton instructions can be found in the section {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.
![mmy_addon.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/mmy_addon.png)

Once the addon has been installed and enabled, go to the addon settings page to configure it.

![settings.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/settings.png)

The addon settings are as follows:

* **Number of levels to be used in the filter (2,3,4)** : Here you can choose from 2 to 4 filter levels that you'll set up for your products. 
* **Name of level X** : The default filter names are preset to Make/Model/Year/Engine, but you can set any filter name you like better instead. 
* **Maximum banner width (in case of one image)** : Set the width of a banner that will be displayed on the _Level Info_ page. The preset value is 500. 
* **Maximum banner height (in case of one image)** : Set the height of a banner that will be displayed on the _Level Info_ page. The preset value is 200. 
* **Use separate tab for the fitment on the product page** : If this is enabled, the information on all the vehicles for which the part can be used will be displayed in a separate _Fitment_ tab on the product details page on the storefront. If this is disabled, the info will be displayed in the main _Description_ tab.  
  {% note info %}
  With the option **Use separate tab for the fitment on the product page** enabled, each product will have a separate **Fitment** tab that will be displayed on the product details page both in the store back end and on the storefront.
  <div class="ui stackable two column grid">
    <div class="column" markdown="span">![fitment-admin.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/fitment-admin.png)</div>
    <div class="column" markdown="span">![fitment-frontend.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/fitment-frontend.png)</div>
   </div>
  {% endnote %}
* **Use "Product is available for every vehicle" feature** : If this feature is enabled, all products with the option "Product is available for every vehicle" enabled on the product details page will be included into all configured filters.
* **Reset filter behaviour** : Choose the preferred cart behaviour (reload page or redirect to homepage) when a customer clicks "Reset filter" in the storefront. The default setting is page reloading.
* **Level X sorting** : Choose the order of the search results representation for the level. 
* **Redirect to the search page if the landing page is not ready (description is empty)** : If this feature is enabled a customer will be redirected to the regular store search page in case there is no description for the landing page (see [Level Info Page Setup](https://kb.x-cart.com/modules/MMY.html#level-info-page-setup "Make/Model/Year") for more info) that matches the customer filter choice.
* **Add selected level URLs to the categories Clean URLs** : If this feature is enabled product filter data will be added to the categories URLs in Clean URLs feature is enabled.
  {% note info %}
  In case a store category Clean URLs has the format of `https://www.your_store.com/category_1/` and the filter Clean URLs has the format of `https://www.your_store.com/Audi_A4-B6_02-04_1-8_T_quattro` the category Clean URLs format with the enabled **Add selected level URLs to the categories Clean URLs** feature will become `https://www.your_store.com/Audi_A4-B6_02-04_1-8_T_quattro/category_1/`
  {% endnote %}

The Make/Model/Year addon settings page also allows to configure the level info page view. 

Use the **Level info page view** section of the module settings page to enable the info blocks that you want to be displayed on each level info page in the customer storefront:
![level-info-view.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/level-info-view.png)

**Submit** the settings to make them active.

## Filter Levels Setup

Once the Make/Model/Year addon settings have been configured, you can proceed to configuring the filters you require and specifying which products should match these filters. 

To configure the filters:

1. In your X-Cart store back end, go to the section **Catalog** -> **Make/Model/Year/Engine**.

2. Add the filters of Level 1. If you have chosen to use the name "Make" for Level 1 filters, these will be the different "Makes" that you have in your catalog. 
   ![make.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/make.png)
   
   If you are using a different name for the filters of Level 1, you will see that name used instead of "Make".
   
   To add a filter at this level, click on the **New Make** button; on the new line that appears, specify the name of the Make (or whatever other filter you are configuring). Save the changes.  

3. After adding the filters you require at Level 1, you can proceed to configuring the following level of filters (Level 2). For example, after adding a Make, you need to add Models for that make. To do so, click on the **Manage Model** link opposite the Make name and add the positions you require at this level.
   
   Configuring the filters for Level 3 and Level 4 ("Year", "Engine" or whatever other names you are using for them) needs be done using the same method. 
    
     <div class="ui stackable three column grid">
        <div class="column" markdown="span">![model.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/model.png)</div>
        <div class="column" markdown="span">![year.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/year.png)</div>
        <div class="column" markdown="span">![engine.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/engine.png)</div>
     </div>

4. After all the filter levels you require have been configured, specify the products that should match the filters when a shopper uses them to search for products. At the very last step you will get the link **Manage Products**. Use this link to go to the section where you will be able to add products.

   * If the products are already in your store, you will be able to specify which products need to go here. Start by clicking the **'Add product'** button. A list of your products will be displayed in a popup. Select the products that match the filters you have configured.
     ![select_products.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/select_products.png)
     
   * If the products have not been added to your store catalog yet, you can add them by CSV import. For details, see the section [Make/Model/Year Addon Data Import/Export](https://kb.x-cart.com/modules/MMY.html#makemodelyear-addon-data-importexport) further below.
   
## **Level info** Page Setup

Starting from Level 2 (**Model**), each sublevel has a special **Level info** page, that if configured will be displayed on the storefront depending on the selected filters. It is especially useful if you want to provide your customers with additional information on the Make, Model or particular vehicle when they select it. Due to flexible settings, you can set the same page, for example, for all models and years or a separate page for each model (and even year). Using a simple interface you can set the page Title, Image and Description. 
![level_info.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/level_info.png)

When a customer clicks to filter the parts, they will be redirected to the corresponding landing page (**Level info** page) with its own name, image and information. This page will also contain the list of spare parts for the vehicle specified by the customer. 

<div class="ui stackable two column grid">
   <div class="column" markdown="span">![landing_admin.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/landing_admin.png)</div>
   <div class="column" markdown="span">![landing-customer.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/landing-customer.png)</div>
</div>

If the **Level page** is not configured for a sublevel, the addon will display search results based on the filters specified by the customer.

![customer_filters.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/customer_filters.png)


## Make/Model/Year Addon Data Import/Export 

The Make/Model/Year addon data can be exported via the **Catalog** -> **Export** section:

![export.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/export.png)

If you need to include product SKU data into the export file, use the export option **Products with Make/Model/Year/Engine** (products-mmy-YYYY-MM-DD.csv file format). The export option **Make/Model/Year/Engine listing** gives all the same export data except for the product SKU (mmy-YYYY-MM-DD.csv).

A data import for the Make/Model/Year addon can also be done in two different ways: with or without SKU.

1. **With SKU**
   
   The fields that should be added to a products-mmy-YYYY-MM-DD.csv file to populate the addon with products should be as follows:
   ![csv.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/csv.png)
   
   The fields' names in the products-mmy-YYYY-MM-DD.csv file should correspond with the level names you set on the **Make/Model/Year addon** settings page.
   
   {% note info %}
     
   If the value **ALL** is specified for a field, the SKU will be added to all existing level values (works for predefined levels only). 
     
   e.g. 
   make/model/year : all/A5/2012
     
   In this case new items will be added to all existing Make levels (make1/A5/2012, … makeNN/A5/2012). You can even import values as make/model/year: all,all,all and the SKU will be added to all existing Make/Model/Year levels. 
     
   {% endnote %}
     
   You CAN upload products to the addon even without configuring the addon levels beforehand. The levels and their values will be added to the **Catalog** -> **Make/Model/Year/Engine** section automatically from the products-mmy-YYYY-MM-DD.csv file you imported. 

2. **Without SKU**
   
   The fields that should be added to a mmy-YYYY-MM-DD.csv file to populate the addon with products should be as follows:
   ![mmy-listing-csv.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/mmy-listing-csv.png)
   
   The fields' names in the mmy-YYYY-MM-DD.csv file should correspond with the level names you set on the **Make/Model/Year** addon settings page and should have the REAL level values (the value **ALL** can't be used here).
   
   You CAN'T upload products to the addon without configuring the addon levels beforehand.
   
## Make/Model/Year Selection Statistics

The visitors' selection statistics can be tracked in a special section of the store Admin area (**Catalog** -> **M/M/Y/E selection statistics**):
![mmye-selection-stats.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/mmye-selection-stats.png)

There the store administrator can review the visitors' preferences for a certain period (last day/week/month) and maintain the store inventory accordingly.
