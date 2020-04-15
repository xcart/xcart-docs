---
lang: en
layout: article_with_sidebar
updated_at: '2020-04-14 12:05 +0400'
identifier: ref_5XNl15JW
title: Setting Up Apple Login for Your Store
order: 350
published: false
---
The "Sign in with Apple" feature set-up in an X-Cart store consists of the following steps:

{% toc %}

## Creating Apple Services ID

To create an Apple Services ID:

1. Log in to your [Apple Developer account](https://developer.apple.com/ "Setting Up Apple Login for Your Store").

2. In the **Certificates, Identifiers & Profiles** section, select **Identifiers** from the sidebar, then click the Add button (**+**).
   ![apple-1.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-1.png)

3. On the registration page that opens, select **Services ID** and click **Continue**.
   ![apple-2.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-2.png)

4. Enter the Services ID description and provide a unique identifier.
   ![apple-3.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-3.png)

5. Register the Services ID and select it from the list to start configuration.

6. Select **Sign in with Apple** and click **Configure**.
   ![apple-5.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-5.png)

7. In the modal that appears:
   ![apple-6.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-6.png)
   * select your app from the list of primary App IDs that is related to your website;
   * under **Website URLs**, provide your domains or subdomains as a comma-delimited list. You must provide at least one domain or subdomain.
   * under Return URLs, enter a URL of the type - https://YOUR_STORE_DOMAIN/?target=social_login&action=login&auth_provider=google
   * click **Done** to store your configuration.

10. Click **Next**.

11. Review the configuration and click **Save**.
    ![apple-7.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-7.png)


## Configuring the Social Login Addon: Apple

Once you have created and configured your Apple Services ID, you will need to obtain one pieces of information: your Website Signin ID (Identifier). These will need to be entered in X-Cart so the addon can connect to the App you created on Apple and generate the Sign in with Apple widget code correctly.

The Website Signin ID can be found in the **Identifiers** list in the **Certificates, Identifiers & Profiles** section in your [Apple Developer account](https://developer.apple.com/ "Setting Up Apple Login for Your Store"):
![apple-8.png]({{site.baseurl}}/attachments/ref_5XNl15JW/apple-8.png)

We recommend opening your X-Cart Admin interface in a separate browser tab or window so you can copy and paste the App ID and App Secret values from Facebook to X-Cart.

To configure the addon:

1.  In the **My Addons** section of your {% link "X-Cart Service Screen" ref_5Br376jE %}, locate the entry for the Social Login module and click the **Settings** link below it:
    ![540-settings-link.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-link.png)
    
    This opens the "Social Login" addon settings page.
    ![540-settings-page.png]({{site.baseurl}}/attachments/ref_LMCQeIrv/540-settings-page.png)
    
2.  Scroll down to the Apple section of the page and enter your Website Signin ID value in the **Identifier** field:
    ![541-apple-settings.png]({{site.baseurl}}/attachments/ref_5XNl15JW/541-apple-settings.png)

3.  Click **Submit** to save the changes.

    The "Sign in with Apple" feature should now be enabled.

