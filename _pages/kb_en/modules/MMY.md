---
lang: en
layout: article_with_sidebar
updated_at: '2018-03-19 13:53 +0400'
identifier: ref_0Esu2RNW
title: Make/Model/Year Module
order: 100
published: false
---
The [Make/Model/Year module](https://market.x-cart.com/addons/make-model-year.html "Make/Model/Year Module") allows to set up 4 levels to filter the inventory, to remember the filters for the non-registered visitors and to remember the vehicle for the registered customers. Though the module is mainly aimed at the sellers of auto parts or/and moto parts, it can also be used by any seller who differentiates the products by levels like computers, copiers, smartphones, etc. 

To install the module follow the steps described in {% link "Activating and deactivating addons" ref_uEnDBBA7 %}. Once the module is installed and enabled, go to the module settings page to configure it.

![installed.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/installed.png)

The module configuration settings are as follows:

![settings.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/settings.png)

{:.ui.compact.celled.small.padded.table}

| **Number of levels to be used in the filter (2,3,4)** | Here you can choose from 2 to 4 filter levels that you'll set up for your products. |
| **Name of level X**| The default filter names are preset to Make/Model/Year/Engine, but you can set any filter name instead that you like better. |
| **Maximum banner width** |Set the width of a banner that will be displayed on the Level Info page. The preset value is 500. |
| **Maximum banner hight** |Set the width of a banner that will be displayed on the Level Info page. The preset value is 200. |
| **Use separate tab for the fitment on the product page** | If enabled the information on all the vehicles the part can be used for will be displayed in a separate _Fitment_ tab on the product details page in the storefront. If disabled the info will be displayed in the main _Description_ tab. | 
| **Level X sorting** | Choose the order of the search results representation for the level. |

When the **Make/Model/Year** module settings are configured you can proceed with configuring the filter levels and populating the module with the products. 

To configure the filters go to the **Catalog** -> **Make/Model/Year/Engine** page of the admin back-end and start adding the filters of level 1 (**Makes**).

![make.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/make.png)

To add a **Make** click on the **'New Make'** button and name the Make in a new line. When you add all the makes, click **Save changes**.  

Likewise you can proceed with the next levels configuration (Model/Year/Engine). For this purpose you'll need to click the **Manage Model** link opposite to the **Make**, **Manage Year** link opposite to the **Model** and so on and add the positions for the next levels. 

<div class="ui stackable three column grid">
  <div class="column" markdown="span">![model.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/model.png)</div>
  <div class="column" markdown="span">![year.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/year.png)</div>
  <div class="column" markdown="span">![engine.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/engine.png)</div>
</div>

When the levels are configured, you can add products on the very last step by clicking the **Manage Products** link in the end. 

* If the products are already added/uploaded to the store click the **'Add product'** button and choose the products that meet the filters you configured from a list in a pop-up.
  
  ![select_products.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/select_products.png)
  
* If the products are not uploaded to the store as yet, you can import them with a .csv file using the guides from {% link "CSV import: Products" ref_WmJBfwxA %}.
  The fields that should be added to a .csv file to populate the module with products should be as follows:
  
  ![csv.png]({{site.baseurl}}/attachments/ref_0Esu2RNW/csv.png)
  
  {% note info %}
  The fields' names in the .csv file should correspond with the level manes you set on the Make/Model/Year settings page. 
  You can upload products to the module even without configuring the module levels beforehand. The levels and their values will be added to the Catalog -> Make/Model/Year/Engine section automatically from the .csv file you imported. 
  {% endnote %}
  

  