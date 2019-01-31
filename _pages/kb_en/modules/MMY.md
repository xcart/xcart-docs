---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-19 13:53 +0400'
identifier: ref_0Esu2RNW
title: Make/Model/Year
order: 165
published: true
---
The [Make/Model/Year](https://market.x-cart.com/addons/make-model-year.html "Make/Model/Year") addon allows to set up up to 4 levels of filter for inventory, as well as to remember the filters for the non-registered visitors and to remember the vehicle for the registered customers. Though the module is mainly aimed at the sellers of auto parts or/and moto parts, it can also be used by any seller who differentiates the products by levels like computers, copiers, smartphones, etc. 

The **Make/Model/Year** filters show up on all pages in your online store. A customer selects a make of a product, a model, a year and an engine using convenient modern selectors and gets a list of products with the set characteristics.

![filters-fontend.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/filters-fontend.png)

Registered customers can save their vehicles in the account with the **'Remember my vehicle'** checkbox. Next time they come to your store, they will see the parts for their vehicles right away without the need to use filters.

{% toc %}

## Make/Model/Year Addon Installation and Set-Up

To install the addon follow the steps described in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}. Once the module is installed and enabled, go to the module settings page to configure it.

![installed.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/installed.png)

The addon configuration settings are as follows:

![settings.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/settings.png)

{:.ui.compact.celled.small.padded.table}

| **Number of levels to be used in the filter (2,3,4)** | Here you can choose from 2 to 4 filter levels that you'll set up for your products. |
| **Name of level X**| The default filter names are preset to Make/Model/Year/Engine, but you can set any filter name you like better instead. |
| **Maximum banner width** | Set the width of a banner that will be displayed on the _Level Info_ page. The preset value is 500. |
| **Maximum banner height** | Set the height of a banner that will be displayed on the _Level Info_ page. The preset value is 200. |
| **Use separate tab for the fitment on the product page** | If enabled the information on all the vehicles the part can be used for will be displayed in a separate _Fitment_ tab on the product details page in the storefront. If disabled the info will be displayed in the main _Description_ tab. | 
| **Level X sorting** | Choose the order of the search results representation for the level. |

{% note info %}
With the **Use separate tab for the fitment on the product page** option enabled each product will gain a separate **Fitment** tab that will be displayed on the product details page both in the admin back-end and customer frontend.
<div class="ui stackable two column grid">
  <div class="column" markdown="span">![fitment-admin.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/fitment-admin.png)</div>
  <div class="column" markdown="span">![fitment-frontend.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/fitment-frontend.png)</div>
</div>
{% endnote %}

## Filter Levels Set-Up

When the **Make/Model/Year** addon settings are configured you can proceed with setting up the filter levels and populating the addon with products. 

To configure the filters:

1. Go to the **Catalog** -> **Make/Model/Year/Engine** page of the admin back-end and start adding the filters of Level 1 (**Makes**):
   ![make.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/make.png)
   * Click on the **'New Make'** button and name the Make in a new line. 
   * When all the makes are added, click **Save changes**.  

2. Proceed with the next levels configuration (Model/Year/Engine) likewise. 
   * Click the **Manage Model** link opposite to the **Make** (**Manage Year** link opposite to the **Model** and so on) and add the positions for the next levels. 
     <div class="ui stackable three column grid">
        <div class="column" markdown="span">![model.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/model.png)</div>
        <div class="column" markdown="span">![year.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/year.png)</div>
        <div class="column" markdown="span">![engine.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/engine.png)</div>
     </div>

3. When the levels are configured, you can add products on the very last step by clicking the **Manage Products** link in the end. 
   * If the products are already added/uploaded to the store click the **'Add product'** button and choose the products that meet the filters you configured from a list in a pop-up.
     ![select_products.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/select_products.png)
   * If the products are not uploaded to the store as yet, you can import them with a .csv file using the guides [here](https://kb.x-cart.com/modules/MMY.html#makemodelyear-addon-data-importexport "Make/Model/Year").
   
## **Level info** Page Set-Up

Starting from Level 2 (**Model**), each sublevel has a special **Level info** page, that if configured will be displayed in the storefront depending on the selected filters. It’s especially useful if you want to provide your customers with additional information on Make, Model or particular vehicle when they select it. Due to flexible settings, you can set the same page, for example, for all models and years or a separate page for each model (and even year). Using a simple interface you can set the page Title, Image and Description. 
![level_info.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/level_info.png)

When a customer clicks to filter the parts, he will be redirected to the corresponding landing page (**Level info** page) with its own name, image and information. This page will also contain the list of spare parts for the vehicle specified by the customer. 

<div class="ui stackable two column grid">
   <div class="column" markdown="span">![landing_admin.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/landing_admin.png)</div>
   <div class="column" markdown="span">![landing-customer.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/landing-customer.png)</div>
</div>

If the **Level page** is not configured for a sublevel, the addon will display the search results depending on the filters set by a customer.

![customer_filters.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/customer_filters.png)


## Make/Model/Year Addon Data Import/Export 

The Make/Model/Year addon data can be exported in the **Catalog** -> **Export** section:

![export.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/export.png)

If you need to include product SKU data into the export file use the **Products with Make/Model/Year/Engine** export option (products-mmy-YYYY-MM-DD.csv file format). The **Make/Model/Year/Engine listing** export option gives all the same export data except for the product SKU (mmy-YYYY-MM-DD.csv).

A data import for the Make/Model/Year addon can also be done in two different ways:

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
   
## Make/Model/ Year Selection Statistics

The addon allows a store admin to track visitors' selection statistics in a special section in the admin area (**Catalog** -> **M/M/Y/E selection statistics**):
![mmye-selection-stats.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/mmye-selection-stats.png)

A store admin can trace visitors' preferences for the last day/week/month period and maintain the store inventory accordingly.
