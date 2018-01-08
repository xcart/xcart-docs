---
lang: ru
layout: article_with_sidebar
updated_at: '2018-01-08 11:55 +0400'
title: Настройка авторизации через Facebook
order: 20
published: false
identifier: ref_fblogin
---
To add the "Login with Facebook" feature to your X-Cart store site, complete the following steps:

1.  Create and configure a new App on Facebook (See [Creating a Facebook App](#creating-a-facebook-app)).
2.  Obtain your Facebook App ID and App Secret and enter them on the "Social Login" module settings page in your X-Cart store's Admin area (See [Configuring the Social Login module: Facebook](#configuring-the-social-login-module-facebook))

## Creating a Facebook App

To create an App for Facebook login:

1.  Go to the [Apps page](https://developers.facebook.com/apps) of the developers section of Facebook and sign in with your Facebook username and password.

2.  Click on the button **+ Add a new app**:
    ![]({{site.baseurl}}/attachments/7504575/9439746.png)
    A popup titled "Create a New App ID" will be displayed.
    ![facebook_1.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_1.png)
    
3.	Enter a name for your App into the **Display Name** field (this will be the user-facing name of your App; using your store name is recommended). 
	In the **Contact Email** field, provide a valid email address (will be used for important communication about your app). Select the category "**Apps for Pages**". Click **Create App ID**.
    
3.  On the App Products screen select **Get started** in front of **Facebook Login** product:
	![facebook_2.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_2.png)   
    
4.  Choose the _Website_ platform:
	![facebook_3.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_3.png)
    
    This will start a wizard that will help you to complete your app configuration.

4.  On the first step of the wizard enter your site URL and click **Save** and **Continue**:
    ![facebook_4.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_4.png)
        
5.  The next steps are already integrated in the Social Login module, you can skip them.
	![facebook_5.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_5.png)

6.	Scroll to the page top and use the **Dashboard** button to see the app details:
    ![facebook_dashboard.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_dashboard.png)
    
    Copy-paste your App ID and App Secret to use later in the configuration of the Social Login module.
    
6.  As your app is now in **development** mode, to go live with your app, you need to switch the mode to **live**. To do so, click the **App Review** tab and use the switch in the section titled `Make <your app name> public?` to make your app available to the general public:
    ![development.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/development.png)
    
    In the opened popup, select the **Apps for Pages** category and click **Confirm**:
    ![popup.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/popup.png)

    Your app is now published:
    ![public.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/public.png)

    That is all. Your Facebook App has been configured.

## Configuring the Social Login module: Facebook

Once you have created and configured your Facebook App, you will need to obtain two pieces of information: your Facebook App ID and App Secret. These will need to be entered in X-Cart so the module can connect to the App you created on Facebook and generate the Facebook login widget code correctly.

The Facebook App ID and App Secret can be found on the **Dashboard** page for your App (You will need to click the **Show** button and enter your password to reveal the App Secret):

![facebook_dashboard.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook_dashboard.png)

We recommend opening your X-Cart Admin interface in a separate browser tab or window so you can copy and paste the App ID and App Secret values from Facebook to X-Cart.

To configure the module:

1.  In the Installed Modules section of your X-Cart store’s Admin area, locate the entry for the Social Login module and click the **Settings **link below it:
    ![]({{site.baseurl}}/attachments/7504575/9439791.png)
    
    This opens the "Social Login" module settings page:
    ![sociallogin.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/sociallogin.png)
    
2.  On the "Social Login" module settings page, complete the **Facebook App ID/API Key** and **Facebook App Secret** fields with the Facebook App ID and App Secret values you obtained on Facebook. 

	The "Social Login" module can also requests user location information, which requires additional approval from Facebook. This allows X-Cart to fill the address automatically upon user login (in case user has specified his location on the Facebook). You can disable this feature by using the **Request user location** checkbox.

3.  After you've configured the Facebook section, click the **Submit** button near the bottom of the page to save the changes.

    The "Login with Facebook" feature should now be enabled.

_Related pages:_

*   {% link "Social Login" ref_IapN8lJ8 %}
*   {% link "Setting up Google Login for your store" ref_LMCQeIrv %}

