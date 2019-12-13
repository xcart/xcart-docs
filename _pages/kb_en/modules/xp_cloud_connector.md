---
lang: en
layout: article_with_sidebar
updated_at: '2019-11-01 17:08 +0400'
identifier: ref_729XUzDQ
title: X-Payments Cloud Connector
order: 370
published: true
---
The **[X-Payments Cloud connector](https://market.x-cart.com/addons/x-payments-cloud.html)** addon for X-Cart 5 connects your X-Cart 5 based online store to [X-Payments Cloud](http://www.x-payments.com/), a PSD2/SCA ready & PCI Level 1 certified payment service for secure credit card processing & storage in online shops. Note that the addon is intended specifically for X-Payments Cloud and is _not_ compatible with X-Payments v1.x-3.x.

You can find out whether the X-Payments Cloud connector addon is installed and enabled in your X-Cart 5 store by checking the section **My addons** of your X-Cart store Admin area:
![xp_cloud_connector_addon_installed.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_connector_addon_installed.png)

If the addon is not installed, you can obtain it from the X-Cart App Store. 
![xp_cloud_connector_addon.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_connector_addon.png)

To install the addon, follow the instructions from the section {% link "Installing Addons from the X-Cart App Store" ref_Vn1mMUw9 %}.

Once the X-Payments Cloud connector addon has been installed and enabled, you can connect your store to X-Payments Cloud with it.

Please be aware that to use X-Payments Cloud with your X-Cart store you will need an X-Payments Cloud account. That is different from an X-Payments account for use with X-Payments v1.x-3.x. If you do not yet have an X-Payments Cloud account, you will be able to create one right from the connection page in your X-Cart store Admin area.

To access the connection page, use one of the following methods:

   * Go to the section **My Addons**, find the installed addon X-Payments Cloud connector and click on the **Settings** link pertaining to it.
     ![xp_cloud_connector_settings_link.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_connector_settings_link.png)

   Or:
   
   * Go to the Payment settings page (**Store setup** > **Payment methods**), locate the payment method "X-Payments Cloud" and choose to configure it:
     ![xp_cloud_method_configure_button.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_method_configure_button.png)
     
The connection page is titled "X-Payments Cloud settings" and looks like the following:
     ![xp_cloud_connector_settings1.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xp_cloud_connector_settings1.png)

Once you are ready to proceed with the connection, you will need to either create a new X-Payments Cloud account or to provide the connection details for your {% link "existing X-Payments Cloud account" ref_729XUzDQ#xpc-registered-account %}.

   * **If you do not have an existing X-Payments Cloud account**, choose to create one:

     1. In the field **Your email**, specify the email address that you are going to use for the X-Payments Cloud account administrator. 
     
     2. In the field **Account name**, specify your desired account name.
     
     3. After completing the above fields, click **Create account**.
   
     This will initiate the creation of an X-Payments Cloud account for you and start your trial period. No commitment and no credit card are required during the trial period.
     
     The creation of your X-Payments account is likely to take a few seconds. During this time you will see a screen like the following:
     ![tuned.png]({{site.baseurl}}/attachments/ref_729XUzDQ/tuned.png)

     In the end you will be prompted to set a password for your X-Payments Cloud account: 
     ![set_passwd_4cloud.png]({{site.baseurl}}/attachments/ref_729XUzDQ/set_passwd_4cloud.png)

     Enter your desired password and type it once again for confirmation. Be sure to click Submit. For your convenience, a link to [Strong password generator](https://strongpasswordgenerator.com/) is provided. 
     
     After setting the password, complete 2-step user authentication setup for your account:
     ![2step_user_auth_setup.png]({{site.baseurl}}/attachments/ref_729XUzDQ/2step_user_auth_setup.png)
     
     More info on setting up 2-step user authentication methods in X-Payments Cloud is available in the X-Payments Cloud manual.
     
     Note that after your X-Payments Cloud account has been created, you will receive a confirmation email message at the email address specified during your registration. Please refer to this email message for your getting started instructions.
     
<a id="xpc-registered-account"></a>
   * **If you already have an existing X-Payments Cloud account**:
     
     1. Use the link "If you already have an X-Payments account, please click here" in the lower part of the X-Payments Cloud connection page to access the page for X-Payments Cloud account sign-in:
        ![access_signin_4registered.png]({{site.baseurl}}/attachments/ref_729XUzDQ/access_signin_4registered.png)
   
     2. On the sign-in page, enter your account name and click **Connect**:
        ![connect_registered.png]({{site.baseurl}}/attachments/ref_729XUzDQ/connect_registered.png)

     3. When prompted to specify your connection credentials, provide your X-Payments Cloud account registration email address and password:
        ![connect_registered1.png]({{site.baseurl}}/attachments/ref_729XUzDQ/connect_registered1.png)
     
     This will connect your X-Cart store to your existings X-Payments Cloud account.

Once your X-Cart 5 store has been connected to X-Payments Cloud, configure X-Payments Cloud as you require. You will be able to access your X-Payments Cloud admin panel right from within your X-Cart store (via the same section you used to complete the connection - the one titled "X-Payments Cloud settings"). 

Should you require to access your X-Payments Cloud admin panel directly (not from within your X-Cart store, but as a standalone website), you will be able to do so using a URL similar to the following:
`https://your_xpc_account.xpayments.com/admin.php`
(Just be sure to  replace the part 'your_xpc_account' with your actual X-Payments Cloud account name). 

Should you forget your X-Payments Cloud account name, you can look up the URL for access to your X-Payments Cloud admin panel in the email message sent to your X-Payments Cloud account registration email box. The email subject line reads "Welcome to X-Payments!"

Note that for security reasons the length of an edit session in X-Payments Cloud is limited to 15 minutes. 30 seconds before your edit session expires, a warning message will pop up on the page being edited to notify you that your current edit session is about to expire. To continue editing, be sure to reload the page before the expiration of your 15-minute edit session; in this case, the edit session will be renewed. If the page does not get reloaded before the edit session expiration time, you will have to re-enter your X-Payments Cloud sign-in credentials to resume editing. If viewing the X-Payments Cloud admin panel from within your X-Cart store, after the expiration of your edit session, you will continue seeing the last page you were editing, but the system will switch to the *Quick access* mode: any sensitive content in the input boxes configured in X-Payments Cloud will be hidden behind asterisks:
![xpc_quick_access_mode.png]({{site.baseurl}}/attachments/ref_729XUzDQ/xpc_quick_access_mode.png)

To view this content and/or to resume editing, you will need to unlock editing by clicking on the padlock icon displayed next to the title of the page being viewed or the **Unlock editing** link at the top right-hand side of the page.  

After completing the X-Payments Cloud configuration, make sure your X-Payments Cloud payment method is enabled in your X-Cart store.
