---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-11 15:43 +0400'
identifier: ref_w5MRyybe
title: Getting started with Mailсhimp Integration with E-commerce support
order: 100
published: true
---
Getting started with Mailсhimp Integration:

   * Make sure integration is {% link "installed and active" ref_0fGEpvrh %} in your X-Cart store. If not, install the Mailchinp module as described in {% link "Installing addons from the Marketplace" ref_Vn1mMUw9 %}.
   
   {% note info %}
   The Mailchimp module requires the default Newsletter subscriptions module to be {% link "installed and enabled" ref_uEnDBBA7 %}. If both addons are used at the same time, the “Newsletter subscriptions” addon will be linked to Mailсhimp and the subscriber email addresses submitted via the subscription form will no longer be stored to a list within X-Cart, but will be handled via Mailсhimp, provided that your X-Cart store is connected to your Mailсhimp account via the addon settings, and the Mailсhimp Integration is configured properly.
   
   If your store has a list of subscribers formed by the addon “Newsletter subscriptions” when you switch to Mailсhimp, you should not expect these subscribers to be imported into Mailсhimp automatically. To use your existing subscribers with Mailсhimp, you will need to export them from your X-Cart store and import them into your Mailсhimp account. See [https://kb.mailchimp.com/lists/growth/import-subscribers-to-a-list](https://kb.mailchimp.com/lists/growth/import-subscribers-to-a-list "Getting started with Mailсhimp Integration with E-commerce support") for information on how to import subscribers into Mailсhimp.
   {% endnote%}
   
   * [Connect integration to your Mailсhimp account](#connect-integration-to-your-mailchimp-account).

See also:

   * [Disconnect integration](#disconnect-integration)


## Connect Integration to Your Mailсhimp Account

To use Mailсhimp with your X-Cart store, you will need to connect your Mailсhimp integration with your Mailсhimp account. If you do not yet have a Mailсhimp account, you can [sign up here](https://login.mailchimp.com/signup/?source=website&pid=xcart). 

The connection is done using an API key, so you will need one. Instructions for how to find or generate your API key are available in the Mailсhimp knowledge base article [About API keys](http://kb.mailchimp.com/integrations/api-integrations/about-api-keys).

Once an API key has been set up for your X-Cart store in your Mailсhimp account, connect your integration to Mailсhimp:

Step 1. Go to the “Mailсhimp Integration with Ecommerce support” addon settings page in your X-Cart store’s Admin area. You can do so by selecting the Settings link for the addon “Mailсhimp Integration with Ecommerce support” in your store’s Installed Addons section.
![mailchimp-installed.png]({{site.baseurl}}/attachments/ref_w5MRyybe/mailchimp-installed.png)

Before you have connected the integration to your Mailсhimp account, the addon settings page allows you to select a connection method:
![xc5_mailchimp_connecting.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting.png)

Step 2. Use one of the following methods to connect to Mailсhimp:

   * Method 1: Sign up for a new Mailchimp account and have it connected to your integration automatically
      * Step 1. Click on the “Sign Up” button. 
        ![xc5_mailchimp_signup.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_signup.png)
      
      * Step 2. On the page that opens, provide the information required by Mailсhimp to create a new account.
        ![xc5_mailchimp_signup1.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_signup1.png)

        Once your new Mailchimp account has been created, your X-Cart Mailсhimp integration will be connected to it.
         
   * Method 2: Log in to your existing Mailchimp account and have it connected to your integration automatically
      * Step 1. Click on the link “Connect with your Mailсhimp account”. 
       ![xc5_mailchimp_connecting1.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting1.png)
       
       * Step 2. On the Mailсhimp authorization page, enter your Mailсhimp login and password and click **Log In**.
         ![xc5_mailchimp_connect2account.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connect2account.png)
         Provided that the authorization goes successfully, your X-Cart Mailсhimp integration will be connected to your Mailсhimp account.
            
   * Method 3: Enter your Mailchimp API key manually and have your Mailchimp account connected to your integration
       * Step 1. In your Mailсhimp account, copy the API key you have set up for your X-Cart store.
       * Step 2. On the Mailсhimp Integration addon settings page in your X-Cart store, paste the API key into the field that says “Enter your Mailсhimp API key manually” and press Enter.
         ![xc5_mailchimp_connecting2.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting2.png)
         
         Provided that a valid API key has been used, your X-Cart Mailсhimp integration will be connected to your Mailсhimp account.

Regardless of the connection method that has been used, after a successful connection you will be able to see the “Mailсhimp Integration with E-commerce support” module settings page with your Mailсhimp API key showing in the field of the same name:
![xc5_mailchimp_successfully_authenticated.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_successfully_authenticated.png)

Should you need to change the Mailсhimp account or the API key used for the connection, you will be able to do so at any time using the “Reset Mailсhimp connection” link provided next to the Mailсhimp API key field (See [Disconnect Integration](#disconnect-integration) for more info).

Once your integration has been connected to your Mailсhimp account, you should configure it. For example, you will be able to toggle the E-commerce analytics and Abandoned carts features, choose how your customers should be able to subscribe to your Mailсhimp lists (whether a customer should be able to choose more than one list when subscribing, whether an additional confirmation should be required after a customer opts in to subscribe, etc.) For more info, see {% link "Configuring the addon 'Mailсhimp Integration with E-commerce support'" ref_ST1QnErC %}

If you've already had some lists and list groups configured in your Mailсhimp account before connecting your X-Cart store to Mailсhimp, you should expect to find these lists and groups imported into your X-Cart store as soon as the connection between the store and your Mailсhimp account has been established. To view and manage the lists imported from your account, go to the **Sales channels** > **Mailсhimp lists** page. At the least, you will need to visit this page and make sure that the lists to which you would like your store users to be able to subscribe are active for your store. For more info on managing lists in X-Cart, see {% link "Managing your Mailсhimp lists" ref_dHGZpSCX %}. If you haven't yet created any lists on the Mailсhimp end and need more information on this topic, see the Mailсhimp Knowledge Base [article on Lists](https://kb.mailchimp.com/lists). 

As soon as your lists/groups are ready, your store's users will be able to subscribe to them via the subscription form on the checkout and registration pages. Registered customers will be able to change their subscriptions (add more lists/groups or unsubscribe completely) via the Account details page. You as the store administrator will also be able to edit the subscription preferences of your store users by editing the profiles of these users via your X-Cart store's Admin area. 

After setting up your lists in Mailсhimp, you will be able to create and send [Campaigns](http://kb.mailchimp.com/campaigns).

To make the most of Mailсhimp's e-commerce features, be sure to enable e-commerce link tracking when configuring your campaigns or automations to track purchases. 
To turn on e-commerce link tracking for a campaign, follow these steps:

   1.  Navigate to the Setup step of the Campaign Builder.
   2.  In the Tracking section, check the box next to E-commerce link tracking. 
   
This way you will be able to track individual visitors of your website attracted by your Mailсhimp campaigns, capture customers purchasing activity, and pass it all back to Mailсhimp. You will be able to view purchase details, conversions, and total sales on the Reports page in your Mailсhimp account. 

{% note info %}
Mailсhimp mailing lists support segmentation based on your subscribers' purchase activity: Orders amount (Biggest Spenders/Tiny spenders), Frequency of ordering (Frequent Buyers/We Miss You), Series of purchasing (after a specific product purchase). Based on your customers' purchasing activity, Mailсhimp will recommend products to your newsletter recipients. Every recipient will see a set of products that are more likely to be interesting particularly to them.
{% endnote %}

With the advanced Email Automation capabilities of Mailсhimp, you will be able to set emails or series of emails to be sent to your customers right away as soon as they take particular actions in your store, i.e. just subscribed, abandoned cart, made a first purchase, bought any/specific product, bought product from some category.

## Disconnect Integration
Should you need to disconnect your X-Cart Mailchimp integration from the currently used Mailchimp account and to connect it to some other Mailchimp account, or to connect it to the same Mailchimp account using a different API key, use the “Reset Mailchimp connection” feature:

   Step 1. You will need the username and password for the Mailchimp account to which you will be connecting your Mailchimp integration, so make sure you have them at the ready. You will also require an API key that your Mailchimp integration will use to access that account on your behalf, so make sure an API key has been generated as per the instructions in the Mailchimp knowledge base article [About API keys](http://kb.mailchimp.com/integrations/api-integrations/about-api-keys).

   Step 2. On the Mailchimp Integration addon settings page in your X-Cart store, click on the “Reset Mailchimp connection” link to the right of the Mailchimp API key field.
![xc5_mailchimp_reset_connection.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_reset_connection.png)

   Step 3. On the page that opens, enter the username and password for the Mailchimp account to which the integration needs to be connected and choose to log in.
![xc5_mailchimp_connect2account.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connect2account.png)

   Once you have been successfully authenticated, the integration will be disconnected from the current Mailchimp account and connected to the account that has been specified.

If you wish to stop using X-Cart’s Mailchimp integration, you can either deactivate or uninstall the addon in your X-Cart store. Deactivation stops the addon from operation, but it does not remove the settings you made to the addon configuration nor clear any data that was generated or collected during the period that the addon was in operation. If you wish to completely remove all the data related to using the addon, you need to uninstall it.

To deactivate or uninstall the Mailchimp integration addon:

   Step 1. Log in to your X-Cart store’s Admin area.
   
   Step 2. Click the **My addons** menu item on the Admin menu to access your store’s Installed Addons section. 

   Step 3. In the list of your installed addons, find the one named  “Mailchimp Integration with Ecommerce support” and choose the desired action:
To deactivate the addon, set the ON/OFF switch to the “OFF” position.
To uninstall the addon, click on the Trash icon.

   Step 4. Click **Save changes**.
   
Your X-Cart installation will take a few moments to deactivate / uninstall the addon and re-deploy your store. 

Once the process has been completed, Mailchimp will no longer be used to handle newsletter subscriptions for your store.

_Related pages:_

* {% link "Configuring the addon 'Mailchimp Integration with E-commerce support'" ref_ST1QnErC %}
