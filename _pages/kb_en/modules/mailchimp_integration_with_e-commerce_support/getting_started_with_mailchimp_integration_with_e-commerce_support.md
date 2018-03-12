---
lang: en
layout: article_with_sidebar
updated_at: '2017-09-11 15:43 +0400'
identifier: ref_w5MRyybe
title: Getting started with MailChimp Integration with E-commerce support
order: 100
published: true
---
Getting started with MailChimp Integration:

   * [Make sure integration is installed and active](#make-sure-integration-is-installed-and-active-in-your-x-cart-store) in your X-Cart store. If not, [download and install integration from X-Cart Marketplace](#download-and-install-integration-from-x-cart-marketplace).
   
   * [Connect integration to your MailChimp account](#connect-integration-to-your-mailchimp-account).

See also:

   * [Disconnect integration](#disconnect-integration)

## Make sure integration is installed and active in your X-Cart store

Users of new X-Cart installations will find the addon "MailChimp Integration with Ecommerce support" already installed and active in the Installed Addons section of their store’s Admin area. 

You can check whether you have the MailChimp integration add-on module in your X-Cart 5 based store as follows:

Step 1. Log in to your X-Cart store’s Admin area.

Step 2. Click the **My addons** menu item on the Admin menu to access your store’s Installed Addons section.
![xc5_mailchimp_my_addons.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_my_addons.png)

Step 3. In the search bar, type “mailchimp” and press “Enter” (The search is not case-sensitive).
![xc5_mailchimp_search_in_installed.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_search_in_installed.png)

After the page re-loads, you will be provided with a list of add-on modules that have a mention of MailChimp in their name or description that are currently installed in your store. 

Step 4. In the list provided to you, look for the addon name “MailChimp Integration with Ecommerce support”. If you can see it on the list, it means that the addon for MailChimp integration is already installed in your store. 
![xc5_mailchimp_addon_name_in_installed.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_addon_name_in_installed.png)

Pay attention to the ON/OFF switch below the addon name.
![xc5_mailchimp_on_off_switch.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_on_off_switch.png)

If it is set to “ON”, the addon is active and ready to use. If it is set to “OFF, the addon needs to be activated. 
To activate the addon, set the ON/OFF switch to “ON” and click the **Save changes** button below the addon list. 
![xc5_mailchimp_install.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_install.png)

Your X-Cart installation will take a few moments to activate the addon and re-deploy your store.

If you haven’t been able to find the addon “MailChimp Integration with Ecommerce support” in your store’s Installed Addons section, it means that the addon is not installed currently, and you will need to install it before you continue (See [further below](#download-and-install-integration-from-x-cart-marketplace) for instructions).

Step 4. Take a note of whether the addon “Newsletter subscriptions” is also installed and active. 
![xc5_mailchimp_newsletter_subscr.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_newsletter_subscr.png)

Please be aware that if both the addons are used at the same time, the “Newsletter subscriptions” addon will be linked to MailChimp as well. The “Newsletter subscriptions” addon enables a subscription form in the site footer where your site visitors can submit their email addresses to subscribe to your store newsletter. When you use the addon “Newsletter subscriptions” on its own, any email addresses submitted via this form are added to your store’s own list of newsletter subscribers in the Subscribers section of the Admin area where they can be managed by the administrator. If, however, you use X-Cart’s MailChimp integration addon along with “Newsletter subscriptions”, the subscriber email addresses submitted via the subscription form are no longer stored to a list within X-Cart, but are handled via MailChimp. That, of course, provided that your X-Cart store is connected to your MailChimp account via the addon settings, and the MailChimp Integration is properly configured.

## Download and Install Integration from X-Cart Marketplace

If, for some reason, the MailChimp integration addon is missing from the Installed Addons section of your X-Cart store’s Admin area, you can install it as follows:

Step 1. In the Installed Addons section of your X-Cart store’s Admin area, click on the link “View more addons in Marketplace”.
![xc5_mailchimp_viewmore.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_viewmore.png)

You will be redirected to the Addons Marketplace.

Step 2. In the search bar, type “mailchimp” and press “Enter” (The search is not case-sensitive). 
![xc5_mailchimp_addons_mktplce.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_addons_mktplce.png)

After the page re-loads, you will be provided with a list of add-on modules in our Addons Marketplace that have a mention of MailChimp in their name or description. 

Step 3. In the list, look for the addon name “MailChimp Integration with Ecommerce support”.
![xc5_mailchimp_addon_name_mktplce.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_addon_name_mktplce.png)

It is the addon you require. 

Step 4. Select the Install checkbox near the addon name and click the Install addons button. 
![xc5_mailchimp_install.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_install.png)

The addon will be downloaded from the Addons Marketplace, installed and activated automatically. 
![xc5_mailchimp_deploy.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_deploy.png)

Once the installation process has been completed, you will be able to find the addon in the Installed Addons section of your store’s Admin area. From there you will be able to
 access the addon configuration settings page by clicking the Settings link. 

## Connect Integration to Your MailChimp Account

To use MailChimp with your X-Cart store, you will need to connect your MailChimp integration with your MailChimp account. If you do not yet have a MailChimp account, you can [sign up here](https://login.mailchimp.com/signup/?source=website&pid=xcart). 

The connection is done using an API key, so you will need one. Instructions for how to find or generate your API key are available in the MailChimp knowledge base article [About API keys](http://kb.mailchimp.com/integrations/api-integrations/about-api-keys).

Once an API key has been set up for your X-Cart store in your MailChimp account, connect your integration to MailChimp:

Step 1. Go to the “MailChimp Integration with Ecommerce support” addon settings page in your X-Cart store’s Admin area. You can do so by selecting the Settings link for the addon “MailChimp Integration with Ecommerce support” in your store’s Installed Addons section.
![xc5_mailchimp_settings_link.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_settings_link.png)

Before you have connected the integration to your MailChimp account, the addon settings page provides a form for connecting:
![xc5_mailchimp_connecting.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting.png)

Step 2. Use one of the following methods to connect to MailChimp:

   * Method 1
       Step 1. Click on the link “Connect with your MailChimp account”. 
       ![xc5_mailchimp_connecting1.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting1.png)

       Step 2. On the MailChimp authorization page, enter your MailChimp login and password and click **Log In**.
       ![xc5_mailchimp_connect2account.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connect2account.png)

       Provided that the authorization goes successfully, your X-Cart MailChimp integration will be connected to your MailChimp account.
            
   * Method 2
       Step 1. In your MailChimp account, copy the API key you have set up for your X-Cart store.
       Step 2. On the MailChimp Integration addon settings page in your X-Cart store, paste the API key into the field that says “Enter your MailChimp API key manually” and press Enter.
       ![xc5_mailchimp_connecting2.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connecting2.png)

       Provided that a valid API key has been used, your X-Cart MailChimp integration will be connected to your MailChimp account.

Regardless of the connection method that has been used, after a successful connection you will be able to see the “MailChimp Integration with E-commerce support” module settings page with your MailChimp API key showing in the field of the same name:
![xc5_mailchimp_successfully_authenticated.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_successfully_authenticated.png)

Should you need to change the MailChimp account or the API key used for the connection, you will be able to do so at any time using the “Reset MailChimp connection” link provided next to the MailChimp API key field (See [Disconnect Integration](#disconnect-integration) for more info).

Once your integration has been connected to your MailChimp account, you should configure it. For example, you will be able to toggle the E-commerce analytics and Abandoned carts features, choose how your customers should be able to subscribe to your MailChimp lists (whether a customer should be able to choose more than one list when subscribing, whether an additional confirmation should be required after a customer opts in to subscribe, etc.) For more info, see {% link "Configuring the addon 'MailChimp Integration with E-commerce support'" ref_ST1QnErC %}

If you've already had some lists and list groups configured in your MailChimp account before connecting your X-Cart store to MailChimp, you should expect to find these lists and groups imported into your X-Cart store as soon as the connection between the store and your MailChimp account has been established. To view and manage the lists imported from your account, go to the **Sales channels** > **MailChimp lists** page. At the least, you will need to visit this page and make sure that the lists to which you would like your store users to be able to subscribe are active for your store. For more info on managing lists in X-Cart, see {% link "Managing your MailChimp lists" %}. If you haven't yet created any lists on the MailChimp end and need more information on this topic, see the MailChimp Knowledge Base [article on Lists](https://kb.mailchimp.com/lists). 

As soon as your lists/groups are ready, your store's users will be able to subscribe to them via the subscription form on the checkout and registration pages. Registered customers will be able to change their subscriptions (add more lists/groups or unsubscribe completely) via the Account details page. You as the store administrator will also be able to edit the subscription preferences of your store users by editing the profiles of these users via your X-Cart store's Admin area. 

After setting up your lists in MailChimp, you will be able to create and send [Campaigns](http://kb.mailchimp.com/campaigns).

To make the most of MailChimp's e-commerce features, be sure to enable e-commerce link tracking when configuring your campaigns or automations to track purchases. 
To turn on e-commerce link tracking for a campaign, follow these steps:

   1.  Navigate to the Setup step of the Campaign Builder.
   2.  In the Tracking section, check the box next to E-commerce link tracking. 
   
This way you will be able to track individual visitors of your website attracted by your MailChimp campaigns, capture customers purchasing activity, and pass it all back to MailChimp. You will be able to view purchase details, conversions, and total sales on the Reports page in your MailChimp account. 

Note that MailChimp mailing lists support segmentation based on your subscribers' purchase activity: Orders amount (Biggest Spenders/Tiny spenders), Frequency of ordering (Frequent Buyers/We Miss You), Series of purchasing (after a specific product purchase). Based on your customers' purchasing activity, MailChimp will recommend products to your newsletter recipients. Every recipient will see a set of products that are more likely to be interesting particularly to them.

With the advanced Email Automation capabilities of MailChimp, you will be able to set emails or series of emails to be sent to your customers right away as soon as they take particular actions in your store, i.e. just subscribed, abandoned cart, made a first purchase, bought any/specific product, bought product from some category.

## Disconnect Integration
Should you need to disconnect your X-Cart MailChimp integration from the currently used MailChimp account and to connect it to some other MailChimp account, or to connect it to the same MailChimp account using a different API key, use the “Reset MailChimp connection” feature:

   Step 1. You will need the username and password for the MailChimp account to which you will be connecting your MailChimp integration, so make sure you have them at the ready. You will also require an API key that your MailChimp integration will use to access that account on your behalf, so make sure an API key has been generated as per the instructions in the MailChimp knowledge base article [About API keys](http://kb.mailchimp.com/integrations/api-integrations/about-api-keys).

   Step 2. On the MailChimp Integration addon settings page in your X-Cart store, click on the “Reset MailChimp connection” link to the right of the MailChimp API key field.
![xc5_mailchimp_reset_connection.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_reset_connection.png)

   Step 3. On the page that opens, enter the username and password for the MailChimp account to which the integration needs to be connected and choose to log in.
![xc5_mailchimp_connect2account.png]({{site.baseurl}}/attachments/ref_w5MRyybe/xc5_mailchimp_connect2account.png)

   Once you have been successfully authenticated, the integration will be disconnected from the current MailChimp account and connected to the account that has been specified.

If you wish to stop using X-Cart’s MailChimp integration, you can either deactivate or uninstall the addon in your X-Cart store. Deactivation stops the addon from operation, but it does not remove the settings you made to the addon configuration nor clear any data that was generated or collected during the period that the addon was in operation. If you wish to completely remove all the data related to using the addon, you need to uninstall it.

To deactivate or uninstall the MailChimp integration addon:

   Step 1. Log in to your X-Cart store’s Admin area.
   
   Step 2. Click the **My addons** menu item on the Admin menu to access your store’s Installed Addons section. 

   Step 3. In the list of your installed addons, find the one named  “MailChimp Integration with Ecommerce support” and choose the desired action:
To deactivate the addon, set the ON/OFF switch to the “OFF” position.
To uninstall the addon, click on the Trash icon.

   Step 4. Click **Save changes**.
   
Your X-Cart installation will take a few moments to deactivate / uninstall the addon and re-deploy your store. 

Once the process has been completed, MailChimp will no longer be used to handle newsletter subscriptions for your store.

_Related pages:_

* {% link "Configuring the addon 'MailChimp Integration with E-commerce support'" ref_ST1QnErC %}
