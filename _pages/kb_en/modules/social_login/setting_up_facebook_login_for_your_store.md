---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-03 11:13 +0400'
identifier: ref_vpEKPoyM
title: Configuring Sign In with Facebook
categories:
  - User manual
published: true
order: 200
---
The "Sign in with Facebook" feature set-up in an X-Cart store consists of the following steps:

{% toc %}

## Creating a Facebook App

To create an App for Facebook login:

1.  Go to the [Apps page](https://developers.facebook.com/apps) of the developers section of Facebook and sign in with your Facebook username and password.

2.  Click on the button **+ Add a new app**:
    ![facebook-add-new-app.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-add-new-app.png)
    
    A popup titled “Create a New App ID” will be displayed.
    ![facebook-new-app-popup.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-new-app-popup.png)
    
3.	Enter a name for your App into the **Display Name** field (this will be the user-facing name of your App; using your store name is recommended). 

	In the **Contact Email** field, provide a valid email address (will be used for important communication about your app). 
    
    Click **Create App ID**.
    
4.  On the App Products screen select **Set Up** for the **Facebook Login** product:
    ![facebook-fb-login-setup.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-fb-login-setup.png) 
    
5.  Choose the _Website_ platform:
	![web.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/web.png)
    
    This will start a wizard that will help you to complete your app configuration.

6.  On the first step of the wizard enter your site URL and click **Save** and **Continue**:
    ![quickstart.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/quickstart.png)
    
    The next steps are already integrated in the Social Login addon, you can skip them.

8.	Locate the **Settings** -> **Basic** section in the left menu and open to see the app details:
    ![facebook-basic-settings.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-basic-settings.png)
    
    Fill in the form fields for your App and click **Save changes**.
    
9. Copy your App ID and App Secret to use later in the configuration of the **Social Login** addon.
    
    
9. Locate the **Facebook Login** -> **Settings** section in the left menu and specify the value of the _Valid OAuth Redirect URIs_ field. It should be of the kind - 
   ```https://YOUR_XCART_STORE_URL/?target=social_login&action=login&auth_provider=facebook```
   
   ![facebook-fb-login-settings.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-fb-login-settings.png)
   
   Click **Save changes**.
    
    {% note info%}
    Make sure your store is [configured to use HTTPS](https://kb.x-cart.com/general_setup/store_security/security_guide.html#step-2-use-ssl-certificates "Configuring Sign In with Facebook") (X-Cart Admin -> System Tools -> HTTPS Settings). Otherwise the Facebook Login feature won't work. 
    {% endnote %}
    
10.  As your app is now in development mode you need to go live with it. 
     
     To do so, switch the **In Development** toggle to **Live** to make your app available to the general public:
     ![facebook-app-in-development.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-app-in-development.png)

     Your app is now published:
      ![facebook-app-live.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-app-live.png)


That is all. Your Facebook App has been configured.

## Configuring the Social Login Addon: Facebook

Once you have created and configured your Facebook App, you will need to obtain two pieces of information: your Facebook App ID and App Secret. These will need to be entered in X-Cart so the addon can connect to the App you created on Facebook and generate the Facebook login widget code correctly.

The Facebook App ID and App Secret can be found on the **Settings** -> **Basic** page for your App (You will need to click the **Show** button and enter your password to reveal the App Secret):
![facebook-basic-settings.png]({{site.baseurl}}/attachments/ref_vpEKPoyM/facebook-basic-settings.png)

We recommend opening your X-Cart Admin interface in a separate browser tab or window so you can copy and paste the App ID and App Secret values from Facebook to X-Cart.

To configure the addon:

1.  In the **My Addons** section of your {% link "X-Cart Service Screen" ref_5Br376jE %}, locate the entry for the Social Login module and click the **Settings** link below it:
    ![540-settings-link.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-link.png)
    
    This opens the "Social Login" addon settings page.
    ![540-settings-page.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-page.png)
    
2.  On the "Social Login" addon settings page, complete the **Facebook App ID/API Key** and **Facebook App Secret** fields with the Facebook App ID and App Secret values you obtained on Facebook. 

	The "Social Login" addon can also requests user location information, which requires additional approval from Facebook. This allows X-Cart to fill the address automatically upon user login (in case user has specified his location on the Facebook). You can disable this feature by using the **Request user location** checkbox.

3.  After you've configured the Facebook section, click the **Submit** button near the bottom of the page to save the changes.

    The "Login with Facebook" feature should now be enabled.

_Related pages:_

*   {% link "Social Login" ref_IapN8lJ8 %}
*   {% link "Setting up Google Login for Your Store" ref_LMCQeIrv %}
