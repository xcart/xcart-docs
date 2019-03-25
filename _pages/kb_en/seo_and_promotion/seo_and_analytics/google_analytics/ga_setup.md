---
lang: en
layout: article_with_sidebar
updated_at: '2018-04-03 13:24 +0400'
identifier: ref_7aqHV7fa
title: Installing and Configuring  Google Analytics Module
order: 100
published: true
redirect_from:
  - /seo_and_promotion/google_analytics/ga_setup.html
---
First of all you will need to enable the Google Analytics module as described in the {% link "Managing Addons" ref_gTOegEua %} guide.

When the module is enabled, open the Settings page to configure it.

![installed.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/installed.png)

The module configuration settings are as follows:

![settings.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/settings.png)

* **Web Property ID** : Specify your Google Analytics Web Property ID
  
  How to find your Web Property ID:
  1. Log in to [Analytics](https://www.google.com/analytics "Installing and Configuring Google Analytics Module"), using the Google account that owns the Analytics profile that you want to get the ID for.
  2. Choose the Analytics Settings tab
  3. Find the entry in the list for the Analytics profile that you need the profile for:
     Each profile has two rows:  the top one lists the URL of the site and profile ID, while the 2nd one has the name you have given the profile, view report-link, some statistics, and links to edit or delete the profile.
     
    ![id.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/id.png)
      
   How to create a new Web Property ID:
   1. Register at https://www.google.com/analytics using your Google account.
   2. Follow the steps to create a new account and get a tracking ID
      <div class="ui stackable three column grid">
       <div class="column" markdown="span">![new-1.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/new-1.png)</div>
       <div class="column" markdown="span">![new-2.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/new-2.png)</div>
      </div>
    3. Accept Google Analytics Terms of Service Agreement
    4. Your Web Property ID is in the Property -> Tracking info -> Tracking code section
    
    ![property-id.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/property-id.png)

* **What are you tracking** : Choose between _single domain_ / _one domain with multiple subdomains_ / _multiple top level domains_ depending on your preferences. 
* **Google Analytics code version** : A preset value is [Universal Analytics](https://support.google.com/analytics/answer/3450662?hl=en "Installing and Configuring  Google Analytics Module"). Also, it's possible to set the value to Traditional.
* **Enable eCommerce Google Analytics** : Enable/Disable submitting ecommerce data to Google Analytics
* **Register purchase only on Paid status change** : When enabled, order data is sent to Google Analytics when an order becomes ‘Paid’. When disabled, X-Cart sends order when an invoice page shows up to a customer regardless of the order status.
* **Debug mode** : Enable to check all actions submitted to Google Analytics in a browser JS console.

**Submit** changes when the module configuration is complete. Google Analytics will collect staistics based on the settings you specified.
