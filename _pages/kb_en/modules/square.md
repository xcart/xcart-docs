---
lang: en
layout: article_with_sidebar
updated_at: '2019-08-29 11:17 +0400'
identifier: ref_5kZcVsK7
title: Square
order: 269
published: true
---
The addon [Square Payments](https://market.x-cart.com/addons/square.html "Square") provides an integration with Square, a PCI compliant payment solution. Square is compatible with all types of devices: desktop, tablet and mobile; it also supports offline in-person payments. Square payment is integrated with X-Cart via Square API that keeps customers on your site during checkout and credit card data submission.

The integration is available for the U.S., Canada, Japan, Australia and the U.K.

{% toc %}

## Square Account Setup

Prior to configuring the addon Square Payments in the Admin area of your X-Cart based store, you will need to get a Square account that provides access to Square Developer Dashboard. There you will find all the information you require to configure the addon in your store admin. 

Here is the guide to obtain all the information you need:

1. If you have an existing Square account, use it to sign in to [Square Seller Dashboard](https://squareup.com/dashboard/ "Square"). If you do not yet have an account with Square, get one. Start with the regular [Square sign up](https://squareup.com/t/f_partnerships/d_partnerships/p_xcart/c_general/o_none/u_partnersite?route=signup "Square") link or use the **Get started** button at [https://squareup.com/us/en](https://squareup.com/us/en "Square").

   On the 'Let's create your account' page, specify your email address (will be used as your account ID), the password you want to use, and the country where your business is based. You will also need to agree to Square’s terms, privacy policy, and e-sign consent:
     ![square-sign-up.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square-sign-up.png)
   After doing so, click **Continue** to proceed to the next step.

   In the next step, submit your business details. Note that the set of form fields to be completed will depend on your selected country. 
     ![square_signup2.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_signup2.png)

   After you submit all the required information, your Square account will be created, and you will be automatically signed in to your Square Seller Dashboard.
     ![square_dashboard.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_dashboard.png)
   
2. Create your Square app.
   In your Square Seller Dashboard, click **Apps**:
   ![square_dashboard_apps.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dashboard_apps.png)
   
   Choose to visit Square App Marketplace:
   ![square_visit_marketplace.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_visit_marketplace.png)
   
   In Square App Marketplace, choose to go to Square Developer Platform:
   ![square_dev_platform_link.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_platform_link.png)
   
   On the next page, click **Get started**:
   ![square_dev_dashboard_get_started.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_dashboard_get_started.png)
   
   Choose to create a new app by clicking the **Create Your First Application** button (or **New Application**, if you already have some existing apps connected):
   ![square_dev_add_app.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app.png)
   
   Specify your app name and agree to Square Developer Terms of Service:
   ![square_dev_add_app1.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app1.png)
      
   For the sake of example, we have completed the app creation form as follows:
   ![square_dev_add_app10.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_add_app10.png)
   
   Choose to save your app by clicking **Save**. Your app will be saved and added to the list of your apps. 
   
   You will be able to access it from the 'Applications' page in Square Developer Dashboard:
   ![square_dev_apps.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_apps.png)
   
   and from the 'My Applications' page in Square Seller Dashboard:
   ![square_app_in_seller_dashboard.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_app_in_seller_dashboard.png)
   
3. Now you can get access to the information required to configure Square Payment in your store. Go to the details of the app you have created:

   In the Developer Dashboard - Click **Open** on the panel of the respective app:
   ![square_dev_app_open.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_dev_app_open.png)
   
   In the Seller Dashboard - Click **Manage** opposite the respective app on your app list:
   ![square_app_manage.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_app_manage.png)

4. Complete your Square app setup and obtain the information you require for connection.

   Start by specifying the mode in which you are going to use your Square integration with your X-Cart store. If you want to do some testing first, leave the application in **Sandbox** mode. To accept live payments, switch it to **Production**:
   ![square_sandbox_production.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_sandbox_production.png)

   Then make sure you are using the right API version. On the **Credentials** page, scroll down to locate the section **API Version**. There you will find information as to which API version is going to be used:
   ![square_api_version.png]({{site.baseurl}}/attachments/ref_18MogJUS/square_api_version.png)
   
   You need to switch this API version to the version recommended on the Square addon settings page in your X-Cart store Admin area. To switch the API version, use the button **Change Version**.

   After properly setting the API version, scroll up the **Credentials** page. Here you will find your Application ID and Access Token.  Do not close the page just yet as you will need to copy some information from Square to your X-Cart store and back to complete the connection.
  
## Square Payments Addon Configuration

Before you start, make sure the addon [Square Payments](https://market.x-cart.com/addons/square.html "Square") is {% link "installed and enabled" ref_Vn1mMUw9 %} in your X-Cart store. Also make sure you have properly completed your Square account setup and created a connection app for your store as described in the section above. Keeping the app details open in one of your browser tabs, you can now log in to your X-Cart store Admin area in another browser tab and proceed to configuring Square addon settings in your X-Cart store.

To configure the Square addon settings in your store, follow the steps below:

1. In your X-Cart store Admin area, go to the Square addon settings page. Use one of the methods below:
   * Follow the **Settings** link for the addon Square Payments in the **My Addons** section of your store Admin area:
     ![square_settings.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_settings.png)
   * In the **Store setup** -> **Payment methods** section of your store Admin area, click {% link "**Add payment method**" ref_36BqwVSF %}, use search to find the payment method "Square" and follow the Settings link opposite its name:
     ![square_settings1.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_settings1.png)

2. On the Square addon settings page, choose the application mode you require (must be the same as has been set for your Square application) and provide your connection credentials:
   ![settings-page.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/settings-page.png)
   
   **SANDBOX APPLICATION MODE**
   
    Sandbox application mode is used to test the Square payment configuration. 
     
    Set the **Application Mode** setting value to **Sandbox**. **Important**: Make sure your Square Developer Dashboard is set to **Sandbox mode** as well.
    
    Complete the following fields with the information from your Square Developer Dashboard:
    * **Sandbox Application ID** : Locate the Sandbox Application ID value on the **Square Developer** -> **Credentials** page, copy and paste it here.
    * **Sandbox Access Token** : Locate the Sandbox Access Token value on the **Square Developer** -> **Credentials** page, copy and paste it here.
    * **Sandbox Location ID** : Locate the Sandbox Location ID value on the **Square Developer** -> **Locations** page, copy and paste it here.
      
    Click **Submit** to save the settings.
   
   
   **PRODUCTION APPLICATION MODE**
   
    Production application mode is used to accept real payments in a live store. 
     
    Set the **Application Mode** setting value to **Production**.  **Important**: Make sure your Square Developer Dashboard is set to **Production mode** as well.
    
    Complete the following fields with the information from your Square Developer Dashboard:
    * **Application ID** : Locate the Application ID value on the **Square Developer** -> **Credentials** page, copy and paste it here.
    * **Application Secret** : Locate the Application Secret value on the **Square Developer** -> **OAuth** page, copy and paste it here.
         
    Click **Submit** to save the settings.
     
    Once the settings have been submitted, two new tabs will become available on the Square addon settings page of your store Admin area: **OAuth configuration** and **Locations configuration**. Both of them will need your attention.
       ![oauth+locations-tabs.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/oauth+locations-tabs.png)
       
    * **OAuth configuration**: 
         
      Open the **OAuth configuration** tab of the Square addon settings page:
           ![oauth-tab.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/oauth-tab.png)
         
      Copy the URL from this tab using the **Copy** button and paste it into the **Redirect URL** field on the **Square Developer** -> **OAuth** page; be sure to save your changes there by clicking **Save**.
         
      Then, back on the **OAuth configuration** tab of the Square addon settings page in your X-Cart store Admin area, click on the **Get OAuth Token** button. You will be redirected to Square for authorization. 
      
      You will need to login to Square using your login and password and, provided that you have passed the authorization successfully, give your app the permissions it requires (Click **Allow**). 
           ![square_app_permissions.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_app_permissions.png)

      You will then be redirected back to the **Locations configuration** tab of the Square addon settings page in your X-Cart store Admin area.
           ![square_redirected_from.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_redirected_from.png)
       
    * **Locations configuration**:
      The following configuration needs to be done on the **OAuth configuration** tab of the Square addon settings page:
           ![locations-tab.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/locations-tab.png)
         
      Adjust the **Square Location for Online Payments** setting by selecting the appropriate value from the drop-down box:
      ![square_location.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/square_location.png)
      (The location value in the drop-down box is passed to X-Cart from your Square app during the **OAuth configuration** step.)
    
    Click **Submit** to save the settings.
    
    Note that you can use the **Synchronize Square locations** button to synchronize the location data in your Square app and your X-Cart store.

3. To activate the payment method, switch it ON either on the Square Payment addon settings page (**General configuration** tab) or in the list of online payment methods in the **Store setup** -> **Payment methods** section of your store Admin area.
   
   <div class="ui stackable two column grid">
       <div class="column" markdown="span"><b>Square Settings Page</b>![paymont-on-1.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/paymont-on-1.png)</div>
       <div class="column" markdown="span"><b>Payment Methods Page</b>![payment-on-2.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/payment-on-2.png)</div>
     </div>
  
  Once enabled, the Square payment method will become available to your customers at checkout. With Square Payments, your customers will be able to specify their credit card info directly on your X-Cart checkout page. This data will be securely transmitted to Square via token.
  ![cus-checkout.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/cus-checkout.png)

## Order Processing Workflow

Square payment integration allows a store admin to choose whether a payment needs to be captured automatically or needs to be authorized first. By default all payments are set to pre-authorization by a store admin.

The payment auto capture can be enabled in the **Payment configuration** tab of the Square payment settings page in the store Admin area:
![payment-configuration.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/payment-configuration.png)

Set the **Auto capture** setting value to **Yes** and click **Submit** to save the changes. 

The **Payment configuration** tab of the Square payment settings page also allows to enable logs recording for all Square related operation. Set the **Enable debug** setting to Yes for this ourpose and click **Submit** to save the changes. All logs will be stored to the **System tools** -> **System logs** section of your store Admin area. Square logs will have the square-debug.log.YYYY-MM-DD.php or square-error.log.YYYY-MM-DD.php format.

When an order is paid with Square payment it is registered in the **Orders** -> **Orders list** section of your store Admin area. 

If Square payment is configured to payment authorization the orders will have the 'Authorized' payment status and 'New' fulfilment status by default.

![order-auth.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/order-auth.png)

To process an order it will be necessary to click either the **Capture** button to accept the payment (the order status will be changed to **Paid**) or the **Void** button to reject the payment (the order status will be changed to **Cancelled**).

If Square payment is configured to capture payments automatically the orders will have the 'Paid' payment status and 'New' fulfilment status by default.

![order-paid.png]({{site.baseurl}}/attachments/ref_5kZcVsK7/order-paid.png)

A store admin can refund or partically refund a paid order by specifying the amount for refund in a special field on the order details page and clicking the **Refund**  button. The order will get the **Refunded** status in case of a full refund and **Partially paid** status in case of a partial refund. 

{% note info %}
More info about order payment and fulfilment statuses you can find in {% link "Understanding X-Cart Order Statuses" ref_DkbTi1qJ %}.
{% endnote %}
