---
lang: en
layout: article_with_sidebar
updated_at: '2019-06-13 12:35 +0400'
identifier: ref_7fTH58sR
title: Facebook Ads & Instagram Ads Addon Installation and Setup
order: 110
published: true
---
{% toc %}

## Facebook Ads & Instagram Ads addon Installation
   
To start using the addon **Facebook Ads & Instagram Ads**, you need to make sure it is installed and enabled. 
![fb_insta_adds_addon.png]({{site.baseurl}}/attachments/ref_7fTH58sR/fb_insta_adds_addon.png)

General addon installation and activation instructions can be found in the section {% link "Managing addons" ref_gTOegEua %} of this manual.

Once the addon has been activated, a new section will become available in your store's Admin area: **Marketing** > **Facebook Ads & Instagram Ads** (in X-Cart 5.3.x and earlier the section name is **Sales Channels**). 

Also, a new setting - **Add to Facebook product feed** - will be added for each of the products in your store's catalog. You will find it in the **Marketing** section of the product details page. 
![540-add-product-feed.png]({{site.baseurl}}/attachments/ref_7fTH58sR/540-add-product-feed.png)

Note that this setting is enabled by default. All the products with the setting **Add to Facebook product feed** enabled will be added to the product feed and uploaded to your Facebook Catalog automatically.

  
##  Facebook Ads & Instagram Ads addon Setup

You can configure the addon settings in the **Facebook Ads & Instagram Ads** section of the store's Admin area (**Marketing** > **Facebook Ads & Instagram Ads**). 
  ![540-settings-page.png]({{site.baseurl}}/attachments/ref_7fTH58sR/540-settings-page.png)

This section can also be accessed via the **Settings** link in the **My addons** section:
  <div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>X-Cart 5.3.x and earlier</b>![xc5_fb_module_settings_link.png]({{site.baseurl}}/attachments/ref_LA0TBHEA/xc5_fb_module_settings_link.png)</div>
  <div class="column" markdown="span"><b>X-Cart 5.4.x</b>![540-settings.png]({{site.baseurl}}/attachments/ref_7fTH58sR/540-settings.png)</div>
</div>
  
 
 To configure the addon, adjust the following settings:
  
  {% note warning %}
  PREREQUISITES: 
  1. Make sure the addon Facebook Ads and Instagram Ads is installed and enabled.
     For the guides on installing or activating the addon, see the section {% link "Managing addons" ref_gTOegEua %} of this manual.
     <div class="ui stackable two column grid">
  <div class="column" markdown="span"><b>X-Cart 5.3.x and earlier</b>![xc5_fb_module.png]({{site.baseurl}}/attachments/ref_LA0TBHEA/xc5_fb_module.png)</div>
  <div class="column" markdown="span"><b>X-Cart 5.4.x</b>![540-module-enabled.png]({{site.baseurl}}/attachments/ref_7fTH58sR/540-module-enabled.png)</div>
</div>
  2. Make sure you have a Facebook Business account.
     If you do not have a Facebook account yet, you can create it at [https://www.facebook.com/business](https://www.facebook.com/business).
  {% endnote %}
  
  * **Frequency of Product Feed renewal** (hourly/daily/weekly): Specify how often you would like your product feed to be renewed. 
  * **Include out of stock products into feed** : Enable this option if you need the out-of-stock products to be included into the feed that is submitted to Facebook and Instagram.
  * **Facebook Pixel ID** : Specify your Facebook Pixel ID. If you do not have a Facebook Pixel ID yet, you can generate it as described at [https://www.facebook.com/business/help/952192354843755](https://www.facebook.com/business/help/952192354843755). Facebook Pixel will enable the tracking of such events as _View Content/Search/Add to Cart/Initiate Checkout/Purchase_, and you will be able to get stats on these events to work with sales funnel, ads conversion and so on.
  
  Be sure to save your settings by clicking **Save changes**.
  
  Now you can proceed to {% link "the product feed generation and upload to Facebook" ref_1LQyHRCO %}.
