---
lang: en
layout: article_with_sidebar
updated_at: '2017-05-03 12:18 +0400'
identifier: ref_LMCQeIrv
title: Setting up Google Login for Your Store
categories:
  - User manual
published: true
order: 300
---


To add the Google Login feature to your X-Cart store site, complete the following steps:

1.  Create OAuth2 client ID for your store site (See [Creating OAuth2 client ID](#creating-oauth2-client-id)).
2.  Obtain your Google Client ID and Google Client secret and enter them on the "Social Login" addon settings page in your X-Cart store's Admin area (See [Configuring the Social Login module: Google](#configuring-the-social-login-module-google))

## Creating OAuth2 client ID 

To create OAuth2 client ID for your store:

1.  Go to the [Google Developers Console](https://console.developers.google.com). The starting screen should be **Dashboard**:
	![dashboard.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/dashboard.png)

2.  In the center of the screen you'll see the dialog. Click **Create** to create a new API project:
	![dashboard_create.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/dashboard_create.png)

3.  On the "New Project" screen, enter a project name and a project id or accept the default one, and select **Create**. The project ID is an identifier that you select when you create the project, and it is used only within the Developers Console. A project ID is unique and cannot be changed, so choose an ID that you'll be comfortable using for the lifetime of the project.

    For example, we chose to create a project "X-Cart Login" and kept the default Project ID:
   	![app_name.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/app_name.png)

    After you have clicked **Create**, Developer Console will create the new project. 
    
4.  In the sidebar on the left, select **Credentials**:
    ![credentials.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/credentials.png)
    
5.	To create OAuth Client ID/Secret pair, you have to submit the consent form. Click on the **OAuth consent screen** to open the form:
	![consent.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/consent.png)
    
6.	Use the settings on this page to configure the consent screen for your project (That is what users will see when they click a Google Login widget on your store site for the first time and are asked to allow your store to access their information on Google). For the **Product name** field, use your store's name so users can easily identify your application:
	![filled_consent.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/filled_consent.png)

7.  After filling the app name and the other details, return to the first tab (**Credentials**) and select OAuth client Id from the **Create credentials** dropdown:
    ![dropdown.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/dropdown.png)

    This will display a screen titled "Create Client ID":
    ![type.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/type.png)
    
8.  On the "Create Client ID" screen:

    1) Select _Web application_ for the **Application type**.
    2) In the **Authorized redirect URI** box, enter the redirect URI for your store site (Simply copy and paste the URI from the Google Login setup instructions on your store's "Social Login" addon settings page).
    3) Click **Create Client ID**.
    
    ![filled_type.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/filled_type.png)

    The Client ID will be created. 
    
9.	The **OAuth Client** will be opened. You'll need to copy-paste ID and Secret values to the Social Login addon configuration screen:
	![secret.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/secret.png)

## Configuring the Social Login Addon: Google

1.  On the Credentials page of your project in the [Google Developers Console](https://console.developers.google.com/), locate the needed credentails and click on the pencil icon to open the screen with the **Client ID** and **Client Secret** values:
	![credentials2.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/credentials2.png)

2.  Open a separate browser tab or window for the X-Cart Admin interface so you can copy and paste the Client ID and Client secret values.

3.  In the Installed Addons section of your X-Cart store’s Admin area (**Extensions** >** Installed modules**), locate the entry for the Social Login module and click the **Settings **link below it:
    ![modules.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/modules.png)

    This opens the "Social Login" addon settings page.
4.  Scroll down to the Google section of the page and enter your Client ID and Client secret values:
    ![module_settings.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/module_settings.png)

5.  Click the **Submit** button near the bottom of the page to save the changes.
    The Google Login feature should now be enabled.

_Related pages:_

*   {% link "Social Login" ref_IapN8lJ8 %}
*   {% link "Setting up Facebook Login for Your Store" ref_vpEKPoyM %}
