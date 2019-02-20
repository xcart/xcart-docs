---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-03 11:13 +0400'
identifier: ref_vpEKPoyM
title: Setting up Facebook Login for Your Store
categories:
  - User manual
published: true
order: 200
---
To add the "Login with Facebook" feature to your X-Cart store site, complete the following steps:

1.  Create and configure a new App on Facebook (See [Creating a Facebook App](#creating-a-facebook-app)).
2.  Obtain your Facebook App ID and App Secret and enter them on the "Social Login" addon settings page in your X-Cart store's Admin area (See [Configuring the Social Login module: Facebook](#configuring-the-social-login-module-facebook))

## Creating a Facebook App

To create an App for Facebook login:

1.  Go to the [Apps page](https://developers.facebook.com/apps) of the developers section of Facebook and sign in with your Facebook username and password.

2.  Click on the button **+ Add a new app**:
    ![new_app.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/new_app.png)
    
    A popup titled “Create a New App ID” will be displayed.
    ![create_app_id.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/create_app_id.png)
    
3.	Enter a name for your App into the **Display Name** field (this will be the user-facing name of your App; using your store name is recommended). 
	In the **Contact Email** field, provide a valid email address (will be used for important communication about your app). Select the category "**Apps for Pages**". Click **Create App ID**.
    
4.  On the App Products screen select **Set Up** for the **Facebook Login** product:
    ![facebook_login.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_login.png) 
    
5.  Choose the _Website_ platform:
	![web.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/web.png)
    
    This will start a wizard that will help you to complete your app configuration.

6.  On the first step of the wizard enter your site URL and click **Save** and **Continue**:
    ![quickstart.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/quickstart.png)
        
7.  The next steps are already integrated in the Social Login addon, you can skip them.
	![facebook_5.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_5.png)

8.	Scroll to the page top and use the **Settings** -> **Basic** section to see the app details:
    ![app_id.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/app_id.png)
    
    Copy-paste your App ID and App Secret to use later in the configuration of the **Social Login** addon.
    Make sure the following fields are filled in with your X-Cart site info:
    * App Domains
    * Privacy Policy URL
    * Terms of Service URL
    
9. In the **Facebook Login** -> **Settings** section specify the value of the _Valid OAuth Redirect URIs_ field. It should be of the kind - https://YOUR_XCART_STORE_URL/?target=social_login&action=login&auth_provider=facebook
    
    {% note info%}
    Make sure your store is configured to use HTTPS (X-Cart Admin -> System Tools -> HTTPS Settings). Otherwise the Facebook Login feature won't work. 
    {% endnote %}
    
10.  As your app is now in **development** mode, to go live with your app, you need to switch the mode to **live**. To do so, switch ON the selector near to the **Status: In Development** to make your app available to the general public:
    ![off.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/off.png)
    
   In the opened popup, select a **Category** in a drop-down and click **Confirm**:
    ![public.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/public.png)

   Your app is now published:
    ![live.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/live.png)

That is all. Your Facebook App has been configured.

## Configuring the Social Login Addon: Facebook

Once you have created and configured your Facebook App, you will need to obtain two pieces of information: your Facebook App ID and App Secret. These will need to be entered in X-Cart so the addon can connect to the App you created on Facebook and generate the Facebook login widget code correctly.

The Facebook App ID and App Secret can be found on the **Settings** -> **Basic** page for your App (You will need to click the **Show** button and enter your password to reveal the App Secret):

![app_id.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/app_id.png)

We recommend opening your X-Cart Admin interface in a separate browser tab or window so you can copy and paste the App ID and App Secret values from Facebook to X-Cart.

To configure the addon:

1.  In the Installed Addons section of your X-Cart store’s Admin area, locate the entry for the **Social Login** addon and click the **Settings** link below it:
    ![addons.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/addons.png)
    
    This opens the "Social Login" addon settings page:
    ![social_login_settings.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/social_login_settings.png)
    
2.  On the "Social Login" addon settings page, complete the **Facebook App ID/API Key** and **Facebook App Secret** fields with the Facebook App ID and App Secret values you obtained on Facebook. 

	The "Social Login" addon can also requests user location information, which requires additional approval from Facebook. This allows X-Cart to fill the address automatically upon user login (in case user has specified his location on the Facebook). You can disable this feature by using the **Request user location** checkbox.

3.  After you've configured the Facebook section, click the **Submit** button near the bottom of the page to save the changes.

    The "Login with Facebook" feature should now be enabled.

_Related pages:_

*   {% link "Social Login" ref_IapN8lJ8 %}
*   {% link "Setting up Google Login for Your Store" ref_LMCQeIrv %}
