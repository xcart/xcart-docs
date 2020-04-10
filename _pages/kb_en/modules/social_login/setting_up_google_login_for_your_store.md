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

The Google Login feature set-up in an X-Cart store consists of the following steps:

{% toc %}

## Creating OAuth2 client ID 

To create OAuth2 client ID for your store:

1.  Go to the [Google Developers Console](https://console.developers.google.com) and create a new project there.
    * either use the **CREATE PROJECT** button on the Dashboard (if there are no other projects):
      ![google-create-project-button.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-create-project-button.png)
    * or open the current projects list and use the **NEW PROJECT** button there:
      ![gooole-new-project-button.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/gooole-new-project-button.png)

2.  On the "New Project" screen that opens, enter a project name or accept the default one, and select **Create**. The project ID is an identifier that assigns automatically when you create a project, and it is used only within the Developers Console. A project ID is unique and can be changed only at the moment of a project creation, so choose an ID that you'll be comfortable using for the lifetime of the project.

    For example, we chose to create a project "X-Cart Login" and kept the default Project ID:
   	![google-new-project-page.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-new-project-page.png)

    After you have clicked **Create**, Developer Console will create the new project. Make sure to select the newly created project in the project list dop-down at the top of the page:
    ![google-project-selected.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-project-selected.png)
    
3.  In the sidebar on the left, locate **OAuth Consent Screen**:
    ![google-external-user-type.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-external-user-type.png)
    Select **External** user type and click **Create**.
    
5.	Fill in the form that opens on the **OAuth consent screen**:
	![google-auth-consent-screen.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-auth-consent-screen.png)

    Use the settings on this page to configure the consent screen for your project (That is what users see when they click a Google Login widget on your store site for the first time and are asked to allow your store to access their information on Google). 
    
    * **Application name** : Specify your company name here.
    * **Application logo** (Optional): Add a company logo, if applicable.
    * **Support email** : Choose an email from the list. This email address will be shown to users on the authorization screen. You can use your email address or a Google Group email address that you manage.
    * **Authorised domains** : Specify your store domain here.
    * **Application Homepage link** (Optional): Specify your store homepage here.
    * **Application Privacy Policy link** (Optional): Specify a link to your store's privacy policy page, if applicable.
    * **Application Terms of Service link** (Optional) : Specify a link to your store's Terms and Conditions page, if applicable.
    
6. Click **Save** to submit the form.

7.  In the sidebar on the left, locate **Credentials** and select OAuth client Id in the **Create credentials** dropdown:
    ![google-create-oauth-client-id.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-create-oauth-client-id.png)

    This will display a screen titled "Create OAuth Client ID":
    ![google-create-client-id-page.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-create-client-id-page.png)

8.  On the "Create OAuth Client ID" screen:

    * Select _Web application_ for the **Application type**.
    * In the **Authorized redirect URI** box, enter the redirect URI for your store site (Simply copy and paste the URI from the Google Login setup instructions on your store's "Social Login" addon settings page).
    * Click **Create Client ID**.

    The Client ID will be created. 
    ![google-oauth-client-created.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-oauth-client-created.png)
    
9.	You need to copy-paste the Client ID and Secret values to the Social Login addon configuration screen.

## Configuring the Social Login Addon: Google

1.  On the **Credentials** page of your project in the [Google Developers Console](https://console.developers.google.com/), locate the needed credentails and click on the pencil icon to open the screen with the **Client ID** and **Client Secret** values:
	![google-credentials.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-credentials.png)

2.  Open a separate browser tab or window for the X-Cart Admin interface so you can copy and paste the Client ID and Client secret values.

3.  In the **My Addons** section of your {% link "X-Cart Service Screen" ref_5Br376jE %}, locate the entry for the Social Login module and click the **Settings** link below it:
    ![540-settings-link.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-link.png)


    This opens the "Social Login" addon settings page.
    ![540-settings-page.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-page.png)

4.  Scroll down to the Google section of the page and enter your Client ID and Client secret values:
    ![540-settings-page-google.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-page-google.png)

5.  Click the **Submit** button near the bottom of the page to save the changes.
    The Google Login feature should now be enabled.
    ![google-sign-in-cus.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/google-sign-in-cus.png)


_Related pages:_

*   {% link "Social Login" ref_IapN8lJ8 %}
*   {% link "Setting up Facebook Login for Your Store" ref_vpEKPoyM %}
