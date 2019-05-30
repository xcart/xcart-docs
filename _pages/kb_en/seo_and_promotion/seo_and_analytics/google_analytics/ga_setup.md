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
To bind your X-Cart store to your Google Anaytics account you'll need to complete the following major steps:
{% toc %}
  
## Google Analytics Account Set-up

Prior to configuring the GA integration module in X-Cart you need to get a Web Property ID from the Google Analytics account you'll bind your X-Cart store to and to configure some GA account settings.

1. Open the Google Analitycs account you want to use for the purpose and find the Web Property ID value there: 

   *  If you already have the Web Property ID, find it following the steps below:
      1. Log in to [Google Analytics](https://www.google.com/analytics "Installing and Configuring Google Analytics Module"), using the Google account that owns the Analytics profile that you want to get the ID for.
      2. Choose the Analytics **Settings** tab
      3. Find the entry in the list for the Analytics profile that you need the profile for.
       
         Each profile has two rows:  the top one lists the URL of the site and profile ID, while the 2nd one has the name you have given the profile, view report-link, some statistics, and links to edit or delete the profile.
         ![id.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/id.png)
   
   *  If you don't have a Web Property ID, create a new one following the steps below:
      1. Register at https://www.google.com/analytics using your Google account.
      2. Follow the steps to create a new account and get a tracking ID
         <div class="ui stackable three column grid">
          <div class="column" markdown="span">![new-1.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/new-1.png)</div>
          <div class="column" markdown="span">![new-2.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/new-2.png)</div>
          </div>
      3. Accept Google Analytics Terms of Service Agreement
      4. Your Web Property ID is in the **Property** -> **Tracking info** -> **Tracking code** section
         ![property-id.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/property-id.png)

2. Copy the Web Property ID value. You'll need it for the X-Cart Google Analytics module configuration a bit later.

3. Proceed to **E-Commerce Settings** section of the GA admin  
   ![checkout-GA-admin.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/checkout-GA-admin.png)

4. Switch ON the **Enable E-commerce** and **Enable Enhanced E-commerce Reporting** settings and **Save** the configuration.
   ![GA-ecommerce-setup-save.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/GA-ecommerce-setup-save.png)

5. Create 5 funnel steps to match 5 actions that X-Cart will submit to GA at checkout. 
   * Click the **Add funnel step** button, enter the funnel step name and click **Finished**.
     <div class="ui stackable three column grid">
          <div class="column" markdown="span">![GA-funnel-step-1.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/GA-funnel-step-1.png)</div>
          <div class="column" markdown="span">![GA-funnel-step-2.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/GA-funnel-step-2.png)</div>
          <div class="column" markdown="span">![GA-funnel-step-3.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/GA-funnel-step-3.png)</div>
          </div>
    * Click **Save** when all 5 funnel steps are ready:
      ![GA-save-funnel-steps.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/GA-save-funnel-steps.png)
    
   {% note info %}
   The recommended names for the funnel steps are as follows:
   * Checkout step 1 - Address
   * Checkout step 2 - Shipping method
   * Checkout step 3 - Payment method
   * Checkout step 4 - Place order
   * Checkout step 5 - Invoice
   
   These funnel names match the actions X-Cart will submit to GA at checkout once configured. You will be able to trace stats on these actions in the Conversions -> Checkout behaviour section of your GA account.
   
   In case the funnel steps are not created, the stats data will still be submitted, but it won't have an visual representation that you can get easily.
   {% endnote %}

## X-Cart Google Analytics Module Set-up

Make sure the Google Analytics module is installed and enabled as described in the {% link "Managing Addons" ref_gTOegEua %} guide.

When the module is enabled, open the **Settings** page to configure it.

  ![installed.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/installed.png)

The module configuration settings are as follows:

  ![settings.png]({{site.baseurl}}/attachments/ref_7aqHV7fa/settings.png)

* **Web Property ID** : Specify your Google Analytics Web Property ID here.
* **What are you tracking** : Choose between _single domain_ / _one domain with multiple subdomains_ / _multiple top level domains_ depending on your preferences. 
* **Google Analytics code version** : Choose between _Universal Analytics_ and _Traditional Analytics_.
  
  A preset value is [Universal Analytics](https://support.google.com/analytics/answer/3450662?hl=en "Installing and Configuring  Google Analytics Module"), it refers to the current Google Analytics version. If you prefer using an old version of Google Analytics switch to Traditional instead.
  
* **Enable eCommerce Google Analytics** : Enable/Disable submitting ecommerce data to Google Analytics
* **Register purchase only on Paid status change** : When enabled, order data is sent to Google Analytics when an order gets the ‘Paid’ status. When disabled, X-Cart sends order data when an invoice page shows up to a customer regardless of the order status.
* **Debug mode** : Enable to check all actions submitted to Google Analytics in a browser JS console.

**Submit** changes when the module configuration is complete. 

Google Analytics will collect statistics based on the settings you specified.
